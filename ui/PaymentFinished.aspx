<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentFinished.aspx.cs" Inherits="PaymentFinished" Title="Завершение платежа. Соцветие." %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="left">
        <div class="greentextsite" style="padding-left: 20px;">
            <br />
            <asp:Label ID="PaymentResultLabel" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="MainPageHyperLink" NavigateUrl="/" runat="server">-> На главную <-</asp:HyperLink>
        </div>
    </div>
</asp:Content>

