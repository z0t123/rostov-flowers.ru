<%@ Page Title="Цветочные композиции" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompositionsMiscellaneous.aspx.cs" Inherits="CompositionsMiscellaneous" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 style="color:Green; font-size:110%; margin-bottom:5px;">Цветочные композиции:</h1>

<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" EnableViewState="False" RepeatColumns="5" RepeatDirection="Horizontal" ShowHeader="False">
    <ItemTemplate>

    <table cellspacing="0" cellpadding="0" border="2" style="border-color:#FFE1FF;">
                    <tr><td align="center">
                        <asp:Label ID="LabelItemNumber" runat="server" CssClass="textsite" Text='<%# Eval("number") %>'></asp:Label>
                    </td></tr>
                    <tr>
                    <td valign="top" align="center">
                        <a href="#" onclick='<%# "javascript:OpenBigImage(\"" +  Eval("ItemID").ToString() + "\")" %>'><asp:Image ID="Image1" AlternateText="Цветочная композиция" CssClass="ImagesItemsClass" ImageUrl='<%# GetImageUrl(Eval("ImageName").ToString()) %>' runat="server" /></a>
                    </td>
                    </tr>
                    <tr><td align="center" style="text-align:center;">
                        <asp:Label ID="Label1" runat="server" CssClass="textsite" Text='<%# Eval("Cost") %>'></asp:Label>
                        <asp:Label ID="LabelItemCost" runat="server" CssClass="textsite" Text=" руб."></asp:Label>
                    </td></tr>
                    </table>

    </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocvetieSqlServer %>"
        ProviderName="<%$ ConnectionStrings:SocvetieSqlServer.ProviderName %>" SelectCommand="SELECT * FROM [CompositionsMiscellaneous] ORDER BY [number]"></asp:SqlDataSource>

<script type="text/javascript">
    function OpenBigImage(ItemID) {
        window.open("ShowItem.aspx?ItemID=" + ItemID + "&Directory=CompositionsMiscellaneous", "itempage", "width=530, height=590, scrollbars=1,resizable=1,status=0,menubar=0,toolbar=0,location=0");
        self.name = "main"
    }
</script>

</asp:Content>