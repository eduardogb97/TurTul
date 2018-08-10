using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TurTul.Modelo;

namespace TurTul.Vista
{
    public interface IPremios
    {
        CPremios nuevoPremio { get; set; }
        DataSet setGrid { get; set; }
    }
}
