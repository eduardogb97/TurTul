using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurTul.Vista
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (name.Text != "" && pwd.Text != "")
                Response.Redirect("Usuario.aspx");
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("../PayPal/sendpayment.aspx");
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            Session["totalShoppingAmt"] = 500;
            Session["orderID"] = string.Format("{0:d7}", (DateTime.Now.Ticks / 10) % 10000000);
            Response.Redirect("../PayPal/sendpayment.aspx");
        }
    }
}