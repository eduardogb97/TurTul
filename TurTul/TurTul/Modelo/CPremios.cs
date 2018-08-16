using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TurTul.Modelo
{
    public class CPremios
    {
        public  int FkOferta { get; set; }
    public string FkUsuario { get; set; }
        public DateTime Cadicidad { get; set; }
        public int IdPremio { get; set; }
    }
}