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

        
    </div>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".little_logo_img_articles").height(70);
			});
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" Runat="Server">
</asp:Content>

