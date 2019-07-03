<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentList.aspx.cs" Inherits="PaymentList" Title="Соцветие. Список платежей." %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%" border="0" cellpadding="5" cellspacing="0">
        <tr>
            <td style="padding-left: 10px">
                <asp:GridView PagerStyle-VerticalAlign="Bottom" FooterStyle-Height="100%" RowStyle-VerticalAlign="Top"
                    Height="100%" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    PageSize="100" BorderStyle="Solid" BorderWidth="1px" ShowHeader="True"
                    ShowFooter="False" CellPadding="5" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:TemplateField HeaderText="№ п/п">
                            <ItemTemplate>
                                <asp:Label ID="IdLabel" runat="server" CssClass="greentextsite" Text='<%# Eval("Id").ToString() %>'></asp:Label>
                            </ItemTemplate>
                            <ControlStyle Width="40px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Сумма (р.)">
                            <ItemTemplate>
                                <span style="white-space: nowrap;">
                                    <asp:Label ID="CostLabel" runat="server" CssClass="greentextsite" Text='<%# Eval("Cost").ToString() %>'></asp:Label></span>
                            </ItemTemplate>
                            <ControlStyle Width="40px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Дата и время платежа">
                            <ItemTemplate>
                                <span style="white-space: nowrap;">
                                    <asp:Label ID="WhenDateTimeLabel" runat="server" CssClass="greentextsite" Text='<%# Convert.ToDateTime((Eval("WhenDateTime"))).ToString("dd.MM.yyyy HH:mm") %>'></asp:Label></span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Описание платежа">
                            <ItemTemplate>
                                <span>
                                    <asp:Label ID="DescriptionLabel" runat="server" CssClass="greentextsite" Text='<%# Eval("Description").ToString() %>'></asp:Label></span>
                            </ItemTemplate>
                            <ControlStyle Width="560px" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Оплата">
                            <ItemTemplate>
                                <div align="center"><%# GetSuccessImage(Eval("IsConfirmed").ToString()) %></div>
                            </ItemTemplate>
                            <ControlStyle Width="50px" />
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

