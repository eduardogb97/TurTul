using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Core.Modelo;
using Core.Vista;
using Core.Presentador;
using System.Data;

namespace Core.Vista
{
   public interface ILugares
    {
      CLugares objLugares { get; set; }
      
      DataSet DatosLugares { get; set; }        
    }
}
