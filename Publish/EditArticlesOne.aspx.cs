using System;
using System.IO;

public partial class EditArticlesOne : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ItemID = GetItemID();

        if (!IsPostBack)
        {
            HyperLinkBack.NavigateUrl = GetBackURL();
        }

        if (ItemID != string.Empty && ItemID != null)
        {
            if (!IsPostBack)
            {
                LoadData(ItemID);
            }
        }
    }

    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        string ItemID = GetItemID();

        if (ItemID != string.Empty && ItemID != null)
        {
            UpdateItem(ItemID);
        }
        else
        {
            CreateAndSaveItem();
        }

        Response.Redirect(GetBackURL());
    }

    private void UpdateItem(string ItemID)
    {
        SqlDataSource1.UpdateCommand = "Update Articles SET Title='" + TitleTextBox.Text + "', Text ='" + TextTextBox.Text + "' WHERE Id='" + ItemID + "'";

        try
        {
            SqlDataSource1.Update();
        }
        catch { }

        try
        {
            SaveImage(ItemID);
        }
        catch { }
    }

    private string GetItemID()
    {
        string ItemID = string.Empty;

        ItemID = Request.QueryString["ItemID"];

        return ItemID;
    }

    private void LoadData(string ItemID)
    {
        string Test = string.Empty;

        SqlDataSource1.SelectCommand = "SELECT * FROM [Articles] where Id='" + ItemID + "'";
        SqlDataSource1.DataBind();
        GridView1.DataBind();

        try
        {
            NumberLabel.Text = GridView1.Rows[0].Cells[0].Text;
            TitleTextBox.Text = GridView1.Rows[0].Cells[1].Text;
            TextTextBox.Text = GridView1.Rows[0].Cells[2].Text;
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

        FullUrl = "~/Images/ImageData/Articles/" + ImageName;

        FilePath = Server.MapPath("~/Images/ImageData/Articles/" + ImageName);

        try
        {
            if (File.Exists(FilePath))
                return FullUrl;
        }
        catch { }

        return EmptyUrl;
    }

    private void CreateAndSaveItem()
    {
        Guid ItemID = Guid.NewGuid();

        SqlDataSource1.InsertCommand = "INSERT INTO Articles (Title, Text) VALUES (" + TitleTextBox.Text + ",'" + TextTextBox.Text + "')";

        try
        {
            SqlDataSource1.Insert();
        }
        catch { }

        try
        {
            SaveImage(ItemID.ToString());
        }
        catch { }
    }

    private string GetImageFileName(string ItemID)
    {
        string FilePath = string.Empty;
        FilePath = Server.MapPath("~/Images/ImageData/Articles/" + ItemID + ".jpg");

        return FilePath;
    }

    private void SaveImage(string ItemID)
    {
        string FullImageFileName = GetImageFileName(ItemID);
        if (File.Exists(FullImageFileName))
        {
            try
            {
                File.Delete(FullImageFileName);
            }
            catch { }
        }

        try
        {
            fbFotoDesign.PostedFile.SaveAs(FullImageFileName);
        }
        catch { }
    }

    protected string GetBackURL()
    {
        string URL = string.Empty;
        URL = "EditArticles.aspx";

        string BackPageIndex = string.Empty;

        BackPageIndex = Request.QueryString["PageIndex"];

        if (BackPageIndex != null && BackPageIndex != string.Empty)
        {
            URL = URL + "?PageIndex=" + BackPageIndex;
        }

        return URL;
    }
}