using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Core.Modelo;
using Core.Vista;
using Core.Presentador;
using System.Data.SqlClient;
using System.Data;

namespace Core.Modelo
{
 public   class CLugares
    {
        public int Id_Lugar { get; set; }
        public string Historia { get; set; }
        public string Ubicacion { get; set; }
        ManagerBD objManagerBD;
        public CLugares()
        {
            objManagerBD = new ManagerBD();
        }
        public bool insertAlumno(int opcion, CLugares objLugar)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@Historia", SqlDbType.VarChar) { Value = objLugar.Historia });
            lstParametros.Add(new SqlParameter("@Ubicacion", SqlDbType.VarChar) { Value = objLugar.Ubicacion });
            //falta
            objManagerBD = new ManagerBD();
            if (objManagerBD.UpdateData("PAlumno", lstParametros.ToArray()))
            {
                return true;
            }

            return false;
        }
    }
}
