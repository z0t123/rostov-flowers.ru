using System;
using System.IO;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ShowItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string FullUrl = string.Empty;

        string FilePath = string.Empty;

        string ItemID = string.Empty;

        ItemID = Request.QueryString["ItemID"];

        if (ItemID != string.Empty && ItemID != null)
        {
            string Directory = string.Empty;

            Directory = Request.QueryString["Directory"];

            if (Directory != string.Empty && Directory != null)
            {

                FullUrl = "~/Images/ImageData/" + Directory + "/" + ItemID + ".jpg";

                FilePath = Server.MapPath("~/Images/ImageData/" + Directory + "/" + ItemID + ".jpg");

                try
                {
                    if (File.Exists(FilePath))
                        Image1.ImageUrl = FullUrl;
                }
                catch { }
            }
        }
    }

    protected string GetURL()
    {
        string FullUrl = string.Empty;

        string FilePath = string.Empty;

        string EmptyUrl = "~/Images/NoImage.jpg";

        string ItemID = string.Empty;

        ItemID = Request.QueryString["ItemID"];

        if (ItemID != string.Empty && ItemID != null)
        {
            string Directory = string.Empty;

            Directory = Request.QueryString["Directory"];

            if (Directory != string.Empty && Directory != null)
            {

                FullUrl = "~/Images/ImageData/" + Directory + "/" + ItemID + ".jpg";

                FilePath = Server.MapPath("~/Images/ImageData/" + Directory + "/" + ItemID + ".jpg");

                try
                {
                    if (File.Exists(FilePath))
                        return FullUrl;
                }
                catch { }
            }
        }
        return EmptyUrl;
    }
}
