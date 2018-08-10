using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace camara
{
    public partial class camara : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        public void Separar()
        {
            string cadena = txtResultado.Text;

            string[] separadas;

            separadas = cadena.Split('/');
            lblNombre.Text = separadas[0];
            
            lblUbicacion.Text = separadas[1];
            lblTipo.Text = separadas[2];


        }


        protected void modificar_Click(object sender, EventArgs e)
        {
            Separar();
            panelMostrar.Visible = true;
        }
    }
}