<%@ Page Title="Оплата пластиковой картой" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CardPayment.aspx.cs" Inherits="CardPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="textBlock">
        <p>
            <strong>Перед оплатой Вам необходимо обязательно оговорить заказ вместе 
                <br />
                с нашим менеджером по телефону 8-863-296-99-61 или 8-901-496-99-61.
                <br />
                Укажите оговоренную стоимость и описание заказа
				
			<center> <br /> <h1>ВНИМАНИЕ! <br />Цену и уловия доставки уточняйте по телефону  8(863)296-99-61
</h1></center>
            </strong>
        </p>
        <p>
            <table border="0" cellpadding="5" cellspacing="0">
                <tr>
                    <td class="greentextsite">Стоимость заказа:
                    </td>
				
                    <td class="greentextsite">
				
       <asp:TextBox ID="vpc_Amount_TextBox" text="0" runat="server" MaxLength="10"></asp:TextBox>
                        &nbsp; рублей

<asp:RequiredFieldValidator runat="server" ID="ValidateName" ControlToValidate="vpc_Amount_TextBox" 
         Display="dynamic">*Поле Стоимость обязательно для заполнения!
</asp:RequiredFieldValidator>


                    </td>
                </tr>
                <tr>
                    <td class="greentextsite">Вам необходимо указать:
                        
                    </td>
                    <td class="greentextsite">
                        <asp:TextBox ID="txtOrderDescription_TextBox" Text="(1) дату и время доставки:
(2) адрес доставки:
(3) описание заказа:(что вы заказываете)
(4) Имя получателя:
(5) Тел. получателя:
(6) Имя заказчика:
(7) Телефон заказчика:
(8) Обсуждали ли вы заказ по телефону?
(9) Говорить от кого цветы?" runat="server" TextMode="MultiLine" Rows="15" Width="570px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="greentextsite" colspan="2" align="right">
                        <asp:Button ID="MakePaymentButton" runat="server" Text="Оплатить" OnClick="MakePaymentButton_Click" />
                    </td>
                </tr>
            </table>
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" runat="Server">
</asp:Content>
