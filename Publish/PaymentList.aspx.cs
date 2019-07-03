using System;

public partial class PaymentList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetSuccessImage(string boolIsPaymentSucceed)
    {
        string result;

        if (boolIsPaymentSucceed.Equals("1"))
        {
            result = "<img src='Images/paymentSucceed.jpg' alt='Платеж оплачен' title='Платеж оплачен'/>";
        }
        else
        {
            result = "<img src='Images/paymentNotSucceed.jpg' alt='Платеж не оплачен' title='Платеж не оплачен'/>";
        }

        return result;
    }
}