<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Edit" Title="Соцветие сеть цветочных салонов. Ростов-на-Дону. Редактирование." %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="left" class="linksList">
        <table>
            <tr>
                <td>
                    <asp:HyperLink ID="BuketsHyperLink" NavigateUrl="EditBukets.aspx" runat="server">Редактирование страницы букетов</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="DesignHyperLink" NavigateUrl="EditDesign.aspx" runat="server">Редактирование страницы оформления интерьера</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="CompositionsHeartsHyperLink" NavigateUrl="EditCompositionsHearts.aspx" runat="server">Редактирование страницы композиций в виде сердец</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="CompositionsFiguresHyperLink" NavigateUrl="EditCompositionsFigures.aspx" runat="server">Редактирование страницы композиций в виде фигурок</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="CompositionsBasketsHyperLink" NavigateUrl="EditCompositionsBaskets.aspx" runat="server">Редактирование страницы композиций в корзинах</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="CompositionsTreesHyperLink" NavigateUrl="EditCompositionsTrees.aspx" runat="server">Редактирование страницы композиций деревья</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="CompositionsMiscellaneousHyperLink" NavigateUrl="EditCompositionsMiscellaneous.aspx" runat="server">Редактирование страницы композиций разное</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="WeddingBuketsHyperLink" NavigateUrl="EditWeddingBukets.aspx" runat="server">Редактирование страницы свадебных букетов</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="WeddingDesignHyperLink" NavigateUrl="EditWeddingDesign.aspx" runat="server">Редактирование страницы свадебного оформления</asp:HyperLink>
                </td>
            </tr>
			<tr>
                <td>
                    <asp:HyperLink ID="ArticlesHyperLink" NavigateUrl="EditArticles.aspx" runat="server">Редактирование страницы статей</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

