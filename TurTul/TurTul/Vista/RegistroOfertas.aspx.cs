using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using TurTul.Modelo;
using TurTul.Presentador;

namespace TurTul.Vista
{
    public partial class RegistroOfertas : System.Web.UI.Page,IOfertas
    {
        public string producto { get; set; }
        public COfertas newOferta { get
            {
                return of();
            } set => throw new NotImplementedException(); }

        WOfertas ofertas;
        protected void Page_Load(object sender, EventArgs e)
        {
            ofertas = new WOfertas(this);
            Consulta();
        }
        public COfertas of()
        {
            COfertas o = new COfertas();
            o.FkNegocio = int.Parse(Session["Id"].ToString());
            o.Producto =producto;
            if(IsNumber(txtDescuento.Text))
            o.Porcentaje = int.Parse(txtDescuento.Text);
            return o;
        }
        public bool IsNumber(string x)
        {
            int b = 0;
            try
            {
                b = int.Parse(x);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        private void Consulta()
        {
            
            lblTipo.Text = ofertas.Tipo(2);
            if (lblTipo.Text=="Hotel")
            {
                drpOpcciones.Items.Clear();
                drpOpcciones.Items.Add("Seleccione");
                drpOpcciones.Items.Add("Recamara Nomrmal");
                drpOpcciones.Items.Add("Recamara doble");
                drpOpcciones.Items.Add("Recamara Nomrmal");
            }
            else if(lblTipo.Text == "Restaurantes")
            {
                drpOpcciones.Items.Clear();
                drpOpcciones.Items.Add("Seleccione");
                drpOpcciones.Items.Add("Comidas");
                drpOpcciones.Items.Add("Bebidas");
                drpOpcciones.Items.Add("Postres");
            }     
            else if (lblTipo.Text == "Cafeteria")
            {
                drpOpcciones.Items.Clear();
                drpOpcciones.Items.Add("Seleccione");
                drpOpcciones.Items.Add("Cafe");
                drpOpcciones.Items.Add("Refresco");
                drpOpcciones.Items.Add("Postres");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            producto = drpOpcciones.SelectedItem.Text;
            ofertas.RegistrarOfertas(1);
        }
    }
}