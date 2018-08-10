using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TurTul.Modelo;
using TurTul.Presentador;

namespace TurTul.Vista
{
    public partial class Encargado : System.Web.UI.Page, IPremios
    {
        public CPremios nuevoPremio { get {
                return new CPremios()
                {
                    FkUsuario = "1530395"
                };
            } set => throw new NotImplementedException(); }
        public DataSet setGrid
        {
            get => throw new NotImplementedException();
            set
            {
                if (value != null)
                {
                    gvRecompensas.DataSource = value; gvRecompensas.DataBind();
                }
            }
        }
        WPremios present;
        protected void Page_Load(object sender, EventArgs e)
        {
            present = new WPremios(this);
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            present.Consultar(1);
        }
    }
}