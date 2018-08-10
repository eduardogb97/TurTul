using Core.Modelo;
using Core.Vista;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using TurTul.Modelo;

namespace Core.Presentador
{
    class WOrganizacion
    {
        public DataTable Ofertas { get; set; }
        IOrganizacion org;
        ManagerBD objManagerBD;
        public WOrganizacion(IOrganizacion _organizacion)
        {
            this.org = _organizacion;
            objManagerBD = new ManagerBD();
        }

       public DataSet Consulta(int opccion)
        {
            //DataSet set;
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opccion });
            lstParametros.Add(new SqlParameter("@Folio", SqlDbType.VarChar,13) { Value = org.newOrganization.Folio });
            DataSet set=new ManagerBD().GetData("spNegocios", lstParametros.ToArray());
            return set;
        }
        public bool RegistroOrganizacion(int opcion)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@Folio", SqlDbType.Int) { Value = org.newOrganization.Folio });
            lstParametros.Add(new SqlParameter("@NombreNegocio", SqlDbType.VarChar, 50) { Value = org.newOrganization.NombreNegocio });
            lstParametros.Add(new SqlParameter("@TipoOrganizacion", SqlDbType.VarChar, 30) { Value = org.newOrganization.TipoOrganizacion });
            lstParametros.Add(new SqlParameter("@Ubicacion", SqlDbType.VarChar, 70) { Value = org.newOrganization.Ubicacion });
            lstParametros.Add(new SqlParameter("@EdoPago", SqlDbType.Bit) { Value = org.newOrganization.EdoPago });
            lstParametros.Add(new SqlParameter("@Contraseña", SqlDbType.VarChar,10) { Value = org.newOrganization.Contraseña });
            lstParametros.Add(new SqlParameter("@Longitud", SqlDbType.VarChar,30) { Value = org.newOrganization.Longitud });
            lstParametros.Add(new SqlParameter("@Latitud", SqlDbType.VarChar, 30) { Value = org.newOrganization.Latitud });
            lstParametros.Add(new SqlParameter("@Dueño", SqlDbType.VarChar, 70) { Value = org.newOrganization.Dueño });
            lstParametros.Add(new SqlParameter("@Contacto", SqlDbType.VarChar, 30) { Value = org.newOrganization.Contacto });
            lstParametros.Add(new SqlParameter("@Imagen", SqlDbType.VarChar, 100) { Value = org.newOrganization.Imagen });
            lstParametros.Add(new SqlParameter("@FechaPago", SqlDbType.Date) { Value = org.newOrganization.FechaPago });
            if (objManagerBD.UpdateData("spNegocios", lstParametros.ToArray()))
            {
                return true;
            }

            return false;
        }

        public bool UpdateOrganizacion(int opcion)
        {
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opcion });
            lstParametros.Add(new SqlParameter("@Folio", SqlDbType.VarChar, 13) { Value = org.newOrganization.Folio});
            lstParametros.Add(new SqlParameter("@NombreNegocio", SqlDbType.VarChar, 50) { Value = org.newOrganization.NombreNegocio });
            lstParametros.Add(new SqlParameter("@TipoOrganizacion", SqlDbType.VarChar, 20) { Value = org.newOrganization.TipoOrganizacion });
            lstParametros.Add(new SqlParameter("@Ubicacion", SqlDbType.VarChar, 70) { Value = org.newOrganization.Ubicacion });
            lstParametros.Add(new SqlParameter("@EdoPago", SqlDbType.VarChar, 50) { Value = org.newOrganization.EdoPago });
            lstParametros.Add(new SqlParameter("@Contraseña", SqlDbType.Int) { Value = org.newOrganization.Contraseña });
            lstParametros.Add(new SqlParameter("@Longitud", SqlDbType.Bit) { Value = org.newOrganization.EdoPago });
            lstParametros.Add(new SqlParameter("@Latitud", SqlDbType.VarChar, 10) { Value = org.newOrganization.Contraseña });
            lstParametros.Add(new SqlParameter("@Dueño", SqlDbType.VarChar, 10) { Value = org.newOrganization.Contraseña });
            lstParametros.Add(new SqlParameter("@Contacto", SqlDbType.VarChar, 10) { Value = org.newOrganization.Contraseña });
            lstParametros.Add(new SqlParameter("@Imagen", SqlDbType.VarChar, 10) { Value = org.newOrganization.Contraseña });
            lstParametros.Add(new SqlParameter("@FechaPago", SqlDbType.VarChar, 10) { Value = org.newOrganization.Contraseña });
            //falta

            if (objManagerBD.UpdateData("Organizacion", lstParametros.ToArray()))
            {
                return true;
            }

            return false;
        }
        public bool Existe(int opccion)
        {
            
            List<SqlParameter> lstParametros = new List<SqlParameter>();
            lstParametros.Add(new SqlParameter("@Op", SqlDbType.Int) { Value = opccion });
            lstParametros.Add(new SqlParameter("@Folio", SqlDbType.VarChar, 13) { Value = org.newOrganization.Folio });

            DataSet set = new ManagerBD().GetData("spNegocios", lstParametros.ToArray());
            DataTable dt = set.Tables[0];

            if (dt.Rows.Count>0)
            {
                return true;
            }
            return false;
        }
    }
}
