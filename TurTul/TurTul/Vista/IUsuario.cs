using Core.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Vista
{
    interface IUsuario
    {
        CUsuarios Usuario { get; set; }
        DataSet Tabla { get; set; }
    }
}
