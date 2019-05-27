<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bukets.aspx.cs" Inherits="Bukets" Title="Доставка букетов в Ростове-на-Дону. Соцветие." %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
<script type="text/javascript">
    $(function () {
        $('.gallery_modal').lightBox();
    });
</script></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:Green; font-size:110%; margin-bottom:5px;">Купить букет в Ростове-на-Дону:</h1>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" EnableViewState="False" RepeatColumns="5" RepeatDirection="Horizontal" ShowHeader="False">
    <ItemTemplate>
        <table cellspacing="0" cellpadding="0" border="2" style="border-color:#FFE1FF;">
            <tr><td align="center">
                <asp:Label ID="LabelItemNumber" runat="server" CssClass="textsite" Text='<%# Eval("number") %>'></asp:Label>
            </td></tr>
            <tr>
            <td valign="top" align="center">
                <a href='<%# Utils.GetFullImageUrl("Bukets", Eval("ItemID").ToString())%>' class="gallery_modal" title="Букет № <%# Eval("number") %>. Цена - <%# Eval("Cost") %> руб."><asp:Image CssClass="ImageBukets" AlternateText="Букет" ToolTip="Букет" ImageUrl='<%# Utils.GetSmallImageUrl("Bukets", Eval("ItemID").ToString()) %>' runat="server" /></a>
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
        ProviderName="<%$ ConnectionStrings:SocvetieSqlServer.ProviderName %>" SelectCommand="SELECT * FROM [Bukets] ORDER BY [number]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" runat="Server">
    <div class="bottomElements">
        <div class="bottomInnerElements">
            <div id="leftleftBottomElement">
                <div id="bottomInnerElementId1" class="bottomInnerElement">
                    <img src="Images/delivery_little_logo_1.jpg" alt="Доставка цветов" title="Доставка цветов"
                        class="little_logo_img" />
                    <h3>
                        Доставка цветов</h3>
                    <p>
                        Сделать свой заказ и купить цветы в Ростове на Дону весьма просто, независимо от
                        того, чтобы вы хотели бы приобрести - корзину цветов, подарок, памятную открытку,
                        свадебный букет, мягкую игрушку, комнатный цветок, возможно сердце из роз или веточку
                        орхидеи - всё это мы с радостью доставим по нужному адресу!</p>
                    <p>
                        Мы выполним качественно и в срок абсолютно любое Ваше пожелание. Наши курьеры работаю
                        круглосуточно и Ваш букет, подарок, открытка, коробочка конфет Рафаэлло,
                        торт или бутылочка вина точно и в срок окажутся у получателя.</p>
                    <p>
                        Делая заказ цветов у нас на сайте вы всегда получаете быстрое, качественное и своевременное
                        выполнение заказа в любое, удобное и предпочитаемое для Вас, время, будь то ресторан или офис,
                        частный дом или квартира, Ваши деловые партнеры или коллеги по офису, родственники или друзья.</p>
                    <p>
                        У нас возможно заказать букет роз, свадебный букет невесты и любой сопуствующий
                        сувенир. Курьерская служба у нас налажена замечательно, 
						так что подарок вовремя найдёт своего получателя.
					</p>
                    <p>
                        <a href="/" title="Доставка цветов">Доставка цветов</a> и подарков в государственные учереждения, в авиа и ж\д вокзалы,
                        род домы, любые кафе, бары и ночные клубы Ростова-на-Дону и Ростовской области.</p>
                    <p>
                        Ваш заказ всегда примут по телефону: <strong>296-99-61</strong>.</p>
                </div>
            </div>
            <div id="centerBottomElement">
                <div id="bottomInnerElementId2" class="bottomInnerElement">
                    <a href="WeddingBukets.aspx" title="Свадебный букет">
                        <img src="Images/wedding_little_logo_1.jpg" alt="Свадебный букет" title="Свадебный букет"
                            class="little_logo_img" />
                    </a>
                    <h3>
                        Свадебный букет невесты</h3>
                    <p>
                        Наши флористы обладают большим опытом в свадебной флористике. Каждые выходные мы
                        оформляем по несколько замечательных и красочных свадеб в Ростове-на-Дону.</p>
                    <p>
                        Очень большое число молодоженов выбрали свадебный букет невесты и всё цветочное
                        оформление всего торжества в наших салонах.</p>
                    <p>
                        Выбор <a href="WeddingBukets.aspx" title="Свадебный букет">свадебного букета</a>
                        - это очень ответственное событие для каждой невесты. Для этого лучше заранее приехать
                        в один из наших цветочных салонов, просмотреть каталоги букетов и посоветоваться
                        с флористами. Очень часто цветовую гамму будущего свадебного букета выбирают в зависимости
                        от оттенков свадебного платья.</p>
                    <p>
                        Так же вначале можно примерно определиться с формой и дизайном букета невесты посмотрев
                        каталог на нашем сайте.</p>
                    <p>
                        Цветочные композиции на стол молодоженов, различные цветочные композиции, которые
                        можно расставить на торжестве в произвольном порядке, букетики на зеркала машин,
                        красивая цветочная композиция на капот машины, петличка для жениха - всё это Вы
                        сможете заказать в наших цветочных магазинах.</p>
                    <p>
                        При желании любой заказ мы доставим непременно к жениху с самого утра или поздравительный
                        букет прямиком в ЗАГс. Расставим композиции в зале, где будет проводиться торжество.</p>
                </div>
            </div>
            <div id="rightBottomElement">
                <div id="bottomInnerElementId3" class="bottomInnerElement">
                    <a href="PlantsCatalog.aspx" title="Комнатные растения">
                        <img src="Images/plants_little_logo_1.jpg" alt="Комнатные растения" title="Комнатные растения"
                            class="little_logo_img" />
                    </a>
                    <h3>
                        Комнатные растения</h3>
                    <p>
                        В наших цветочных магазинах всегда представлен большой ассортимент комнатных растений.
                        Большое количество экзотических комнатных цветов.</p>
                    <p>
                        Мы работаем с мировыми цветочными биржами, при желании Вы всегда можете оставить
                        заказ именно на то растение, которое Вам хотелось бы увидеть у себя дома.</p>
                    <p>
                        В ассортименте представлены красивоцветущих растениях: азалии, гардении, хризантемы,
                        гибискусы (китайские розы), пеларгонии, жасмины и многие другие.</p>
                    <p>
                        Так же всегда в продаже имеются декоративно-лиственные растения - комнатные цветы
                        с красивыми листьями: кротоны, плющи, монстеры, цикасы, аспарагусы и другие.</p>
                    <p>
                        В наших салонах имеется разнообразный выбор грунта, удобрений, питающих прикормок,
                        лекарств и сопутствующих материалов для комнатных цветов. Всегда в продаже разнообразные
                        керамические и пластиковые горшки и кашпо.</p>
                    <p>
                        Специалисты проконсультируют Вас как правильно ухаживать за растением, как его пересаживать,
                        как поливать, где лучше всего расположить его в доме, дадут все необходимые советы.</p>
                    <p>
                        Комнатное растение непременно окажется у Вас дома, потому как 
						<a href="/" title="Доставка цветов Ростов-на-Дону">доставка цветов Ростов-на-Дону</a>
						- это одно из основных наших направлений деятельности в городе и области.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>