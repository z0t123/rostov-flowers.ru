<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="EditArticles.aspx.cs" Inherits="EditArticles" Title="Соцветие сеть цветочных салонов. Ростов-на-Дону. Редактирование букетов." %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%" border="0" cellpadding="5" cellspacing="0">
        <tr>
            <td style="padding-left: 10px">
                <asp:GridView PagerStyle-VerticalAlign="Bottom" FooterStyle-Height="100%" RowStyle-VerticalAlign="Top"
                    Height="100%" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    PageSize="20" BorderStyle="Solid" BorderWidth="1px" GridLines="None" ShowHeader="False"
                    ShowFooter="True" CellPadding="5" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="IdLabel" runat="server" CssClass="textsite" Text='<%# Eval("Id").ToString() %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <span style="white-space:nowrap;"><asp:Label ID="TitleLabel" runat="server" CssClass="textsite" Text='<%# Eval("Title").ToString() %>'></asp:Label></span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLinkEditDesignOne" NavigateUrl='<%# "~/EditArticlesOne.aspx?ItemID=" +  Eval("Id") + "&PageIndex=" + GridView1.PageIndex %>'
                                                runat="server"><img border="0" src="Images/edit_icon.gif" alt="Изменить" /></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <a href="#" onclick='<%# "javascript:ConfirmDelete(\"" +  Eval("Id") + "\",\"" + GridView1.PageIndex + "\")" %>'>
                                                <img border="0" src="Images/delete_icon.gif" alt="Удалить" /></a>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle Height="100%" />
                    <RowStyle VerticalAlign="Top" BorderStyle="None" BorderWidth="0px" />
                    <PagerStyle VerticalAlign="Bottom" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="padding-top: 15px">
                <asp:Button ID="ButtonCreate" runat="server" Text="Создать новую запись" OnClick="ButtonCreate_Click" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocvetieSqlServer %>"
        SelectCommand="SELECT * FROM [Articles] ORDER BY [Id] DESC"></asp:SqlDataSource>
    <script type="text/javascript">
        function ConfirmDelete(id, pageindex) {
            if (window.confirm("Вы действительно хотите удалить запись?")) {
                window.open("EditArticles.aspx?DeleteItemID=" + id + "&PageIndex=" + pageindex, "_self");
            }
        }
    </script>
</asp:Content>
