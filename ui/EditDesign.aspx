<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditDesign.aspx.cs" Inherits="EditDesign" Title="Соцветие сеть цветочных салонов. Ростов-на-Дону. Редактирование дизайна." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="0" cellpadding="5" cellspacing="0">
<tr><td style="padding-left:10px">
<asp:GridView Width="100%" PagerStyle-VerticalAlign="Bottom" FooterStyle-Height="100%" RowStyle-VerticalAlign="Top" Height="100%" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
    PageSize="5" BorderStyle="None" BorderWidth="0px" GridLines="None" ShowHeader="False" ShowFooter="True" CellPadding="0" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:TemplateField>
           <ItemTemplate>
                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                <tr><td valign="top">
                    <asp:Image BorderWidth="2px" BorderColor="#F6B9F6" ID="ImageNews" CssClass="ImageDesign" ImageUrl='<%# GetImageUrl(Eval("ImageName").ToString()) %>' runat="server" />
                    </td>

                    <td style="padding-left:5px;text-align:justify; padding-right:100px" width="80%">
                    <br />
                    <br />
                    <asp:Label ID="LabelDesignDescription" runat="server" CssClass="textsite" Text='<%# GetText(Eval("Text").ToString()) %>'></asp:Label>
                    </td>

                    <td valign="middle">
                    <asp:HyperLink  ID="HyperLinkEditDesignOne" NavigateUrl='<%# "~/EditDesignOne.aspx?ItemID=" +  Eval("ItemID") + "&PageIndex=" + GridView1.PageIndex %>' runat="server"><img border="0" src="Images/edit_icon.gif" alt="Изменить" /></asp:HyperLink >
                    </td><td style="padding-left:10px" valign="middle">
                    <a href="#" onclick='<%# "javascript:ConfirmDelete(\"" +  Eval("ItemID") + "\",\"" + GridView1.PageIndex + "\")" %>'><img border="0" src="Images/delete_icon.gif" alt="Удалить" /></a>
                    </td>

                    </tr>
                    <tr><td height="10px" colspan="4"></td></tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle Height="100%" />
    <RowStyle VerticalAlign="Top" BorderStyle="None" BorderWidth="0px" />
    <PagerStyle VerticalAlign="Bottom" />
</asp:GridView>
</td></tr>
<tr><td style="padding-top:15px">
    <asp:Button ID="ButtonCreate" runat="server" Text="Создать новую запись" OnClick="ButtonCreate_Click" />
</td></tr>
</table>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocvetieSqlServer %>"
        SelectCommand="SELECT * FROM [Design] ORDER BY [number]"></asp:SqlDataSource>

<script type="text/javascript">
function ConfirmDelete(id,pageindex)
{
    if(window.confirm("Вы действительно хотите удалить запись?"))
    {
        window.open("EditDesign.aspx?DeleteItemID=" + id + "&PageIndex=" + pageindex,"_self");
    } 
}
</script>
</asp:Content>