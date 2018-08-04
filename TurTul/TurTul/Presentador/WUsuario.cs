using Core.Modelo;
using Core.Vista;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Core.Presentador
{
    class WUsuario
    {
        IUsuario us;
        ManagerBD objManagerBD;
        public WUsuario(IUsuario _usuario)
        {
            this.us = _usuario;
            objManagerBD = new ManagerBD();
        }
        public bool RegistroUsuarios(int opcion)
        {
            //MessageBox.Show(us.Usuario.Nombre);
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@IdUsuario", SqlDbType.VarChar, 50) { Value = us.Usuario.IdUsuario });
            lstParametros.Add(new SqlParameter("@Nombre", SqlDbType.VarChar, 50) { Value = us.Usuario.Nombre });
            lstParametros.Add(new SqlParameter("@Apellidos", SqlDbType.VarChar, 50) { Value = us.Usuario.Apellidos });
            lstParametros.Add(new SqlParameter("@Contraseña", SqlDbType.VarChar, 10) { Value = us.Usuario.Contraseña });
            lstParametros.Add(new SqlParameter("@Fk_Lugar", SqlDbType.VarChar, 50) { Value = "1" });
           

            if (objManagerBD.UpdateData("Usuarios", lstParametros.ToArray()))
            {
                return true;
            }

            return false;
        }
    }
}
