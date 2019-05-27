<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowItem.aspx.cs" Inherits="ShowItem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Соцветие, Ростов, цветы, свадьба, букет невесты, заказ доставка цветов букетов</title>
    <style type="text/css" id="showitem_css">
        a:link {color: #A65C00;}
        a:visited {color: #A65C00;}
        a:hover {color: #D98C1E;}
        a:active {color: #A65C00;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table border="0" cellpadding="0" cellspacing="0">
    <tr><td>
        <asp:Image ID="Image1" Height="500px" Width="500px" runat="server" AlternateText="букет" ImageUrl="<%=GetURL() %>" />
    </td></tr>
    <tr><td align="center">
        <a href="#" onclick="self.close()" id="l">закрыть окно.</a>
    </td></tr>
    </table>
    </form>
</body>
</html>
