using Core.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using TurTul.Modelo;
using TurTul.Vista;

namespace TurTul.Presentador
{
    public class WOfertas
    {
        IOfertas of;
        ManagerBD objManagerBD;

        public WOfertas(IOfertas oferta)
        {
            objManagerBD = new ManagerBD();
            this.of = oferta;
        }
        public string Tipo(int opcion)
        {
            string val = "";
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@FkNegocio", SqlDbType.VarChar, 50) { Value = of.newOferta.FkNegocio });

            DataTable dt = new DataTable();
            dt= new ManagerBD().GetData("spOfertas", lstParametros.ToArray()).Tables[0];
          
           return val = dt.Rows[0][2].ToString();
        }
        public void RegistrarOfertas(int opcion)
        {
                List<SqlParameter> lstParametros = new List<SqlParameter>();
                lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
                lstParametros.Add(new SqlParameter("@FkNegocio", SqlDbType.Int) { Value = of.newOferta.FkNegocio });
                lstParametros.Add(new SqlParameter("@Producto", SqlDbType.VarChar,50) { Value = of.newOferta.Producto });
                lstParametros.Add(new SqlParameter("@Porcentaje", SqlDbType.Int) { Value = of.newOferta.Porcentaje });
                objManagerBD.UpdateData("spOfertas", lstParametros.ToArray());
        }
    }
}