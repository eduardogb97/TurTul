using Core.Modelo;
using Core.Presentador;
using Core.Vista;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TurTul.Modelo;

namespace TurTul.Vista
{
    public partial class AdministracionNegocios : System.Web.UI.Page, IOrganizacion
    {

        public COrganizacion newOrganization { get { return Org(); } set => throw new NotImplementedException(); }
        public DataSet Llenar
        {
            get => throw new NotImplementedException();
            set
            {

            }
        }

        public COfertas[] oferta { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        string auxiliar = "";
        WOrganizacion organizacion;
        protected void Page_Load(object sender, EventArgs e)
        {           
            organizacion = new WOrganizacion(this);
        }
        protected COrganizacion Org()
        {
            COrganizacion o = new COrganizacion();
            //o.RFC = auxiliar;
            //o.Nombre = txtNombre.Text;
            //if (IsNumber(txtOferta.Text))
            //    o.Oferta = int.Parse(txtOferta.Text);
            //o.TipoOrganizacion = drpTipo.SelectedItem.Text;
            //o.Ubicacion = txtUbicacion.Text;
            //o.QR = txtQr.Text;
            o.EdoPago = 1;
            o.Contraseña = txtContraseña.Text;
            return o;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            auxiliar = txtBuscar.Text;
            
            gvNegocios.DataSource= organizacion.Consulta(4);
            gvNegocios.DataBind();
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
        protected void EstablecerDatos()
        {
            txtRfc.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[0].Text.ToString();
            txtNombre.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[1].Text.ToString();
            txtUbicacion.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[3].Text.ToString();
            txtQr.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[4].Text.ToString();
            txtOferta.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[5].Text.ToString();
            txtContraseña.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[6].Text.ToString();
            drpTipo.SelectedItem.Text= gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[2].Text.ToString();
        }
        protected void gvNegocios_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    e.Row.Attributes.Add("onMouseOver", "this.style.cursor = 'pointer'");
                    e.Row.Attributes.Add("onclick", Page.ClientScript.GetPostBackEventReference(gvNegocios, "select$" + e.Row.RowIndex.ToString()));
                }
            }
            catch (Exception)
            {
            }
        }

        protected void gvNegocios_SelectedIndexChanged(object sender, EventArgs e)
        {
            EstablecerDatos();
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            auxiliar = txtRfc.Text;
            organizacion.UpdateOrganizacion(2);
        }
    }
}