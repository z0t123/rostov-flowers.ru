<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PayYandexMoney.aspx.cs" Inherits="PayYandexMoney" Title="Соцветие сеть цветочных салонов. Ростов-на-Дону. Оплата Яндекс Деньгами." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
    <table cellpadding="0" cellspacing="0" border="0">
<tr><td valign="middle" align="center" class="greentextsite" style="color: darkgreen; white-space:nowrap;">
    &nbsp; &nbsp;

Номер нашего счёта - 41001357810035&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
<td>
<a href="http://money.yandex.ru/"><asp:Image ID="ImageWebMoney" 
        ImageUrl="~/Images/yandex_dengi.gif"  runat="server" /></a>
</td></tr>
<tr><td colspan="2" class="greentextsite" align="center" style="white-space:nowrap;">
    <br />
    <br />
    &nbsp;&nbsp; 
Перед тем как переводить деньги, Вам необходимо созвониться &nbsp;
    &nbsp; &nbsp;<br />
    с нами по тел. (863) 296-99-61, и уточнить конкретную сумму.
</td></tr>
</table>
<%--<span style="color: darkgreen">
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" 
        Text="Укажите сумму перевода через систему Yandex Деньги:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxAmountMoney" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="ButtonPayWebMoney" runat="server" 
        onclick="ButtonPayWebMoney_Click" Text="Перевести" />
    <br />
</span>--%>
</asp:Content>