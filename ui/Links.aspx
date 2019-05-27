<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Links.aspx.cs" Inherits="Links" Title="Ссылки." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="4" cellspacing="4" border="0">
    <tr>
    <td colspan="2">
        <span style="font-size: 14pt; color: darkgreen; white-space:nowrap;">Параметры нашего баннера:</span>
    </td>
    </tr>
    <tr>
    <td>
    <a href="http://www.rostov-flowers.ru/" target="_blank" ><img title="Доставка цветов Ростов на Дону" alt="Доставка цветов Ростов-на-Дону" src="http://www.rostov-flowers.ru/Images/Banner_88x31.gif" border="0"></a>
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" Height="120px" ReadOnly="True" Rows="4"
            TextMode="MultiLine" Width="439px">&lt;a href=&quot;http://www.rostov-flowers.ru/&quot; title=&quot;Доставка цветов Ростов-на-Дону&quot; target=&quot;_blank&quot; &gt;&lt;img alt=&quot;Доставка цветов Ростов-на-Дону&quot; src=&quot;http://www.rostov-flowers.ru/Images/Banner_88x31.gif&quot; title=&quot;Доставка цветов Ростов-на-Дону&quot; border=&quot;0&quot;&gt;&lt;/a&gt;</asp:TextBox></td>
    </tr>
    <tr>
    <td colspan="2" style="padding-top:15px;">
        <span style="font-size: 14pt; color: darkgreen; white-space:nowrap;">
            Наш каталог ссылок:
        </span>
    </td>
    </tr>
    
    <tr>
    <td>
        <table cellpadding="0" cellspacing="3" border="0">
        <tr><td>
        <a href="LinksDelivery.aspx" title="Доставка цветов"><img src="Images/Delivery_70.jpg" alt="Доставка цветов" title="Доставка цветов"/></a>
        </td><td>
        <a href="LinksDelivery.aspx" title="Доставка цветов" style="font-size:small; color:Green; font-weight:bold; text-decoration:none; white-space:nowrap;">Доставка цветов</a>
        </td></tr>
        </table>  
    </td>
    <td>
        <table cellpadding="0" cellspacing="3" border="0">
        <tr><td>
        <a href="LinksWedding.aspx" title="Свадебные сайты"><img src="Images/WeddingPortal_70.jpg" alt="Свадебные сайты" title="Свадебные сайты"/></a>
        </td><td>
        <a href="LinksWedding.aspx" title="Свадебные сайты" style="font-size:small; color:Green; font-weight:bold; text-decoration:none; white-space:nowrap;">Свадебные сайты</a>
        </td></tr>
        </table>
    </td>
    </tr>
    
    <tr>
    <td>
        <table cellpadding="0" cellspacing="3" border="0">
        <tr><td>
        <a href="LinksFlowers.aspx" title="Сайты о цветах"><img src="Images/FlowersSite_70.jpg" alt="Сайты о цветах" title="Сайты о цветах"/></a>
        </td><td>
        <a href="LinksFlowers.aspx" title="Сайты о цветах" style="font-size:small; color:Green; font-weight:bold; text-decoration:none; white-space:nowrap;">Сайты о цветах</a>
        </td></tr>
        </table>
    </td>
    <td>
        <table cellpadding="0" cellspacing="3" border="0">
        <tr><td>
        <a href="LinksAvto.aspx" title="Свадебные машины"><img src="Images/WeddingAvto_70.jpg" alt="Свадебные машины" title="Свадебные машины"/></a>
        </td><td>
        <a href="LinksAvto.aspx" title="Свадебные машины" style="font-size:small; color:Green; font-weight:bold; text-decoration:none; white-space:nowrap;">Свадебные машины</a>
        </td></tr>
        </table>
    </td>
    </tr>
    
    <tr>
    <td>
        <table cellpadding="0" cellspacing="3" border="0">
        <tr><td>
        <a href="LinksFoto.aspx" title="Cвадебный фотограф"><img src="Images/WeddingFoto_70.jpg" alt="Cвадебный фотограф" title="Cвадебный фотограф"/></a>
        </td><td>
        <a href="LinksFoto.aspx" title="Cвадебный фотограф" style="font-size:small; color:Green; font-weight:bold; text-decoration:none; white-space:nowrap;">Cвадебный фотограф</a>
        </td></tr>
        </table>
    </td>
    <td>
        <table cellpadding="0" cellspacing="3" border="0">
        <tr><td>
        <a href="LinksPartners.aspx" title="Наши партнёры"><img src="Images/PartnerSite_70.jpg" alt="Наши партнёры" title="Наши партнёры"/></a>
        </td><td>
        <a href="LinksPartners.aspx" title="Наши партнёры" style="font-size:small; color:Green; font-weight:bold; text-decoration:none; white-space:nowrap;">Наши партнёры</a>
        </td></tr>
        </table>
    </td>
    </tr>
    </table>
</asp:Content>

