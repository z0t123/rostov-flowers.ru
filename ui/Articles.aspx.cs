using System;

public partial class Articles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string pageIndex = Request.QueryString["PageIndex"];
            if (!string.IsNullOrEmpty(pageIndex))
            {
                GridView1.PageIndex = Convert.ToInt32(pageIndex);
                GridView1.DataBind();
            }
        }
    }
}