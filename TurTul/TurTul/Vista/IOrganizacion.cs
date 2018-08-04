using Core.Modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Vista
{
    interface IOrganizacion
    {
        COrganizacion newOrganization { get; set; }
        DataSet Llenar { get; set; }
    }
}
