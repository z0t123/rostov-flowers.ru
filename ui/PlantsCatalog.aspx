<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlantsCatalog.aspx.cs" Inherits="PlantsCatalog" Title="Комнатные растения каталог. Доставка цветов Ростов-на-Дону. Соцветие." %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 style="color:Green; font-size:110%; margin-bottom:5px;">Каталог комнатных растений:</h1>
<table border="0" cellpadding="0" cellspacing="0"> 
<tr><td>
<table border="0" cellpadding="5" cellspacing="2" class="greentextsite">
<tr>
    <td align="left" valign="middle" style="white-space:nowrap;">
        <a href="PlantsAzalea.aspx" class="greentextsite">Азалия, Рододендрон</a></td>
    <td>
        <a href="PlantsAzalea.aspx"><asp:Image ID="Image1" AlternateText="Азалия" runat="server"  ImageUrl="~/Images/ImageData/Plants/azalea_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsAzalea.aspx"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/ImageData/Plants/azalea_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsAzalea.aspx"><asp:Image ID="Image3" runat="server" ImageUrl="~/Images/ImageData/Plants/azalea_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsAnturium.aspx" class="greentextsite">Антуриум</a>
    </td>
    <td>
        <a href="PlantsAnturium.aspx" class="greentextsite"><asp:Image ID="Image4" AlternateText="Антуриум" runat="server" ImageUrl="~/Images/ImageData/Plants/anturium_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsAnturium.aspx" class="greentextsite"><asp:Image ID="Image5" runat="server" ImageUrl="~/Images/ImageData/Plants/anturium_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsAnturium.aspx" class="greentextsite"><asp:Image ID="Image6" runat="server" ImageUrl="~/Images/ImageData/Plants/anturium_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsBamboo.aspx" class="greentextsite">Бамбук,<br />Драцена Сандериана</a></td>
    <td>
        <a href="PlantsBamboo.aspx" class="greentextsite"><asp:Image ID="Image7" AlternateText="Драцена Сандериана" runat="server" ImageUrl="~/Images/ImageData/Plants/bamboo_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsBamboo.aspx" class="greentextsite"><asp:Image ID="Image8" runat="server" ImageUrl="~/Images/ImageData/Plants/bamboo_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsBamboo.aspx" class="greentextsite"><asp:Image ID="Image9" runat="server" ImageUrl="~/Images/ImageData/Plants/bamboo_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsHortensis.aspx" class="greentextsite">Гортензия</a></td>
    <td>
        <a href="PlantsHortensis.aspx" class="greentextsite"><asp:Image ID="Image64" AlternateText="Гортензия" runat="server" ImageUrl="~/Images/ImageData/Plants/hortensis_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsHortensis.aspx" class="greentextsite"><asp:Image ID="Image65" runat="server" ImageUrl="~/Images/ImageData/Plants/hortensis_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsHortensis.aspx" class="greentextsite"><asp:Image ID="Image66" runat="server" ImageUrl="~/Images/ImageData/Plants/hortensis_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle" style="white-space:nowrap;">
        <a href="PlantsGuzmania.aspx" class="greentextsite">
        Гузмания,<br />
        Алая звезда</a>
    </td>
    <td>
        <a href="PlantsGuzmania.aspx" class="greentextsite"><asp:Image ID="Image10" runat="server" ImageUrl="~/Images/ImageData/Plants/guzmania_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsGuzmania.aspx" class="greentextsite"><asp:Image ID="Image11" runat="server" ImageUrl="~/Images/ImageData/Plants/guzmania_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsGuzmania.aspx" class="greentextsite"><asp:Image ID="Image12" runat="server" ImageUrl="~/Images/ImageData/Plants/guzmania_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle" style="height: 21px">
        <a href="PlantsDracena.aspx" class="greentextsite">Драцена</a>
    </td>
    <td>
        <a href="PlantsDracena.aspx" class="greentextsite"><asp:Image ID="Image13" runat="server" ImageUrl="~/Images/ImageData/Plants/dracena_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsDracena.aspx" class="greentextsite"><asp:Image ID="Image14" runat="server" ImageUrl="~/Images/ImageData/Plants/dracena_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsDracena.aspx" class="greentextsite"><asp:Image ID="Image15" runat="server" ImageUrl="~/Images/ImageData/Plants/dracena_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsZamiokulkas.aspx" class="greentextsite">Замиокулькас</a>
    </td>
    <td>
        <a href="PlantsZamiokulkas.aspx" class="greentextsite"><asp:Image ID="Image16" runat="server" ImageUrl="~/Images/ImageData/Plants/zamiokulkas_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsZamiokulkas.aspx" class="greentextsite"><asp:Image ID="Image17" runat="server" ImageUrl="~/Images/ImageData/Plants/zamiokulkas_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsZamiokulkas.aspx" class="greentextsite"><asp:Image ID="Image18" runat="server" ImageUrl="~/Images/ImageData/Plants/zamiokulkas_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsKaktus.aspx" class="greentextsite">Кактусы</a>
    </td>
    <td>
        <a href="PlantsKaktus.aspx" class="greentextsite"><asp:Image ID="Image19" runat="server" ImageUrl="~/Images/ImageData/Plants/kaktus_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsKaktus.aspx" class="greentextsite"><asp:Image ID="Image20" runat="server" ImageUrl="~/Images/ImageData/Plants/kaktus_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsKaktus.aspx" class="greentextsite"><asp:Image ID="Image21" runat="server" ImageUrl="~/Images/ImageData/Plants/kaktus_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsKalat.aspx" class="greentextsite">Калатея</a>
    </td>
    <td>
        <a href="PlantsKalat.aspx" class="greentextsite"><asp:Image ID="Image22" runat="server" ImageUrl="~/Images/ImageData/Plants/kalat_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsKalat.aspx" class="greentextsite"><asp:Image ID="Image23" runat="server" ImageUrl="~/Images/ImageData/Plants/kalat_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsKalat.aspx" class="greentextsite"><asp:Image ID="Image24" runat="server" ImageUrl="~/Images/ImageData/Plants/kalat_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsKrassula.aspx" class="greentextsite">Крассула,<br />
        Денежное дерево</a>
    </td>
    <td>
        <a href="PlantsKrassula.aspx" class="greentextsite"><asp:Image ID="Image25" runat="server" ImageUrl="~/Images/ImageData/Plants/krassula_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsKrassula.aspx" class="greentextsite"><asp:Image ID="Image26" runat="server" ImageUrl="~/Images/ImageData/Plants/krassula_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsKrassula.aspx" class="greentextsite"><asp:Image ID="Image27" runat="server" ImageUrl="~/Images/ImageData/Plants/krassula_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle" style="height: 21px">
        <a href="PlantsKroton.aspx" class="greentextsite">Кротон, Кодиеум</a>
    </td>
    <td>
        <a href="PlantsKroton.aspx" class="greentextsite"><asp:Image ID="Image28" runat="server" ImageUrl="~/Images/ImageData/Plants/kroton_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsKroton.aspx" class="greentextsite"><asp:Image ID="Image29" runat="server" ImageUrl="~/Images/ImageData/Plants/kroton_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsKroton.aspx" class="greentextsite"><asp:Image ID="Image30" runat="server" ImageUrl="~/Images/ImageData/Plants/kroton_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsMyrtus.aspx" class="greentextsite">Мирт</a>
    </td>
    <td>
        <a href="PlantsMyrtus.aspx" class="greentextsite"><asp:Image ID="Image31" runat="server" ImageUrl="~/Images/ImageData/Plants/myrtus_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsMyrtus.aspx" class="greentextsite"><asp:Image ID="Image32" runat="server" ImageUrl="~/Images/ImageData/Plants/myrtus_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsMyrtus.aspx" class="greentextsite"><asp:Image ID="Image33" runat="server" ImageUrl="~/Images/ImageData/Plants/myrtus_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsMonstera.aspx" class="greentextsite">Монстера</a>
    </td>
    <td>
        <a href="PlantsMonstera.aspx" class="greentextsite"><asp:Image ID="Image34" runat="server" ImageUrl="~/Images/ImageData/Plants/Monstera_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsMonstera.aspx" class="greentextsite"><asp:Image ID="Image35" runat="server" ImageUrl="~/Images/ImageData/Plants/Monstera_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsMonstera.aspx" class="greentextsite"><asp:Image ID="Image36" runat="server" ImageUrl="~/Images/ImageData/Plants/Monstera_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsPahira.aspx" class="greentextsite">Пахира</a>
    </td>
    <td>
        <a href="PlantsPahira.aspx" class="greentextsite"><asp:Image ID="Image37" runat="server" ImageUrl="~/Images/ImageData/Plants/pahira_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsPahira.aspx" class="greentextsite"><asp:Image ID="Image38" runat="server" ImageUrl="~/Images/ImageData/Plants/pahira_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsPahira.aspx" class="greentextsite"><asp:Image ID="Image39" runat="server" ImageUrl="~/Images/ImageData/Plants/pahira_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsHedera.aspx" class="greentextsite">Плющ</a>
    </td>
    <td>
        <a href="PlantsHedera.aspx" class="greentextsite"><asp:Image ID="Image40" runat="server" ImageUrl="~/Images/ImageData/Plants/hedera_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsHedera.aspx" class="greentextsite"><asp:Image ID="Image41" runat="server" ImageUrl="~/Images/ImageData/Plants/hedera_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsHedera.aspx" class="greentextsite"><asp:Image ID="Image42" runat="server" ImageUrl="~/Images/ImageData/Plants/hedera_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsPrimula.aspx" class="greentextsite">Примула</a>
    </td>
    <td>
        <a href="PlantsPrimula.aspx" class="greentextsite"><asp:Image ID="Image43" runat="server" ImageUrl="~/Images/ImageData/Plants/Primula_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsPrimula.aspx" class="greentextsite"><asp:Image ID="Image44" runat="server" ImageUrl="~/Images/ImageData/Plants/Primula_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsPrimula.aspx" class="greentextsite"><asp:Image ID="Image45" runat="server" ImageUrl="~/Images/ImageData/Plants/Primula_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle" style="white-space:nowrap;">
        <a href="PlantsPoinsettia.aspx" class="greentextsite">Пуансетия,<br />
        Рождественская звезда</a>
    </td>
    <td>
        <a href="PlantsPoinsettia.aspx" class="greentextsite"><asp:Image ID="Image49" runat="server" ImageUrl="~/Images/ImageData/Plants/poinsettia_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsPoinsettia.aspx" class="greentextsite"><asp:Image ID="Image50" runat="server" ImageUrl="~/Images/ImageData/Plants/poinsettia_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsPoinsettia.aspx" class="greentextsite"><asp:Image ID="Image51" runat="server" ImageUrl="~/Images/ImageData/Plants/poinsettia_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsRaptor.aspx" class="greentextsite">Растения-хищники, Непентес</a>
    </td>
    <td>
        <a href="PlantsRaptor.aspx" class="greentextsite"><asp:Image ID="Image52" runat="server" ImageUrl="~/Images/ImageData/Plants/raptor_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsRaptor.aspx" class="greentextsite"><asp:Image ID="Image53" runat="server" ImageUrl="~/Images/ImageData/Plants/raptor_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsRaptor.aspx" class="greentextsite"><asp:Image ID="Image54" runat="server" ImageUrl="~/Images/ImageData/Plants/raptor_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsSpathiphyllum.aspx" class="greentextsite">Спатифиллум</a>
    </td>
    <td>
        <a href="PlantsSpathiphyllum.aspx" class="greentextsite"><asp:Image ID="Image55" runat="server" ImageUrl="~/Images/ImageData/Plants/spathiphyllum_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsSpathiphyllum.aspx" class="greentextsite"><asp:Image ID="Image56" runat="server" ImageUrl="~/Images/ImageData/Plants/spathiphyllum_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsSpathiphyllum.aspx" class="greentextsite"><asp:Image ID="Image57" runat="server" ImageUrl="~/Images/ImageData/Plants/spathiphyllum_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsSaintpaulia.aspx" class="greentextsite">Сенполия, Фиалки</a>
    </td>
    <td>
        <a href="PlantsSaintpaulia.aspx" class="greentextsite"><asp:Image ID="Image46" runat="server" ImageUrl="~/Images/ImageData/Plants/fialka_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsSaintpaulia.aspx" class="greentextsite"><asp:Image ID="Image47" runat="server" ImageUrl="~/Images/ImageData/Plants/fialka_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsSaintpaulia.aspx" class="greentextsite"><asp:Image ID="Image48" runat="server" ImageUrl="~/Images/ImageData/Plants/fialka_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsPhalaenopsis.aspx" class="greentextsite">Фаленопсис, Орхидеи</a>
    </td>
    <td>
        <a href="PlantsPhalaenopsis.aspx" class="greentextsite"><asp:Image ID="Image58" runat="server" ImageUrl="~/Images/ImageData/Plants/falenopsis_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsPhalaenopsis.aspx" class="greentextsite"><asp:Image ID="Image59" runat="server" ImageUrl="~/Images/ImageData/Plants/phalaenopsis_2.gif" /></a>
    </td>
    <td>
        <a href="PlantsPhalaenopsis.aspx" class="greentextsite"><asp:Image ID="Image60" runat="server" ImageUrl="~/Images/ImageData/Plants/falenopsis_3.jpg" /></a>
    </td>
</tr>
<tr>
    <td align="left" valign="middle">
        <a href="PlantsEhmea.aspx" class="greentextsite">Эхмея</a>
    </td>
    <td>
        <a href="PlantsEhmea.aspx" class="greentextsite"><asp:Image ID="Image61" runat="server" ImageUrl="~/Images/ImageData/Plants/ehmea_1.jpg" /></a>
    </td>
    <td>
        <a href="PlantsEhmea.aspx" class="greentextsite"><asp:Image ID="Image62" runat="server" ImageUrl="~/Images/ImageData/Plants/ehmea_2.jpg" /></a>
    </td>
    <td>
        <a href="PlantsEhmea.aspx" class="greentextsite"><asp:Image ID="Image63" runat="server" ImageUrl="~/Images/ImageData/Plants/ehmea_3.jpg" /></a>
    </td>
</tr>
<tr>
	<td colspan="4">
		<div class="textBlock">
			<p>
				В нашем цветочном магазине по адресу Щеолдаева 15 представлен большой выбор комнатных растений, 
				керамических горшков, грунта и сопутствуюших удобрений и материалов.
			</p>
			<p>
				Выбрав себе комнатный цветок по вкусу, Вы сможете оформить у нас <a href="/" title="Доставка цветов Ростов-на-Дону">доставку</a> его на дом.
			</p>
		</div>
	</td>
</tr>
</table>
</td></tr>
</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" runat="Server">
    <div class="bottomElements">
        <div class="bottomInnerElements">
            <div id="leftleftBottomElement">
                <div id="bottomInnerElementId1" class="bottomInnerElement">
                    <img src="Images/little_image_flower_4.jpg" alt="Цветы и история" title="Цветы и история"
                        class="little_logo_img" />
                    <h3>
                        Цветы и история</h3>
                    <p>
                        Красавица белая лилия предстает символом молодости, чистоты и невинности. 
						В Испании и Италии цветок тесно связывали с верой. Рассказывали, что в день 
						Благовещения, архангел Гавриил явился к Деве Марии, держа в руке белоснежную лилию. 
						Именно в венках из лилий девушки идут впервые  к святому Причастию. 
						Лики святы также украшают этим цветком.
					</p>
                    <p>
                        Древние греки приписывали этому цветку божественное происхождение. 
						По преданию греков лилия выросла из молока Юноны, богини брака и рождения детей. 
						Так белоснежный цветок стал  олицетворением женской природы.
					</p>
                    <p>
                        В Древнем Риме лилия была цветком благополучия и надежды. 
						Часто лилиями  украшали помещения для проведения в них празднеств и церемоний.    
					</p>
                    <p>
                        Столица Древней Персии назвалась Суза, что в переводе означает Лилия. 
						Во время царствования Кира лилиями повсеместно украшали газоны, водоемы и дворики.
					</p>
                    <p>
                        Во Франции цветок лилии ассоциировался с короной и считался символом власти. 
						В XII Людовик VII столетии избрал лилию своей эмблемой. 
						Лилия – символ преданности папскому пристолу.  
						Францию часто называют царством лилий, монарх же именуется королем лилий.
					</p>
					<p>
                        Позже, во времена Людовика IV знаком лилии на теле клеймили преступниц и 
						падших женщин. Вспомним миледи из «Трех мушкетеров». 
					</p>
					<p>
                        В Германии лилия традиционно ассоциируется с загробной жизнью. 
					</p>
					<p>
                        Хотелось бы сказать, что не так важен символизм лилии как ее чрезвычайная красота и тонкость. 
						Индивидуальность и нежность особенной женщины поможет подчеркнуть необычный подарок – 
						<a href="/" title="Доставка цветов Ростов">доставка цветов в Ростове-на-Дону</a>. 
					</p>
					<p>
                        Комнатные растения делятся на семь основных групп, 
						в каждой из которых есть свои уникальные и ярко выраженные особенности.
						В этом разделе приведены и описаны основные характерные свойства, 
						правила ухода и выращивания для каждой из этих групп.
					</p>
					<p>
                        Ключевые слова: каталог комнатных растений с фото, комнатные растения каталог в картинках, 
						каталог комнатных цветущих растений, каталог комнатных растений и цветов,
						комнатные растения каталог, комнатные растения и цветы каталог, каталог комнатных цветов, 
						комнатные цветы каталог. 
					</p>
					<p>
						Возможно перед тем как зайти на эту страницу Вы искали каталог комнатные цветы фото, каталог комнатных цветов с фото,
						цветы комнатные в картинках каталог в картинках, каталог цветов комнатных в картинках, 
						домашние цветы каталог, каталог домашних цветов, каталог домашних цветов фото,
						домашние растения каталог, домашние растения каталог фото.
					</p>
			</div>
            </div>
            <div id="centerBottomElement">
                <div id="bottomInnerElementId2" class="bottomInnerElement">
                    <img src="Images/little_image_flower_5.jpg" alt="Традиция дарить цветы" title="Традиция дарить цветы"
                            class="little_logo_img" />
                    <h3>
                        Традиция дарить цветы</h3>
                    <p>
                        Интересно откуда пошла традиция дарить цветы? Самому купить букет или воспользоваться услугой 
						«<a href="/" title="Доставка цветов Ростов-на-Дону">доставка цветов Ростов-на-Дону</a>» – это привычный ритуал для нас, а вот откуда он берет свои корни, 
						мы не задумываемся.
					</p>
                    <p>
                        Каждый древнегреческий бог ассоциировался с определенным цветком.  Экзотический ритуал, 
						одаривать уважаемых гостей гирляндами из цветов  сохранился в  Индии и Индонезии. 
					</p>
                    <p>
                        В Европу экзотические цветы были привезены мореплавателями. 
						Королевские дизайнеры быстро смекнули, что цветок может стать потрясающим 
						элементом для декорирования. С этого времени флористика и стала 
						развиваться как самостоятельное направление.
					</p>
                    <p>
                        Огромные букеты, украшающие знатные дома стали показателем социального статуса. 
						Дворянские семьи даже соревновались между собой в совершенстве и изысканности букетов, 
						которые украшали званые ужины. Тогдашние букеты на сегодняшний взгляд специалистов были 
						чересчур «кричащими» и громоздкими. 
					</p>
					<p>
                        Через несколько лет в Европе сформировались определенные стили оформления букетов:  
						«Виктория», «Бидермеер», «Помпадур». В букетах того времени  царствовали контрастные 
						цвета в обрамлении сочной зелени. К концу ХIХ века в моду стали входить 
						спокойные и аккуратные композиции.
					</p>
					<p>
                        Славянские народы издавна использовали цветы в своих обрядах. К примеру,  
						в ночь на Ивана Купалу девушки гадали, пуская по реке венок со свечами. 
						Славянам нравились простые полевые цветы, а композиции составлялись в 
						гармоничной не яркой цветовой гамме.  Цветы размещались на расстоянии друг 
						от друга, чтобы избежать визуально получения сплошных цветовых пятен. 
					</p>
					<p>
                        Комнатные растения и комнатные цветы всегда были есть и будут одними из основных 
						украшений наших квартир и домов. Они прекрасно гармонируют с внутренним интерьером, 
						успокаивают наш взгляд, поднимают настроение. Многие комнатные растения способны 
						выделять кислород в окружающую среду, тем самым улучшая нашу повседневную жизнь.
					</p>
					<p>
                        Так же некоторые комнатные цветы являются природными антисептиками, и их наличие 
						в комнате обуславливает отсутствие каких-либо возможных букашек и таракашек. 
						Некоторые из них способны прогонять мух и комаров. А некоторые даже их съедать.
					</p>
					<p>
                        На сайте нашей компании имеются каталоги, 
						по которым Вы можете оформить заказ на понравившееся комнатное растение, 
						а мы произведём доставку цветов в Ростове-на-Дону непременно к Вашему дому. 
					</p>
                </div>
            </div>
            <div id="rightBottomElement">
                <div id="bottomInnerElementId3" class="bottomInnerElement">
                    <img src="Images/little_image_flower_6.jpg" alt="Цветочный гороскоп" title="Цветочный гороскоп"
                            class="little_logo_img" />
                    <h3>
                        Цветочный гороскоп</h3>
                    <p>
                        Покорить сердце приглянувшейся вам женщины, без сомнения, поможет доставка цветов в Ростове-на-Дону. 
						Каждый цветок обладает своей неповторимой энергетикой.  Древние прослеживали связь между определенными 
						цветами и знаками зодиака. Выбирая букет можно обратиться к гороскопу.
					</p>
                    <p>
                        Овен – знак огня. Овну можно дарить цветы ярких оттенков. 
						Этому воинственному знаку подойдут растения с колючками. 
						Овен активен и любит внимание, предпочитает цветы с пышными соцветиями и высокими стеблями. 
						Для составления букета для этого знака подойдут  азалия, герань, гранат, роза, 
						королевская бегония, эхмея. 
					</p>
                    <p>
                        Телец – земля. Для этого знака подойдут растения с невысоким ростом, устойчивые к внешним 
						изменениям среды. Представители этого знака будут рады  фиалкам, каланхое, 
						бегонии, глоксинии, первоцвету.
					</p>
                    <p>
                        Близнецам покровительствует Меркурий. Может создаться впечатление, чтоб близнецы слишком 
						ветрены и находятся в каком-то хаотичном движении. В подарок близнецам можно заказать 
						растения с пышной листвой и непрямыми стеблями. Подойдут спаржевидный и перистый аспарагус, 
						тилляндисия, пальмовые ветви, плющи,  папоротники, традесканция.
					</p>
					<p>
                        Рак – вода.  Характерная черта цветов для этого знака – обильная листва и сочность стеблей. 
						Раку покровительствуют цветы, приносящие в дом мир и семейное благополучие: аглаонема, 
						гастерия, агава, алоэ, каланхое, диффенбахия, фуксия.
					</p>
					<p>
                        Рожденным под солнечным знаком Льва подойдут герань, калла, китайская роза, 
						гардения, японская камелия. Лев аристократичный и творческий знак. 
						Растения Льва способны привлекать вдохновение и  удачу в работе.
					</p>
					<p>
                        Дева любит цветы с вьющимися листьями и упругими стеблями. 
						Знак Девы – рационален, так и растения, покровительствующие этому знаку, 
						не только красивы, но и могут приносить пользу, это: алоэ, монстера, 
						японская аукуба, филодендрон и циссус.
					</p>
					<p>
                        Цветы, ассоциирующиеся со знаком Весов, часто обладают цветными листьями, 
						и имеют красивые плоды и соцветия. Весы – хорошие партнеры, так и цветы, 
						покровительствующие этому знаку, способствуют нахождению взаимопонимания. 
						Для Весов подходит хризантема, гибискус, кротон, гортензия, камелия,  
						японская фатсия.
					</p>
					<p>
                        В арсенале Скорпиона преобладают колючие растения,  ведь он – индивидуалист: 
						агава, тигровая фаукария,  алоэ, драцена, плененосная гинура, олеандр, эхмея. 
						Растения Скорпиона помогают раскрыть скрытые возможности человека.
					</p>
					<p>
                        Стрелец часто непредсказуем, стремится к новым свершениям. 
						Цветы для этого знака подбирают очень длинные, с обильным цветением и 
						гибкими крепкими стеблями. Растения Стрельца — цитрусовые, шеффлера, бонсаи.
					</p>
					<p>
                        Характерные черты Козерога: упрямство и постоянство. 
						Растения Козерога имеют прямые стебли и не слишком быстро растут, 
						это: душистая драцена, лавр, юкка, литопсы, фикусы. 
					</p>
					<p>
                        Водолея часто посещают оригинальные идеи, желая поделиться ними с окружающими, 
						он порой забывает про реальность. Растения Водолея оригинальны: абутилон, 
						драцена Годсефа, рео пестрое, крестовник, маранта. 
					</p>
					<p>
                        Для Рыб подойдут цветы с  легким ароматом и изящными цветами. 
						Растения Рыб приносят гармонию во внутреннюю жизнь человека. 
						Рыбам подходят орхидея, платицериум, толмия, гиацинт, герань. 
					</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
