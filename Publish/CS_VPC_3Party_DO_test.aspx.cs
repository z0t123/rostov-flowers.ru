using System;
using System.Collections;
using System.Text;

public partial class CS_VPC_3Party_DO_test : System.Web.UI.Page
{
    private string debugData = "";

    //______________________________________________________________________________

    private class VPCStringComparer : IComparer
    {
        /*
         <summary>Customised Compare Class</summary>
         <remarks>
         <para>
         The Virtual Payment Client need to use an Ordinal comparison to Sort on 
         the field names to create the MD5 Signature for validation of the message. 
         This class provides a Compare method that is used to allow the sorted list 
         to be ordered using an Ordinal comparison.
         </para>
         </remarks>
         */

        public int Compare(Object a, Object b)
        {
            /*
             <summary>Compare method using Ordinal comparison</summary>
             <param name="a">The first string in the comparison.</param>
             <param name="b">The second string in the comparison.</param>
             <returns>An int containing the result of the comparison.</returns>
             */

            // Return if we are comparing the same object or one of the 
            // objects is null, since we don't need to go any further.
            if (a == b) return 0;
            if (a == null) return -1;
            if (b == null) return 1;

            // Ensure we have string to compare
            string sa = a as string;
            string sb = b as string;

            // Get the CompareInfo object to use for comparing
            System.Globalization.CompareInfo myComparer = System.Globalization.CompareInfo.GetCompareInfo("en-US");
            if (sa != null && sb != null)
            {
                // Compare using an Ordinal Comparison.
                return myComparer.Compare(sa, sb, System.Globalization.CompareOptions.Ordinal);
            }
            throw new ArgumentException("a and b should be strings.");
        }
    }

    //______________________________________________________________________________

    private string CreateMD5Signature(string RawData)
    {
        /*
         <summary>Creates a MD5 Signature</summary>
         <param name="RawData">The string used to create the MD5 signautre.</param>
         <returns>A string containing the MD5 signature.</returns>
         */

        System.Security.Cryptography.MD5 hasher = System.Security.Cryptography.MD5CryptoServiceProvider.Create();
        byte[] HashValue = hasher.ComputeHash(Encoding.ASCII.GetBytes(RawData));

        string strHex = "";
        foreach (byte b in HashValue)
        {
            strHex += b.ToString("x2");
        }
        return strHex.ToUpper();
    }

    // _____________________________________________________________________________

    private void Page_Load(object sender, System.EventArgs e)
    {
        /*
         <summary>Performs a VPC request transaction from an incoming HTTP POST</summary>
         <remarks>
     
         <para>
         If the vpc_TicketNo field is optional and if not used then leave it out of 
         the SortedList.
         </para>

         <para>
         To correctly calculate the MD5 Hash signature the SortedList must be
         specified to sort by an Ordinal comparison - see VPCStringComparer() class
         above. If not done this way the SortedList will sort Case Insensitive and 
         not calculate the MD5 signature correctly.
         </para>

         <para>
         The queryString information can be then used in a browser redirect operation
         to send the information to the Payment Server for processing.
         </para>

         <code>
         Page.Response.Redirect(queryString);
         </code>

         <para>
         To find out what is included in your queryString data you can enable DEBUG 
         and run a test transaction. The postData string will then be output to the 
         screen. This debug code allows the user to see all the data associated with 
         the transaction. DEBUG should be disabled or removed entirely in production 
         code.
         </para>

         <para>
         To enable DEBUG, change the ASP directive at the top of this file.
         <para>

         <code>   <%@ Page Language="C#" DEBUG=false %>   </code>
         <para>                    to                     </para>
         <code>   <%@ Page Language="C#" DEBUG=true %>    </code>

         <para>
         The actual functionality of this example resides in lines which creates a 
         SortedList and redirects it to the Payment Server.
         </para>

         <para>
         The rest of the example is only parsing incoming data, and creating 
         HTML markup to display the receipt nicely for the example.
         </para>
         </remarks>
         */

        /*
         *******************************************
         * Define Variables
         *******************************************
         */

        // This is secret for encoding the MD5 hash
        // This secret will vary from merchant to merchant
        // To not create a secure hash, let SECURE_SECRET be an empty string - ""
        // SECURE_SECRET can be found in Merchant Administration/Setup page
        string SECURE_SECRET = "761FF10A8D0FCC4922B84792D29C7B96";

        Panel_Debug.Visible = false;
        Panel_StackTrace.Visible = false;

        // define message string for errors
        string message = "No Messages";

        // error exists flag
        bool errorExists = false;

        // transaction response code
        string txnResponseCode = "";

        try
        {
            /*
             *************************
             * START OF MAIN PROGRAM *
             *************************
             */

            // NOTE: We use our own overloaded IComparer interface to ensure we do 
            // an Ordinal sort of the data.
            System.Collections.SortedList transactionData = new System.Collections.SortedList(new VPCStringComparer());

            // create start of QueryString data
            string queryString = Page.Request.Form["virtualPaymentClientURL"];

            // Collect debug information
# if DEBUG
            debugData += "<u>Data from Order Page</u><br/>";
# endif

            // Transaction data should not be passed in in this manner for a 
            // production system - see notes above.
            // loop through all the data in the Page.Request.Form
            foreach (string item in Page.Request.Form)
            {

                // Collect debug information
# if DEBUG 
                debugData += item +"="+ Page.Request.Form[item] +"<br/>";
# endif

                /* Only include those fields required for a transaction
            * Extract the Form POST data and ignore the Virtual Payment Client
            * URL,  the ReturnURL, the Submit button and any empty form fields, 
            * as we do not want to send these fields on, or in the case of the
            * vpc_ReturnURL modify it before sending. 
            */
                if ((Page.Request.Form[item] != "") &&
                    (item != "virtualPaymentClientURL") &&
                    (item != "SubButL") &&
                    (item != "Title"))
                {
                    transactionData.Add(item, Page.Request.Form[item]);
                }
            }

            /* The AgainLink is for the receipt/error page to do another transaction.
             * The title is only used to display on the receipt/error page
             *
             * Note: These parameters are ONLY used for this example and is NOT 
             * required for production code. 
             *
             * However, it does show how extra session variables can be added to the 
             * transaction request so they will be returned in the receipt.
             *
             * Transaction data should not be passed in as hidden fields but be
             * addedhere as key value pairs, e.g.
             * transactionData.Add("vpc_Merchant", merchantValue); 
             * transactionData.Add("vpc_Amount", amountValue);
             * etc.
             */

            // add the AgainLink & Title fields
            transactionData.Add("AgainLink", Page.Request.ServerVariables["HTTP_REFERER"]);
            transactionData.Add("Title", Page.Request.Form["Title"]);

            // Collect debug information
# if DEBUG
            debugData += "<br/><u>Data from Transaction Sorted List</u><br/>";
# endif

            string rawHashData = SECURE_SECRET;
            string seperator = "?";

            // Loop through all the data in the SortedList transaction data
            foreach (System.Collections.DictionaryEntry item in transactionData)
            {
                // Collect debug information
# if DEBUG 
                        debugData += item.Key.ToString() +"="+ item.Value.ToString() +"<br/>";
# endif
                // build the query string, URL Encoding all keys and their values
                queryString += seperator + System.Web.HttpUtility.UrlEncode(item.Key.ToString()) + "=" +
                               System.Web.HttpUtility.UrlEncode(item.Value.ToString());
                seperator = "&";

                // Collect the data required for the MD5 sugnature if required
                if (SECURE_SECRET.Length > 0)
                {
                    rawHashData += item.Value.ToString();
                }
            }

            // Create the MD5 signature if required
            string signature = "";
            if (SECURE_SECRET.Length > 0)
            {
                // create the signature and add it to the query string
                signature = CreateMD5Signature(rawHashData);
                queryString += seperator + "vpc_SecureHash=" + signature;

                // Collect debug information
# if DEBUG 
                debugData += "<br/><u>Hash Data Input</u>: " + rawHashData + "<br/><br/><u>Signature Created</u>: "+signature+"<br/>";
# endif
            }

            // Collect debug information
# if DEBUG
            debugData += "<br/><u>Final QueryString Data String</u>: " + queryString + "<br/><br/><a href=\'" + queryString + "'>Click here to proceed.</a><br/>";
# else
            // Transmit the DO to the Payment Server via a browser redirect
            
# endif

Response.Redirect(queryString);
        }
        catch (Exception ex)
        {
            message = "(51) Exception encountered. " + ex.Message;
            if (ex.StackTrace.Length > 0)
            {
                Label_StackTrace.Text = ex.ToString();
                Panel_StackTrace.Visible = true;
            }
            errorExists = true;
        }

        Label_Message.Text = message;

        // Output debug data to the screen
# if DEBUG
        debugData += "<br/><br/>End of debug information<br/>";
        Label_Debug.Text    = debugData;
        Panel_Debug.Visible = true;
# endif

        /*
    **********************
    * END OF MAIN PROGRAM
    **********************
    *
    * FINISH TRANSACTION - Output the VPC Response Data
    * =====================================================
    * For the purposes of demonstration, we simply display the Result fields
    * on a web page.
    */
    }
}