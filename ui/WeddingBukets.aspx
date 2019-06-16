<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="WeddingBukets.aspx.cs" Inherits="WeddingBukets" Title="Заказать свадебный букет для невесты с доставкой в Ростове-на-Дону" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
<script type="text/javascript">
    $(function () {
        $('.gallery_modal').lightBox();
    });
</script></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1 style="color:Green; font-size:110%; margin-bottom:5px;">Свадебный букет невесты:</h1>
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" EnableViewState="False" RepeatColumns="5" RepeatDirection="Horizontal" ShowHeader="False">
<ItemTemplate>
    <table cellspacing="0" cellpadding="0" border="2" style="border-color:#FFE1FF;">
        <tr><td align="center">
            <asp:Label ID="LabelItemNumber" runat="server" CssClass="textsite" Text='<%# Eval("number") %>'></asp:Label>
        </td></tr>
        <tr>
        <td valign="top" align="center">
            <a href='<%# Utils.GetFullImageUrl("WeddingBukets", Eval("ItemID").ToString())%>' class="gallery_modal" title="Свадебный букет № <%# Eval("number") %>. Цена - <%# Eval("Cost") %> руб."><asp:Image ID="Image1" CssClass="ImageBukets" AlternateText="Свадебный букет" ToolTip="Свадебный букет" ImageUrl='<%# Utils.GetSmallImageUrl("WeddingBukets", Eval("ItemID").ToString()) %>' runat="server" /></a>
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
    ProviderName="<%$ ConnectionStrings:SocvetieSqlServer.ProviderName %>" SelectCommand="SELECT * FROM [WeddingBukets] ORDER BY [number]"></asp:SqlDataSource>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" runat="Server">
    <div class="bottomElements">
        <div class="bottomInnerElements">
            <div id="leftleftBottomElement">
                <div id="bottomInnerElementId1" class="bottomInnerElement">
                    <img src="Images/wedding_little_logo_2.jpg" alt="Свадебный букет" title="Свадебный букет"
                        class="little_logo_img" />
                    <h3>
                        Выбор свадебного букета
					</h3>
                    <p>
                        Каким должен быть свадебный букет невесты?
					</p>
                    <p>
                        Небольшой и трогательный или яркий, необычной формы и состоять из экзотических цветов. 
						Сколько цветов должно быть в букете невесты, и какие из них стоит выбрать? Классический белые розы или экстравагантные оранжевые каллы?
					</p>
                    <p>
						Наши флористы всегда подскажут вам какой букет стоит подобрать. 
						Для этого и существует свадебная флористика - искусство составлять свадебные букеты невесты, 
						украшать зал на свадьбу, украшать свадебные машины и создавать все остальные цветочные изюминки свадьбы!
						Здесь необходимо взвесить и платье невесты и костюм жениха и учесть ещё несколько немаловажных мелочей.
					</p>
                    <p>
                        В нашем каталоге представлен широкий выбор свадебных букетов невесты. 
						Вы так же можете заказать <a href="/" title="Доставка цветов">доставку цветов</a> а Ростове и Ростовской области.
						Курьеры смогут доставить свадебный букет невесты в указанное место в любое для Вас удобное время.
					</p>
                    <p>
                        Все оттенки, различные аксессуары и конечно же вся гамма доступных цветов.
						В том случае если сезонность вдруг не позволяет воплотить ваши фантазии в свадебный букет, мы заказываем цветы 
						напрямую с плантаций тех стран, где такой проблемы не возникает.
					</p>
                    <p>
                        Именно поэтому у нас можно заказать свадебный букет невесты своей мечты!
					</p>
                </div>
            </div>
            <div id="centerBottomElement">
                <div id="bottomInnerElementId2" class="bottomInnerElement">
                    <img src="Images/wedding_little_logo_3.jpg" alt="Свадебный букет" title="Свадебный букет"
                            class="little_logo_img" />
                    <h3>
                        Свадебный букет невесты</h3>
                    <p>
                        Наши флористы обладают огромным опытом в свадебной флористике. 
						Практически каждые выходные мы оформляем большое количество замечательных и 
						красочных свадеб в нашем любимом городе Ростов-на-Дону.
					</p>
                    <p>
                        Большое количество молодоженов выбрали именно у нас создание 
						свадебного букета невесты и полностью всё цветочное оформление всей свадьбы в целом.
						Курьер <a href="/" title="Доставка цветов Ростов-на-Дону">доставит букет</a> невесты в Ростове-на-Дону с самого утра по указанному адресу.
					</p>
                    <p>
                        Выбор свадебного букета - весьма ответственное событие для любой невесты. 
						Для этого лучше заблаговременно приехать в любую из наших цветочных студий, 
						просмотреть каталоги свадебных букетов и посоветоваться с флористами. 
						Часто цветовую гамму будущего свадебного букета невесты выбирают в 
						зависимости от тонов свадебного платья.
					</p>
                    <p>
                        Так же сначала желательно приблизительно определиться с самой формой и 
						дизайном букета невесты в целом, посмотрев каталог букетов на нашем сайте, 
						так же можно просмотреть дополнительное 
						<a href="WeddingDesign.aspx" title="Свадебное оформление">свадебное оформление</a>, 
						оформление свадебных машин, петлички жениха и прочего.
					</p>
                    <p>
                        Цветочные композиции на стол новобрачных, сопутствующие цветочные композиции, 
						букетики на зеркала автомобилей, цветочная композиция на капот свадебной машины - 
						всё это и не только  Вы сможете заказать в наших цветочных салонах.
					</p>
                </div>
            </div>
            <div id="rightBottomElement">
                <div id="bottomInnerElementId3" class="bottomInnerElement">
                    <a href="WeddingDesign.aspx" title="Свадебное оформление">
                        <img src="Images/wedding_design_little_logo_1.jpg" alt="Свадебное оформление" title="Свадебное оформление"
                            class="little_logo_img" />
                    </a>
                    <h3>
                        Свадебное оформление</h3>
                    <p>
						Мы выполним замечательное <a href="WeddingDesign.aspx" title="Свадебное оформление">оформление Вашей свадьбы</a>. Цветочная композиция на стол молодоженов, цветочное 
						оформление арок в торжественном зале, оформление машины молодоженов и автомобилей всего свадебного кортежа,
						петличка жениха, бутоньерка невесте на руку и любые дополнительные свадебные цветочные аксессуары, сделанные нашими флористами, 
						станут прекрасным украшением Вашего торжества.
					</p>
					<p>
						Флористы с радостью воплотят практически любые Ваши цветочные фантазии и сделают Вашу свадьбу незабываемой. 
						Каждые выходные мы оформляем по несколько свадеб в Ростове-на-Дону.
						Количество молодоженов, доверивших нам оформление своего праздника постоянно растёт.
					</p>
					<p>
						Многие советуют нас своим друзьям, постоянные клиенты в наших салонах полуают скидку от 5% до 10%.
						Очень большие заказы рассматриваются в отдельном порядке.
					</p>
					<p>
						В Ростове-на-Дону мы являемся самой большой сетью цветочных салонов и цветочных студий.
						Наш опыт в свадебной флористике самый большой по сравнению с любым цветочным магазином.
					</p>
					<p>
                        При желании Ваш заказ курьеры доставят непременно к жениху с самого утра перед выкупом невесты, поздравительный
                        букет курьеры <a href="/" title="Доставка цветов Ростов">доставят</a> прямиком к ЗАГсу. Флористы приедут к месту проведения торжества и помогут украсить помещение, будет проводиться свадьба.
					</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>