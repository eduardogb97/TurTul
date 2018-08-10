using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Modelo
{
    public class COrganizacion
    {
        public string Folio { get; set; }
        public string NombreNegocio { get; set; }
        public string TipoOrganizacion { get; set; }
        public byte EdoPago { get; set; }
        public string Contraseña { get; set; }
        public string Longitud { get; set; }
        public string Latitud { get; set; }
        public string Dueño { get; set; }
        public string Contacto { get; set; }
        public string Imagen { get; set; }
        public DateTime FechaPago { get; set; }
        public string Ubicacion { get; set; }
        
    }
}
