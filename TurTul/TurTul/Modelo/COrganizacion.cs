using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Modelo
{
    public class COrganizacion
    {
        public string RFC { get; set; }
        public string Nombre { get; set; }
        public string TipoOrganizacion { get; set; }
        public string Ubicacion { get; set; }
        public string QR { get; set; }
        public int Oferta { get; set; }
        public byte EdoPago   { get; set; }
        public string Contraseña { get; set; }
        public void Guardar(COrganizacion org)
        {

        }
    }
}
