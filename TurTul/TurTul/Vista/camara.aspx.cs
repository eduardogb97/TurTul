using QRCoder;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace camara
{
    public partial class camara : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            GenerarQR();
        }

        public void Separar()
        {
            string cadena = txtResultado.Text;

            string[] separadas;

            separadas = cadena.Split('/');
            lblNombre.Text = separadas[0];
            lblHistoria.Text=separadas[1];
            lblUbicacion.Text=separadas[2];


        }


        protected void modificar_Click(object sender, EventArgs e)
        {
            Separar();
            lblNombre.Visible = true;
            lblHistoria.Visible = true;
            lblUbicacion.Visible = true;


        }

        protected void btnob_Click(object sender, EventArgs e)
        {
            lblNombre.Visible = false;
            lblHistoria.Visible = false;
            lblUbicacion.Visible = false;
            Response.Redirect("Index.aspx");
        }
        private void GenerarQR()
        {

            string code = Session["Usuario"].ToString() + "/" + Session["Contraseña"];
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

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}