using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Core.Modelo;
using Core.Vista;
using Core.Presentador;
using System.Data;

namespace TurTul
{
    public partial class Lugares : System.Web.UI.Page, ILugares
    {
        WLugares vistaLugares;
        public GridViewRow FilaSeleccionada
        {
            get;
            private set;
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            vistaLugares = new WLugares(this);
            vistaLugares.Listar(1);
        }
        public DataSet DatosLugares
        {
            get
            {
                return null;
            }

            set
            {
                if (value != null)
                {
                    GridViewLugares.DataSource = value;
                    GridViewLugares.DataBind();

                }
            }
        }

        public CLugares objLugares
        {
            get
            {
                CLugares obj = new CLugares();
                try
                {
                    obj.Nombre = txtNombre.Text;
                    obj.Historia = txtHistoria.Text;
                    obj.Ubicacion = txtUbicacion.Text;
                    obj.Latitud = txtLat.Text;
                    obj.Longitud = txtLong.Text;

                }
                catch (Exception)
                {

                    obj = null;
                }
                return obj;
            }

            set
            {
                throw new NotImplementedException();
            }
        }
        protected void Guardar_Click(object sender, EventArgs e)
        {
            vistaLugares.AltaLugar(objLugares, 2);
            Response.Redirect(Request.RawUrl);
        }
       

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}