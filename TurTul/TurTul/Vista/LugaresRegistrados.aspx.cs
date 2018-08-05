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
    public partial class LugaresRegistrados : System.Web.UI.Page,ILugares
    {
        WLugares vistaLugares;



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
                    
                    Repeater1.DataSource = value;

                   Repeater1.DataBind();

                }
            }
        }

        public CLugares objLugares
        {
            get
            {
                throw new NotImplementedException();
            }

            set
            {
                throw new NotImplementedException();
            }
        }
    }
}