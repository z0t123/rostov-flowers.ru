<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contacts.aspx.cs" Inherits="Contacts" Title="Контакты" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">       
    <table cellpadding="5px" cellspacing="5px" border="0">
    <tr><td colspan="4"  class="pageName"><h1 style="color:Green; font-size:110%; margin-bottom:5px;">Контакты:</h1> Ждём вас по адресам в Ростове-на-Дону:</td></tr>
    <tr><td align="left" class="textsite">
        <span style="font-size: 14pt; color: darkgreen;">1.</span></td><td align="center" valign="middle"><img alt="ул.Шеболдаева 15 (напротив РИИЖТА)" src="Images/mapRIIJT2.jpg" width="300px" height="300px" border="0" /></td><td class="textsite" align="center" valign="middle">
        <span style="font-size: 14pt; color: darkgreen; white-space:nowrap;">ул.Шеболдаева 15 <br /> (напротив РИИЖТа)</span></td><td class="textsite">
        <span style="font-size: 14pt; color: darkgreen;">тел. 230-25-24</span></td></tr>
    <tr><td align="left" class="textsite">
        <span style="font-size: 14pt; color: darkgreen;">2.</span></td><td align="center" valign="middle"><img alt="пр-т Ворошиловский 105 (остановка ЦГБ) павильон № 16,17,18" src="Images/mapCGB2.jpg" width="300px" height="300px" border="0" /></td><td class="textsite" style="width: 180px" align="center" valign="middle">
        <span style="font-size: 14pt; color: darkgreen; white-space:nowrap;">пр-т Ворошиловский 105<br /> (остановка ЦГБ)<br /> павильон № 16,17,18,19</span></td><td class="textsite">
        <span style="font-size: 14pt; color: darkgreen;">тел. 296-99-61</span></td></tr>
        
        <tr><td colspan="4"><span style="font-size: 14pt; color: darkgreen;">На карте Yandex:</span></td></tr>
        <tr>
        <td></td>
        <td colspan="3"">
        
<!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту  (начало) -->
<script src="http://api-maps.yandex.ru/1.1/?key=APgggEsBAAAAnpb8NwIAl8ReNzrn_C85q2QEow4ubWQaICcAAAAAAAAAAAARIQAEohMk4bs5Q-akEcn61lc-Wg==&wizard=constructor" type="text/javascript"></script>
<script type="text/javascript">
    YMaps.jQuery(function () {
        var map = new YMaps.Map(YMaps.jQuery("#YMapsID-5046")[0]);
        map.setCenter(new YMaps.GeoPoint(39.681039,47.237263), 12, YMaps.MapType.MAP);
        map.addControl(new YMaps.Zoom());
        map.addControl(new YMaps.ToolBar());
        map.addControl(new YMaps.TypeControl());

        YMaps.Styles.add("constructor#pmlbmPlacemark", {
            iconStyle : {
                href : "http://api-maps.yandex.ru/i/0.3/placemarks/pmlbm.png",
                size : new YMaps.Point(28,29),
                offset: new YMaps.Point(-8,-27)
            }
        });

       map.addOverlay(createObject("Placemark", new YMaps.GeoPoint(39.718418,47.221975), "constructor#pmlbmPlacemark", "Торговое место в ТЦ АПЕКС"));
       map.addOverlay(createObject("Placemark", new YMaps.GeoPoint(39.713311,47.234063), "constructor#pmlbmPlacemark", "Цветочные павильоны 16-19 ЦГБ"));
       map.addOverlay(createObject("Placemark", new YMaps.GeoPoint(39.708354,47.23551), "constructor#pmlbmPlacemark", "Цветочный салон на Текучёва 141а"));
       map.addOverlay(createObject("Placemark", new YMaps.GeoPoint(39.696874,47.249129), "constructor#pmlbmPlacemark", "Цветочный салон на Шеболдаева 15 (РИИЖТ)"));
       map.addOverlay(createObject("Placemark", new YMaps.GeoPoint(39.618425,47.231476), "constructor#pmlbmPlacemark", "Цветочные павильоны на Ерёменко 62 (ТЦ Восход)"));
        
        function createObject (type, point, style, description) {
            var allowObjects = ["Placemark", "Polyline", "Polygon"],
                index = YMaps.jQuery.inArray( type, allowObjects),
                constructor = allowObjects[(index == -1) ? 0 : index];
                description = description || "";
            
            var object = new YMaps[constructor](point, {style: style, hasBalloon : !!description});
            object.description = description;
            
            return object;
        }
    });
</script>

<div id="YMapsID-5046" style="width:450px;height:350px"></div>
<!-- Этот блок кода нужно вставить в ту часть страницы, где вы хотите разместить карту (конец) -->        </td></tr>
    </table>
    
    <p align="center" class="textsite" style="text-align: justify">
    <br />
        <span style="color: darkgreen">
        Администратор:&nbsp;&nbsp;&nbsp;&nbsp; Наталия&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        тел. 296-99-61 </span>
    </p>
    <p align="center" class="textsite" style="text-align: justify">
        <span style="color: darkgreen">
        Директор:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Вячеслав Алексеевич&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
        тел. 296-10-61 </span>
    </p>
    <p align="center" class="textsite" style="text-align: justify">
        <span style="color: darkgreen">
        Оптовый отдел:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; тел. 296-99-61</span></p>
    <p align="center" class="textsite" style="text-align: justify">
        <span style="color: darkgreen">
        Наш сайт:&nbsp; </span><a href="http://www.rostov-flowers.ru/">www.rostov-flowers.ru/</a>
    </p>
    <p align="center" class="textsite" style="text-align: justify">
        <span style="color: darkgreen">
        E-mail:&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span><a href="mailto:rostov-flowers@mail.ru">rostov-flowers@mail.ru</a>
        <br />
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <a href="mailto:socvetie@list.ru">socvetie@list.ru</a>
    </p>
    <p align="center" class="greentextsite" style="text-align: justify">
		<strong>Как оплатить заказ можно узнать в разделе <a href="PayMethods.aspx" title="Способы оплаты">"Способы оплаты"</a>.</strong>
	</p>
</asp:Content>

