<%@ Page Title="Оплата пластиковой картой" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CardPayment.aspx.cs" Inherits="CardPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="textBlock">
		<p>
			Укажите оговоренную стоимость и описание заказа
		</p>
		<p>
			<form action="CS_VPC_3Party_DO.aspx" method="post">
				<table border="0" cellpadding="5" cellspacing="0">
					<tr>
						<td class="greentextsite">
							Стоимость заказа:
						</td>
						<td class="greentextsite">
							<input type="text" name="vpc_Amount" value="" size="20" maxlength="10"/>
							&nbsp; рублей
						</td>
						</tr>
						<tr>
						<td class="greentextsite">
							Описание заказа:
						</td>
						<td class="greentextsite">
							<textarea name="txtOrderDescription" cols="35" rows="7" value=""></textarea>
						</td>
					</tr>
					<tr>
						<td class="greentextsite" colspan="2" align="right">
							<input type="submit" name="SubButL" value="Оплатить"/>
						</td>
					</tr>
				</table>
			</form>
		</p>
	</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBottomText" Runat="Server">
</asp:Content>

