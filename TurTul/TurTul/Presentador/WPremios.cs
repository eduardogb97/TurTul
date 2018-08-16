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
            lstParametros.Add(new SqlParameter("@FkUsuario", SqlDbType.Int) { Value = premio.nuevoPremio.FkUsuario });
            premio.setGrid= new ManagerBD().GetData("spPremios", lstParametros.ToArray());
        }
        public void Eliminar(int opcion)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@IdPremio", SqlDbType.Int) { Value = premio.nuevoPremio.IdPremio });           
            if (new ManagerBD().UpdateData("spPremios", lstParametros.ToArray()))
            {
                MessageBox.Show("Realizado");
            }
        }
    }
}