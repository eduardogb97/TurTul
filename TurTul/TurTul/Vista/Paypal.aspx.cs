using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurTul.Vista
{
    public partial class Paypal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            if (Usuario.Text != "" && Contraseña.Text != "")
                Response.Redirect("Negocios.aspx");
        }
    }
}