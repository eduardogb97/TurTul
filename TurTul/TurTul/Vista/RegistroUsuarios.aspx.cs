using Core.Modelo;
using Core.Presentador;
using Core.Vista;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurTul.Vista
{
    public partial class RegistroUsuarios : System.Web.UI.Page, IUsuario
    {
        public CUsuarios Usuario { get { return Nuevo(); } set => throw new NotImplementedException(); }

        public DataSet Tabla { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        WUsuario usuarios;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuarios = new WUsuario(this);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            usuarios.RegistroUsuarios(1);
        }
        public CUsuarios Nuevo()
        {
            CUsuarios us = new CUsuarios();
            us.Nombre = txtNombre.Text;
            us.Apellidos = txtApellidos.Text;
            us.IdUsuario = txtIdUsuario.Text;
            us.Contraseña = txtContraseña.Text;

            return us;
        }
    }
}