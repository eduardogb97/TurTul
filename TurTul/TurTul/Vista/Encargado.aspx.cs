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
    public partial class Encargado : System.Web.UI.Page, IPremios
    {
        public CPremios nuevoPremio { get {
                return new CPremios()
                {
                    FkUsuario = "",
                    IdPremio = Auxiliar
                };
            } set { } }
        public DataSet setGrid
        {
            get { return null; }
            set
            {
                if (value != null)
                {
                    gvRecompensas.DataSource = value; gvRecompensas.DataBind();
                }
            }
        }
        public int Auxiliar { get; set; }
        WPremios present;
        protected void Page_Load(object sender, EventArgs e)
        {
            Auxiliar = 0;
            present = new WPremios(this);
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            present.Consultar(1);
        }

        protected void gvRecompensas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Auxiliar = int.Parse(gvRecompensas.Rows[e.RowIndex].Cells[1].Text);
            present.Eliminar(2);
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}