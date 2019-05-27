using System;
using System.IO;

public partial class EditArticles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string DeleteItemID = string.Empty;

        DeleteItemID = Request.QueryString["DeleteItemID"];

        if (DeleteItemID != string.Empty && DeleteItemID != null)
        {
            DeleteItem(DeleteItemID);
        }

        if (!IsPostBack)
        {
            string PageIndex = Request.QueryString["PageIndex"];
            if (PageIndex != null && PageIndex != string.Empty)
            {
                GridView1.PageIndex = Convert.ToInt32(PageIndex);
                GridView1.DataBind();
            }
        }
    }

    private void DeleteItem(string DeleteItemID)
    {
        //---здесь нужно написать код по удалению самой картинки с жёсткого

        SqlDataSource1.DeleteCommand = "DELETE FROM Articles WHERE ItemID = '" + DeleteItemID + "'";

        try
        {
            SqlDataSource1.Delete();
        }
        catch { }
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

        FullUrl = "~/Images/Articles/" + ImageName;

        FilePath = Server.MapPath("~/Images/Articles/" + ImageName);

        try
        {
            if (File.Exists(FilePath))
                return FullUrl;
        }
        catch { }

        return EmptyUrl;
    }

    protected string GetText(string Text)
    {
        return "&nbsp; &nbsp;" + Text;
    }

    protected void ButtonCreate_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditArticlesOne.aspx");
    }
}