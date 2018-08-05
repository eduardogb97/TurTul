using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Core.Modelo;
using Core.Vista;
using Core.Presentador;
using System.Data.SqlClient;
using System.Data;

namespace Core.Presentador
{
    class WLugares
    {
        ManagerBD Manager;
        ILugares ViewLugares;
        CLugares objLugares;

        public WLugares(ILugares InterfazLugares)
        {
            objLugares = new CLugares();
            Manager = new ManagerBD();
            ViewLugares = InterfazLugares;
        }
        public bool ExisteConexion()
        {
            bool ConexionAbierta = false;
            SqlConnection sqlCon = Manager.GetConnection();
            if (sqlCon.State == ConnectionState.Open)
            {
                ConexionAbierta = true;
            }
            return ConexionAbierta;
        }
        public void AltaLugar(CLugares objLugar, int opcion)
        {
            bool BolRegistro = false;

            if (ExisteConexion())
            {

                BolRegistro = objLugar.insertAlumno(opcion, objLugar);


                if (BolRegistro == true)
                {
                   
                    //Se reguistro la cita, enviar mensaje al médico

                }
                else
                {

                }
            }
        }
        public void Listar(int opcion)
        {
            bool ExistenDatos = false;
            DataSet dtsDatos = new DataSet();

            if (ExisteConexion())
            {
                ExistenDatos = objLugares.listarLugares(opcion, ref dtsDatos);
                if (ExistenDatos == true)
                    ViewLugares.DatosLugares = dtsDatos;
                          
            }
            else
            {
                
            }

        }
        public void EliminarLugares(int op, int IdLugar)
        {
            bool BolRegistro = false;
            if (ExisteConexion())
            {
                BolRegistro = objLugares.EliminarLugar(op, IdLugar);
                
                  
            }
        }
    }
}
