<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Соцветие сеть цветочных салонов. Ростов-на-Дону. Вход администратора." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
	<div align="center" style="padding-top:100px;">
		<asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid"
			BorderWidth="1px" Font-Names="Verdana" Font-Size="10pt" DisplayRememberMe="False">
			<TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
		</asp:Login>
    </div>
    
</asp:Content>

