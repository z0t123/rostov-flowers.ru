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

public partial class EditCompositionsTreesOne : System.Web.UI.Page
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
        if (fbFotoDesign.PostedFile.FileName != string.Empty && fbFotoDesign.PostedFile.FileName != null)
        {

            SqlDataSource1.UpdateCommand = "Update CompositionsTrees SET number='" + TextBoxNumber.Text + "',Cost='" + TextBoxCost.Text + "',ImageName='" + ItemID + ".jpg' WHERE ItemID='" + ItemID + "'";

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
        else
        {
            SqlDataSource1.UpdateCommand = "Update CompositionsTrees SET number='" + TextBoxNumber.Text + "',Cost='" + TextBoxCost.Text + "' WHERE ItemID='" + ItemID + "'";

            try
            {
                SqlDataSource1.Update();
            }
            catch { }
        }
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

        SqlDataSource1.SelectCommand = "SELECT * FROM [CompositionsTrees] where ItemID='" + ItemID + "'";
        SqlDataSource1.DataBind();
        GridView1.DataBind();

        try
        {
            TextBoxNumber.Text = GridView1.Rows[0].Cells[1].Text;
            ImageDesign.ImageUrl = GetImageUrl(GridView1.Rows[0].Cells[2].Text);
            TextBoxCost.Text = GridView1.Rows[0].Cells[3].Text;
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

        FullUrl = "~/Images/ImageData/CompositionsTrees/" + ImageName;

        FilePath = Server.MapPath("~/Images/ImageData/CompositionsTrees/" + ImageName);

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

        SqlDataSource1.InsertCommand = "INSERT INTO CompositionsTrees (number,Cost,ImageName,ItemID) VALUES (" + TextBoxNumber.Text + ",'" + TextBoxCost.Text + "','" + ItemID.ToString() + ".jpg','" + ItemID.ToString() + "')";

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
        FilePath = Server.MapPath("~/Images/ImageData/CompositionsTrees/" + ItemID + ".jpg");

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
        URL = "EditCompositionsTrees.aspx";

        string BackPageIndex = string.Empty;

        BackPageIndex = Request.QueryString["PageIndex"];

        if (BackPageIndex != null && BackPageIndex != string.Empty)
        {
            URL = URL + "?PageIndex=" + BackPageIndex;
        }

        return URL;
    }
}