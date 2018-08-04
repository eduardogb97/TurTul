using Core.Modelo;
using Core.Presentador;
using Core.Vista;
using QRCoder;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TurTul.Vista
{
    public partial class Organizaciones : System.Web.UI.Page, IOrganizacion
    {
        public COrganizacion newOrganization { get {

                return Organizacion();
            } set => throw new NotImplementedException(); }

        public DataSet Llenar { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        WOrganizacion organizacion;
        protected void Page_Load(object sender, EventArgs e)
        {
            organizacion = new WOrganizacion(this);
        }
        protected COrganizacion Organizacion()
        {
            COrganizacion o = new COrganizacion();
            o.RFC = txtRfc.Text;
            o.Contraseña = txtContraseña.Text;
            o.Nombre = txtNombre.Text;
            o.TipoOrganizacion = drpTipo.SelectedItem.Text;
            o.Ubicacion = txtUbicacion.Text;
            o.QR = txtQr.Text;
            o.EdoPago = 1;
            if(IsNumber(txtOferta.Text))
            o.Oferta = int.Parse(txtOferta.Text);
            return o;
        }
        private bool IsNumber(string n)
        {
           
            try
            {
                int X = int.Parse(n);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
            
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            organizacion.RegistroOrganizacion(1);
            GenerarQR();
            Limpiar();
        }
        private void Limpiar()
        {
            txtRfc.Text =txtContraseña.Text=txtNombre.Text=txtUbicacion.Text=txtQr.Text=txtOferta.Text= "";
        }
        private void GenerarQR()
        {
            string rfc = txtRfc.Text;
            string nombre = txtNombre.Text;
            string tipo = drpTipo.SelectedItem.Text;
            string ubicacion = txtUbicacion.Text;
            string oferta = txtOferta.Text;
            string code = rfc + "/" + nombre + "/" + tipo + "/" + ubicacion + "/" + oferta;
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
            System.Web.UI.WebControls.Image imgQRCode = new System.Web.UI.WebControls.Image();
            imgQRCode.Height = 150;
            imgQRCode.Width = 150;
            using (Bitmap bitmap = qrCode.GetGraphic(20))
            {
                using (MemoryStream ms = new MemoryStream())
                {
                    bitmap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    byte[] byteImage = ms.ToArray();
                    imgQRCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);

                }
                PHQRCode.Controls.Add(imgQRCode);
            }
        }
    }
}