<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderScript" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="left" class="linksList">
        <table>
            <tr>
                <td>
                    <asp:HyperLink ID="PaymentsListHyperLink" NavigateUrl="PaymentList.aspx" runat="server">Список платежей</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="EditHyperLink" NavigateUrl="Edit.aspx" runat="server">Редактирование</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderBottomText" runat="Server">
</asp:Content>

