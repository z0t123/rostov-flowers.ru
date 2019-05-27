<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompositionsFigures.aspx.cs" Inherits="CompositionsFigures" Title="Соцветие сеть цветочных салонов. Ростов-на-Дону. Фигурки." %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
<script type="text/javascript">
    $(function () {
        $('.gallery_modal').lightBox();
    });
</script></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 style="color:Green; font-size:110%; margin-bottom:5px;">Цветочные фигурки:</h1>
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" EnableViewState="False" RepeatColumns="5" RepeatDirection="Horizontal" ShowHeader="False">
    <ItemTemplate>
        <table cellspacing="0" cellpadding="0" border="2" style="border-color:#FFE1FF;">
            <tr><td align="center">
                <asp:Label ID="LabelItemNumber" runat="server" CssClass="textsite" Text='<%# Eval("number") %>'></asp:Label>
            </td></tr>
            <tr>
            <td valign="top" align="center">
                <a href='<%# Utils.GetFullImageUrl("CompositionsFigures", Eval("ItemID").ToString())%>' class="gallery_modal" title="Цветочная фигурка № <%# Eval("number") %>. Цена - <%# Eval("Cost") %> руб."><asp:Image ID="Image1" CssClass="ImageBukets" AlternateText="Цветочная фигурка" ToolTip="Цветочная фигурка" ImageUrl='<%# Utils.GetFullImageUrl("CompositionsFigures", Eval("ItemID").ToString()) %>' runat="server" /></a>
            </td>
            </tr>
            <tr><td align="center" style="text-align:center;">
                <asp:Label ID="Label1" runat="server" CssClass="textsite" Text='<%# Eval("Cost") %>'></asp:Label>
                <asp:Label ID="LabelBuketCost" runat="server" CssClass="textsite" Text=" руб."></asp:Label>
            </td></tr>
        </table>
    </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SocvetieSqlServer %>"
        ProviderName="<%$ ConnectionStrings:SocvetieSqlServer.ProviderName %>" SelectCommand="SELECT * FROM [CompositionsFigures] ORDER BY [number]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" runat="Server">
    <div class="bottomElements">
        <div class="bottomInnerElements">
            <div id="leftleftBottomElement">
                <div id="bottomInnerElementId1" class="bottomInnerElement">
                    <img src="Images/little_image_flower_4.jpg" alt="Значение цветов" title="Значение цветов"
                        class="little_logo_img" />
                    <h3>
                        Значение цветов
					</h3>
                    <p>
                        Сегодня <a href="/" title="Доставка цветов Ростов">доставка цветов в Ростове-на-Дону</a> популярна как никогда. С таким подарком ошибиться невозможно, он будет всегда кстати, у него есть миллионы вариантов, каждый букет – неповторим. К тому же, преподнести такой подарок можно по-особому красиво.</br>
						Обратимся к символизму, ведь каждый цветок несет скрытое послание. </br>
						Астра — цветок богини Венеры. Символ любви,  очарования, трепетных воспоминаний. </br>
						Белая акация — неугасающее пламя чувств, несмотря на разлуку.  </br>
						Желтая акация — непорочность и целомудрие.</br>
						Розовая акация — женственность, грациозность, утонченность. </br>
						Амброзия — взаимность и яркие эмоции.</br>
						Гвоздика — женская любовь, признание и надежда на взаимность. </br>
						Красная гвоздика — намек на сильную любовь, граничащую с поклонением.</br>
						Белая гвоздика — символ победы, удачи и признания.</br>
						Розовая гвоздика — нежное признание. </br>
						Ирис — доверие, уважение и признание мудрости.</br>
						Белая лаванда — восхищение и восторг.</br>
						Белая лилия — чистота и непорочность. </br>
						Магнолия — верность и мечты.</br>
						Маргаритки — хорошее отношение и безусловная любовь.</br>
						Нарцисс — ветреное настроение, флирт.</br>
						Желтый нарцисс — вожделение.</br>
						Незабудка — вечная любовь.</br>
						Орхидея —  восхищение.</br>
						Пион — надежда на счастливый брак, семейное благополучие.</br>
						Красная роза — безумная страсть.</br>
						Бордовая роза — зрелая любовь.</br>
						Алая роза — только зарождающиеся чувства.</br>
						Розовая роза — просьба о вере.</br>
						Белые розы — благодарность.</br>
						Желтые розы — легкость, желание продолжать отношения.</br>
						Хризантема — дружба.</br>
						Тюльпаны – откровение. </br>
						Белая хризантема — искренность и открытость. </br>
						Желтая хризантема — нежность. </br>
					</p>
			</div>
            </div>
            <div id="centerBottomElement">
                <div id="bottomInnerElementId2" class="bottomInnerElement">
                    <img src="Images/little_image_flower_5.jpg" alt="Доставка цветов" title="Доставка цветов"
                            class="little_logo_img" />
                    <h3>
                        Наша работа</h3>
                    <p>
                        Наш интернет-магазин производит <a href="/" title="Доставка цветов Ростов-на-Дону">доставку цветов в Ростове-на-Дону</a>. 
						Мы гарантируем, что только из свежих цветов будет собран для Вас букет. 
						Преимуществами нашего интернет-магазина являются хорошие цены на доставку цветов, 
						большой выбор букетов, накопительная система скидок. У нас надёжный сервис: 
						информация о Ваших заказах и о Вас будет всегда в безопасности. 
					</p>
                    <p>
                        Сделав заказ цветов по телефону или на сайте, Вы убедитесь, 
						что быстро осуществилась доставка подарков на дом. Выбирайте качество 
						нашего интернет-магазина. Какой же человек не любит делать подарки от 
						всей души и с размахом! Однако подарок ещё должен быть оригинальным. 
						Если Вы хотите поздравить близкого человека, сделать ему приятный подарок, 
						закажите доставку цветов по Ростову-на-Дону. Наш сайт представляет огромный 
						выбор букетов на все случаи жизни, поэтому Вы сможете выбрать то, что Вам надо. 
					</p>
                    <p>
                        Вы можете задать вопрос: «Почему доставку цветов можно считать оригинальной?»
						С букетами на празднование приходят многие, и только от Вас придёт букет с запиской: 
						«Жди, буду, поздравляю!» Вы можете заказать и экзотическую корзину, и
						плюшевого медведя из хризантем. Такой букет вряд ли кто принесёт. 
						Благодаря нашим стараниям подарок Ваш по праву можно будет назвать отменным!
					</p>
                </div>
            </div>
            <div id="rightBottomElement">
                <div id="bottomInnerElementId3" class="bottomInnerElement">
                    <img src="Images/little_image_flower_6.jpg" alt="Цветы в нашей жизни" title="Цветы в нашей жизни"
                            class="little_logo_img" />
                    <h3>
                        Цветы в нашей жизни</h3>
                    <p>
                        Сегодня ни одно романтическое свидание, ни одно торжество не обходится без цветов. 
						Обязательными атрибутами встреч и праздников становятся цветы, с их помощью, во многом, 
						развиваются отношения людей. 
					</p>
					<p>
						Без букета цветов не обойтись при первом свидании. 
						Нежные полевые цветы или прекрасные розы – выбор цветов зависит во многом от вкусовых 
						предпочтений и характера Вашей избранницы. 
					</p>
					<p>
						Экстравагантную композицию из экзотических 
						цветов можно выбрать, проявив смелость и оригинальность, для последующих свиданий. 
						А какая невеста не мечтает о романтическом свадебном букете? 
					</p>
					<p>
						После свадьбы в жизни влюблённых цветов должно быть ещё больше, 
						так как Вы теперь принадлежите друг другу и подтверждать свои чувства можете хоть 
						каждый день!

					</p>
                    <p>
                        Тысячи людей со всего мира ежегодно заказывают для близких людей цветочные композиции 
						нашей компании. С большим ассортиментом цветочных композиций и букетов можно 
						познакомиться на странице <a href="/" title="Доставка цветов">доставка цветов</a> Ростов-на-Дону. 
					</p>
					<p>
						Здесь Вы сможете 
						подобрать любую флористическую композицию: праздничную и яркую или лаконичную и 
						элегантную, экстравагантную или традиционную.
					</p>
					<p>
						Любой, выбранный Вами букет, можете быть уверены, будет оценён по достоинству!
					</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>