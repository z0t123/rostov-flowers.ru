<%@ Page Title="Соцветие сеть цветочных салонов. Ростов-на-Дону. Редактирование разных композиций." Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditCompositionsMiscellaneous.aspx.cs" Inherits="EditCompositionsMiscellaneous" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="0" cellpadding="5" cellspacing="0">
<tr><td style="padding-left:10px">
<asp:GridView PagerStyle-VerticalAlign="Bottom" FooterStyle-Height="100%" RowStyle-VerticalAlign="Top" Height="100%" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
    PageSize="5" BorderStyle="None" BorderWidth="0px" GridLines="None" ShowHeader="False" ShowFooter="True" CellPadding="0" DataSourceID="SqlDataSource1">
    <Columns>
    <asp:TemplateField>
        <ItemTemplate>
                <table cellspacing="0" cellpadding="0" border="0">
                <tr>
                <td><asp:Label ID="Label1" runat="server" CssClass="textsite" Text="№ п/п: "></asp:Label></td>
                    <td valign="middle">
                        &nbsp;<asp:Label ID="LabelItemNumber" runat="server" CssClass="textsite" Text='<%# Eval("number").ToString() %>'></asp:Label>
                    </td>
                    <td style="padding-left:50px;text-align:justify; padding-right:50px">
                        <asp:Image ID="ImageItem" CssClass="ImageBukets" ImageUrl='<%# GetImageUrl(Eval("ImageName").ToString()) %>' runat="server" />
                    </td>
                    <td align="left">
                        <asp:Label ID="LabelItemCost" runat="server" CssClass="textsite" Text='<%# Eval("Cost").ToString() %>'></asp:Label>
                    </td>
                    <td>&nbsp;<asp:Label ID="Label2" runat="server" CssClass="textsite" Text=" руб."></asp:Label></td>
                    <td style="padding-left:50px;" valign="middle">
                        <asp:HyperLink  ID="HyperLinkEditDesignOne" NavigateUrl='<%# "~/EditCompositionsMiscellaneousOne.aspx?ItemID=" +  Eval("ItemID") + "&PageIndex=" + GridView1.PageIndex %>' runat="server"><img border="0" src="Images/edit_icon.gif" alt="Изменить" /></asp:HyperLink >
                    </td>
                    <td style="padding-left:10px" valign="middle">
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
        SelectCommand="SELECT * FROM [CompositionsMiscellaneous] ORDER BY [number]"></asp:SqlDataSource>

<script type="text/javascript">
function ConfirmDelete(id,pageindex)
{
    if(window.confirm("Вы действительно хотите удалить запись?"))
    {
        window.open("EditCompositionsMiscellaneous.aspx?DeleteItemID=" + id + "&PageIndex=" + pageindex, "_self");
    } 
}
</script>
</asp:Content>