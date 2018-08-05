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
        public string Nombre { get; set; }
        public string Historia { get; set; }
        public string Ubicacion { get; set; }
        public string Latitud { get; set; }
        public string Longitud { get; set; }
        ManagerBD objManagerBD;
        public CLugares()
        {
            objManagerBD = new ManagerBD();
        }
        public bool insertAlumno(int opcion, CLugares objLugar)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@Nombre", SqlDbType.VarChar,50) { Value = objLugar.Nombre });
            lstParametros.Add(new SqlParameter("@Historia", SqlDbType.VarChar,1000) { Value = objLugar.Historia });
            lstParametros.Add(new SqlParameter("@Ubicacion", SqlDbType.VarChar,80) { Value = objLugar.Ubicacion });
            lstParametros.Add(new SqlParameter("@Latitud", SqlDbType.VarChar, 500) { Value = objLugar.Latitud });
            lstParametros.Add(new SqlParameter("@Longitud", SqlDbType.VarChar, 500) { Value = objLugar.Longitud });
            //falta
            objManagerBD = new ManagerBD();
            if (objManagerBD.UpdateData("spLugares", lstParametros.ToArray()))
            {
                return true;
            }

            return false;
        }
        public bool listarLugares(int opcion, ref DataSet objDatos)
        {
            bool ExisteDatos = false;
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            objDatos = objManagerBD.GetData("spLugares", lstParametros.ToArray());
            if (objDatos.Tables.Count > 0)
            {
                ExisteDatos = true;
            }
            return ExisteDatos;
        }
        public bool EliminarLugar(int opcion, int IdLugar)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@Id_Lugar", SqlDbType.Int) { Value = IdLugar });
            objManagerBD = new ManagerBD();
            if (objManagerBD.UpdateData("spLugares", lstParametros.ToArray()))
            {
                return true;
            }


            return false;
        }
    }
}
