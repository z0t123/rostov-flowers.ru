using System;

public partial class Article : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string stringId = Request.QueryString["Id"];

            int id = Convert.ToInt32(stringId);

            SqlDataSource1.SelectCommand = string.Format("SELECT * FROM [Articles] WHERE Id = {0}", id);
        }
        catch
        {
            Response.Redirect("Articles.aspx");
        }        
    }

    public string GetId
    {
        get
        {
            return Request.QueryString["Id"];
        }
    }

    protected string GetBackUrl()
    {
        string url = "Articles.aspx";

        string backPageIndex = Request.QueryString["PageIndex"];

        if (!string.IsNullOrEmpty(backPageIndex))
        {
            url = url + "?PageIndex=" + backPageIndex;
        }

        return url;
    }
}