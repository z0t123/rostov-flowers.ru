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

public partial class CompositionsMiscellaneous : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected string GetImageUrl(string ImageName)
    {
        string FullUrl = string.Empty;

        string FilePath = string.Empty;

        string EmptyUrl = "~/Images/NoImage.jpg";

        if (ImageName == string.Empty || ImageName == null)
        {
            return EmptyUrl;
        }

        FullUrl = "~/Images/ImageData/CompositionsMiscellaneous/" + ImageName;

        FilePath = Server.MapPath("~/Images/ImageData/CompositionsMiscellaneous/" + ImageName);

        try
        {
            if (File.Exists(FilePath))
                return FullUrl;
        }
        catch { }

        return EmptyUrl;
    }
}
