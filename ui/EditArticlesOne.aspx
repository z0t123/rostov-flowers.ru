<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditArticlesOne.aspx.cs" Inherits="EditArticlesOne" Title="Соцветие сеть цветочных салонов. Ростов-на-Дону. Редактирование букета."%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="5" cellspacing="0">
<tr><td colspan="2">
    <asp:HyperLink ID="HyperLinkBack" runat="server" Font-Bold="True" ForeColor="Red"><- назад к списку</asp:HyperLink>
</td></tr>
<tr>
    <td style="height: 34px">
        <asp:Label ID="NumberLabelHeader" runat="server" Font-Bold="True" Text="Номер:"></asp:Label>
    </td>
    <td style="height: 34px">
        <asp:Label ID="NumberLabel" runat="server" />
    </td>
</tr>
<tr>
    <td style="height: 34px">
        <asp:Label ID="TitleLabel" runat="server" Font-Bold="True" Text="Заголовок:"></asp:Label>
    </td>
    <td style="height: 34px">
        <asp:TextBox ID="TitleTextBox" runat="server" Width="400px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="TitleRequiredFieldValidator" runat="server" ControlToValidate="TitleTextBox"
            ErrorMessage="*" ValidationGroup="ValidateDesign"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td style="height: 34px" style="vertical-align:top;">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Текст статьи:"></asp:Label>
    </td>
    <td style="height: 34px">
        <asp:TextBox ID="TextTextBox" runat="server" Width="400px" Rows="25" 
            TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="TextRequiredFieldValidator" runat="server" ControlToValidate="TextTextBox"
            ErrorMessage="*" ValidationGroup="ValidateDesign"></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Изображение:"></asp:Label>
    </td>
    <td>
       <table border="0" cellpadding="2" cellspacing="0">
        <tr>
            <td>
            <asp:Image ID="ImageDesign" runat="server" Height="100px" Width="100px" /> &nbsp; 
            </td>
            <td valign="middle" align="left">
                &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Изображение должно быть с разрешением   *.jpg" Font-Bold="True" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="должно быть, чтобы большая сторона была равна 300px" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
             <asp:Label ID="LblSmallFoto" runat="server" Font-Bold="True" Text="Загрузить:"></asp:Label>
            &nbsp; 
            <input id="fbFotoDesign" runat="server" type="file" />
        </td>
        </tr>
        </table>
    </td>
</tr>
<tr>
    <td>
    </td>
    <td>
        <asp:Button ID="ButtonSave" runat="server" Text="Сохранить" ValidationGroup="ValidateDesign" OnClick="ButtonSave_Click" />
    </td>
</tr>

</table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocvetieSqlServer %>" SelectCommand="SELECT * FROM [Articles]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Visible="False">
    </asp:GridView>
</asp:Content>