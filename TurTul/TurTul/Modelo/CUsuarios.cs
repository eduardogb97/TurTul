using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Modelo
{
    public class CUsuarios
    {
        //Propiedades
        public string IdUsuario { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Contraseña { get; set; }
        public string Fk_Lugar { get; set; }
    }
}
