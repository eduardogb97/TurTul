using Core.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using TurTul.Modelo;
using TurTul.Vista;

namespace TurTul.Presentador
{
    public class WPremios
    {
        ManagerBD bd;
        IPremios premio;
        ManagerBD objManagerBD;
        public WPremios(IPremios p)
        {
            this.premio = p;
        }

        public bool InsertarPremio(int op)
        {

                List<SqlParameter> lstParametros = new List<SqlParameter>();
                lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = op });
                lstParametros.Add(new SqlParameter("@Folio", SqlDbType.Int) { Value = premio.nuevoPremio.FkOferta });



                if (objManagerBD.UpdateData("spNegocios", lstParametros.ToArray()))
                {
                    return true;
                }

                return false;
            
        }
        public void Consultar(int opcion)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion});
            lstParametros.Add(new SqlParameter("@FkOferta", SqlDbType.Int) { Value = premio.nuevoPremio.FkOferta });
            lstParametros.Add(new SqlParameter("@FkUsuario", SqlDbType.VarChar,50) { Value = premio.nuevoPremio.FkUsuario });
            lstParametros.Add(new SqlParameter("@Caducidad", SqlDbType.Date) { Value = premio.nuevoPremio.Cadicidad });
            premio.setGrid= new ManagerBD().GetData("spPremios", lstParametros.ToArray());
        }
    }
}