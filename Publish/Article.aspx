<%@ Page Title="Статьи. Доставка цветов Соцветие." Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Article.aspx.cs" Inherits="Article" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="textBlock">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" EnableViewState="False" RepeatColumns="20" RepeatDirection="Horizontal" ShowHeader="False">
            <ItemTemplate>
                <table class="itemsTable">
                    <tr>
                        <td>
                            <h2>
								<%# Eval("Title") %>
							</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# string.Format("{0}",Eval("Text").ToString()) %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href='<%# GetBackUrl() %>' title="<%# Eval("Title") %>" class="articleNextText">
                                Ко всем статьям
                            </a>
                        </td>
                    </tr>
                </table>
                <div style="visibility: hidden">
                    <h3>
                        <%# Page.Title = string.Format("{0}. {1}",Eval("Title"),Page.Title)%>
                    </h3>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocvetieSqlServer %>"
            ProviderName="<%$ ConnectionStrings:SocvetieSqlServer.ProviderName %>" SelectCommand="SELECT * FROM [Articles] ORDER BY [Id] DESC"></asp:SqlDataSource>
</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" Runat="Server">
</asp:Content>

