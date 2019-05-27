using System;

public partial class Buket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int itemId = 0;
        int.TryParse(Request.QueryString["Id"], out itemId);
    }
}