using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TurTul.Modelo
{
    public class COfertas
    {
        public int FkNegocio { get; set; }
        public string Producto { get; set; }
        public int Porcentaje { get; set; }
    }
}