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
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using TurTul.Modelo;

namespace TurTul.Vista
{
    public partial class Organizaciones : System.Web.UI.Page, IOrganizacion
    {

        public COrganizacion newOrganization { get {

                return Organizacion();
            } set { } }

        public DataSet Llenar { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }


        WOrganizacion organizacion;
        protected void Page_Load(object sender, EventArgs e)
        {
            organizacion = new WOrganizacion(this);
            Session["Id"] = "";
        }
        protected COrganizacion Organizacion()
        {
            COrganizacion o = new COrganizacion();
            o.Folio = txtFolio.Text;
            o.NombreNegocio = txtNegocio.Text;
            o.Dueño = txtDueño.Text;
            o.Contacto = txtContacto.Text;
            o.Imagen = FileUpload1.FileName;
            o.TipoOrganizacion = drpTipo.SelectedItem.Text;
            o.Ubicacion = txtUbicacion.Text;
            o.FechaPago = DateTime.Parse(DateTime.Now.ToShortDateString());
            o.EdoPago = 1;
            o.Contraseña = txtContraseña.Text;
            o.Latitud = latitud.Value;
            o.Longitud = longitud.Value;
            return o;
        }
        protected void ProcesarMarcador()
        {
            char[] dir = txtDireccion.Text.ToCharArray();
            int x = 0;
            for (int i = 0; i < dir.Length; i++)
            {
                if (dir[i] == '(' || dir[i] == ')')
                {
                    dir[i] = ' '; dir[i].ToString().TrimEnd();
                }
                if (dir[i] == ',')
                {
                    x++; dir[i] = ' '; dir[i].ToString().TrimEnd();
                }

                if (x == 0)
                {
                    longitud.Value += dir[i];
                }
                if (x == 1)
                {
                    latitud.Value += dir[i];
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            ProcesarMarcador();
            organizacion.RegistroOrganizacion(1);
            GenerarQR();
            Session["Id"] = txtFolio.Text;
            Limpiar();
            Response.Redirect("RegistroOfertas.aspx");
        }
        private void Limpiar()
        {
            txtFolio.Text = txtContraseña.Text = txtNegocio.Text = txtUbicacion.Text = txtDireccion.Text = txtContacto.Text = txtDueño.Text = txtUbicacion.Text = "";
            longitud.Value = latitud.Value = txtFolio.Text = "";
        }
        private void GenerarQR()
        {
            string rfc = txtFolio.Text;
            string nombre = txtNegocio.Text;
            string tipo = drpTipo.SelectedItem.Text;
            string ubicacion = txtUbicacion.Text;

            string code = rfc + "/" + nombre + "/" + tipo + "/" + ubicacion + "/";
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

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            try
            {
                string[] validFileTypes = { ".png", ".jpg", ".jpeg" };

                // Validar que exista un archivo cargado
                if (FileUpload1.HasFile)
                {
                    string ext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower();
                    bool isValidFile = false;

                    // Validar extension de archivo cargado sea tipo imagen  
                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (ext == validFileTypes[i])
                        {
                            isValidFile = true;
                            break;
                        }
                    }

                    // En caso no tener una extension permitida 
                    if (!isValidFile)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "teste", "Alerta('Asignación','Seleccione un formato de imagen');", true);
                    }

                    // metodo que guarda la imagen en una carpeta

                    GuardarArchivoCarpeta(FileUpload1.PostedFile);
                    ////Guardar imagen en BD
                    //MImagen imagen1 = new MImagen();
                    //imagen1.imagen = "Img" + NumImagen;
                    //imagen1.GuardarImagenBD(FileUpload1.PostedFile);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "teste", "Alerta('Asignación','No se cargo la imagen');", true);
                }
            }
            catch (Exception)
            {
            }

        }
        public void GuardarArchivoCarpeta(HttpPostedFile file)
        {
            try
            {

                // Se carga la ruta física de la carpeta temp del sitio
                string ruta = Server.MapPath("~/Imagenes");

                // Si el directorio no existe, crearlo
                if (!Directory.Exists(ruta))
                    Directory.CreateDirectory(ruta);

                //string archivo = String.Format("{0}\\{1}", ruta, file.FileName);

                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //fileName = fileName.Replace(fileName, nombreImagenConExtension);
                string fullPath = Path.Combine(Server.MapPath("~/Imagenes"), fileName);

                // Verificar que el archivo no exista
                if (File.Exists(fullPath))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "teste", "Alerta('Configuración','Ya existe el archivo, este se reemplazará');", true);
                    // en caso quisiera eliminar utilizaria esta linea de codigo
                    if (File.Exists(fullPath)) File.Delete(fullPath);
                    file.SaveAs(fullPath);
                    //imgM.ImageUrl = string.Format("RecuperarImagen.ashx?UserID={0}", 1);
                }
                else
                {
                    file.SaveAs(fullPath);
                    //imgM.ImageUrl = string.Format("RecuperarImagen.ashx?UserID={0}", 1);
                    ScriptManager.RegisterStartupScript(this, GetType(), "teste", "Alerta('Configuración','Se guardo el archivo');", true);

                }
            }
            catch (Exception e)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "teste", "Alerta('Error','Para poder editar alguna imagen debera reiniciar el sistema, ya que son archivos de inicio y no pueden borrarse mientras se esten usando');", true);
            }
        }

        protected void drpTipo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnFolio_Click(object sender, EventArgs e)
        {

            for (int i = 0; i < 5; i++)
            {
                Thread.Sleep(100);
                int x = new Random(DateTime.Now.Millisecond).Next(0, 9);
                txtFolio.Text += x;
            }
            if (organizacion.Existe(3))
            {
                MessageBox.Show("Este numero no es valido");

            }
            else
            {
                MessageBox.Show("Insertar");
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
        }
            
    }
}