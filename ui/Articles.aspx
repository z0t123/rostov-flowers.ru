<%@ Page Title="Статьи. Доставка цветов в Ростове-на-Дону. Свадебный букет невесты. Соцветие." Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Articles.aspx.cs" Inherits="Articles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:Green; font-size:110%; margin-bottom:5px;">Информационные статьи:</h1>

    <div class="textBlock">
		<p>
			Мы периодически добавляем разнообразные статьи, которые, на наш взгляд, могут Вам пригодиться.
		</p>
		<p>
			Некоторые из них рассказывают о интересных товарах, некоторые о новых услугах, 
            большинство из них конечно же посвящено цветам, букетам, комнатным растениям, свадебному оформлению, 
            различным композициям и всей сопутствующей праздничной индустрие.
		</p>

        <div align="center" class="hrDiv">
            <hr />
        </div>

        <asp:GridView Width="100%" PagerStyle-VerticalAlign="Bottom" FooterStyle-Height="100%" RowStyle-VerticalAlign="Top" Height="100%" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
			PageSize="30" BorderStyle="None" BorderWidth="0px" GridLines="None" ShowHeader="False" ShowFooter="True" CellPadding="0" DataSourceID="SqlDataSource1">
			<Columns>
				<asp:TemplateField>
					<ItemTemplate>
						<table class="itemsTable">
							<tr>
								<td>
									<a href='<%# "Article.aspx?Id=" +  Eval("Id").ToString() + "&PageIndex=" + GridView1.PageIndex %>' title="<%# Eval("Title") %>">
										<h3>
											<%# Eval("Title") %>
										</h3>
									</a>
								</td>
							</tr>
							<tr>
								<td>
									<asp:Label ID="Label2" runat="server" Text='<%# string.Format("{0}...",Eval("Text").ToString().Substring(0,300)) %>'></asp:Label>
								</td>
							</tr>
							<tr>
								<td>
									<a href='<%# "Article.aspx?Id=" +  Eval("Id").ToString() + "&PageIndex=" + GridView1.PageIndex %>' title="<%# Eval("Title") %>" class="articleNextText">
										Подробнее...
									</a>
								</td>
							</tr>
						</table>
					</ItemTemplate>
				</asp:TemplateField>
			</Columns>
			<FooterStyle Height="100%" />
			<RowStyle VerticalAlign="Top" BorderStyle="None" BorderWidth="0px" />
			<PagerStyle VerticalAlign="Bottom" />
		</asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocvetieSqlServer %>"
            ProviderName="<%$ ConnectionStrings:SocvetieSqlServer.ProviderName %>" SelectCommand="SELECT * FROM [Articles] ORDER BY [Id] DESC"></asp:SqlDataSource>
    </div>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".little_logo_img_articles").height(70);
			});
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" Runat="Server">
</asp:Content>

