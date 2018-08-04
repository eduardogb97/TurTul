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

namespace TurTul.Vista
{
    public partial class AdministracionNegocios : System.Web.UI.Page, IOrganizacion
    {

        public COrganizacion newOrganization { get { return Org(); } set => throw new NotImplementedException(); }
        public DataSet Llenar { get { return null; } set { if (value != null) {gvNegocios.DataSource = value.Tables["Organizacion"]; gvNegocios.DataBind(); } } }
        WOrganizacion organizacion;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            organizacion = new WOrganizacion(this);
        }
        protected COrganizacion Org()
        {
            COrganizacion o = new COrganizacion();
            o.RFC = txtBuscar.Text;
            return o;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            organizacion.Consulta(3);
        }
        protected void EstablecerDatos()
        {
            txtRfc.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[0].Text.ToString();
            txtNombre.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[1].Text.ToString();
            txtUbicacion.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[3].Text.ToString();
            txtQr.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[4].Text.ToString();
            txtOferta.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[5].Text.ToString();
            txtContraseña.Text = gvNegocios.Rows[gvNegocios.SelectedRow.RowIndex].Cells[6].Text.ToString();
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
            organizacion.UpdateOrganizacion(2);
        }
    }
}