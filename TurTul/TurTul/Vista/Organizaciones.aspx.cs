using Core.Modelo;
using Core.Presentador;
using Core.Vista;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurTul.Vista
{
    public partial class Organizaciones : System.Web.UI.Page, IOrganizacion
    {
        public COrganizacion newOrganization { get {

                return Organizacion();
            } set => throw new NotImplementedException(); }
        WOrganizacion organizacion;
        protected void Page_Load(object sender, EventArgs e)
        {
            organizacion = new WOrganizacion(this);
        }
        protected COrganizacion Organizacion()
        {
            COrganizacion o = new COrganizacion();
            o.RFC = txtRfc.Text;
            o.Contraseña = txtContraseña.Text;
            o.Nombre = txtNombre.Text;
            o.TipoOrganizacion = drpTipo.SelectedItem.Text;
            o.Ubicacion = txtUbicacion.Text;
            o.QR = txtQr.Text;
            o.EdoPago = 1;
            if(IsNumber(txtOferta.Text))
            o.Oferta = int.Parse(txtOferta.Text);
            return o;
        }
        private bool IsNumber(string n)
        {
           
            try
            {
                int X = int.Parse(n);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
            
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            organizacion.RegistroOrganizacion(1);
        }
    }
}