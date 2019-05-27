using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PayYandexMoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonPayWebMoney_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://money.yandex.ru/");
    }
}
