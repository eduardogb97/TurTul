using Core.Modelo;
using Core.Vista;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Presentador
{
    class WOrganizacion
    {
        IOrganizacion org;
        ManagerBD objManagerBD;
        public WOrganizacion(IOrganizacion _organizacion)
        {
            this.org = _organizacion;
            objManagerBD = new ManagerBD();
        }
        public bool RegistroOrganizacion(int opcion)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@Rfc", SqlDbType.VarChar, 13) { Value = org.newOrganization.RFC });
            lstParametros.Add(new SqlParameter("@Nombre", SqlDbType.VarChar, 50) { Value = org.newOrganization.Nombre });
            lstParametros.Add(new SqlParameter("@TipoOrganizacion", SqlDbType.VarChar, 20) { Value = org.newOrganization.TipoOrganizacion });
            lstParametros.Add(new SqlParameter("@Ubicacion", SqlDbType.VarChar, 70) { Value = org.newOrganization.Ubicacion });
            lstParametros.Add(new SqlParameter("@Qr", SqlDbType.VarChar, 50) { Value = org.newOrganization.QR });
            lstParametros.Add(new SqlParameter("@Oferta", SqlDbType.Int) { Value = org.newOrganization.Oferta});
            lstParametros.Add(new SqlParameter("@EdoPago", SqlDbType.Bit) { Value = org.newOrganization.EdoPago });
            lstParametros.Add(new SqlParameter("@Contraseña", SqlDbType.VarChar, 20) { Value = org.newOrganization.Contraseña });
            //falta

            if (objManagerBD.UpdateData("Organizacion", lstParametros.ToArray()))
            {
                return true;
            }

            return false;
        }
    }
}
