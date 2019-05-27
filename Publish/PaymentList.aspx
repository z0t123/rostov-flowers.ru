<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentList.aspx.cs" Inherits="PaymentList" Title="Соцветие. Список платежей." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%" border="0" cellpadding="5" cellspacing="0">
        <tr>
            <td style="padding-left: 10px">
                <asp:GridView PagerStyle-VerticalAlign="Bottom" FooterStyle-Height="100%" RowStyle-VerticalAlign="Top"
                    Height="100%" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    PageSize="50" BorderStyle="Solid" BorderWidth="1px" ShowHeader="False"
                    ShowFooter="False" CellPadding="5" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="IdLabel" runat="server" CssClass="textsite" Text='<%# Eval("Id").ToString() %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <span style="white-space:nowrap;"><asp:Label ID="DescriptionLabel" runat="server" CssClass="textsite" Text='<%# Eval("Description").ToString() %>'></asp:Label></span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <span style="white-space:nowrap;"><asp:Label ID="CostLabel" runat="server" CssClass="textsite" Text='<%# Eval("Cost").ToString() %>'></asp:Label>&nbsp; р.</span>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle VerticalAlign="Top" BorderStyle="None" BorderWidth="0px" />
                    <PagerStyle VerticalAlign="Bottom" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocvetieSqlServer %>"
        SelectCommand="SELECT * FROM [PaymentList] ORDER BY [Id] DESC"></asp:SqlDataSource>
</asp:Content>

