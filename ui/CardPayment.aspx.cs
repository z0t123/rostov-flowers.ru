using System;
using System.Text;
using System.Web;
using Entities;

public partial class CardPayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void MakePaymentButton_Click(object sender, EventArgs e)
    {
        Response.Clear();

        int paymentId = DataHelper.AddPayment(new Payment
                                                  {
                                                      Cost = Convert.ToInt32(vpc_Amount_TextBox.Text),
                                                      Description = txtOrderDescription_TextBox.Text
                                                  });

        StringBuilder sb = new StringBuilder();
        sb.Append("<html>");
        sb.AppendFormat(@"<body onload='document.forms[""form""].submit()'>");
        sb.AppendFormat("<form name='form' action='{0}' method='post'>", HttpUtility.UrlEncode("CS_VPC_3Party_DO.aspx"));
        sb.AppendFormat("<input type='hidden' name='Title' value='{0}'>", "PaymentSocvetie");
        sb.AppendFormat("<input type='hidden' name='virtualPaymentClientURL' value='{0}'>", "https://migs.mastercard.com.au/vpcpay");
        sb.AppendFormat("<input type='hidden' name='vpc_Version' value='{0}'>", 1);
        sb.AppendFormat("<input type='hidden' name='vpc_Command' value='{0}'>", "pay");
        sb.AppendFormat("<input type='hidden' name='vpc_AccessCode' value='{0}'>", "71A7657E");
        sb.AppendFormat("<input type='hidden' name='vpc_MerchTxnRef' value='{0}'>", paymentId.ToString());
        sb.AppendFormat("<input type='hidden' name='vpc_Merchant' value='{0}'>", "9292844263");
        sb.AppendFormat("<input type='hidden' name='vpc_OrderInfo' value='{0}'>", paymentId.ToString());
        sb.AppendFormat("<input type='hidden' name='vpc_Amount' value='{0}'>", string.Format("{0}00", vpc_Amount_TextBox.Text));
        sb.AppendFormat("<input type='hidden' name='vpc_ReturnURL' value='{0}'>", "http://www.rostov-flowers.ru/PaymentFinished.aspx");
        sb.AppendFormat("<input type='hidden' name='vpc_Locale' value='{0}'>", "RU_ru");
        // Other params go here
        sb.Append("</form>");
        sb.Append("</body>");
        sb.Append("</html>");

        Response.Write(sb.ToString());

        Response.End();
    }
}