﻿
<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="camara.aspx.cs" Inherits="camara.camara" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script src="../js/adapter.min.js"></script>
    <script src="../js/vue.min.js"></script>
    <script src="../js/instascan.min.js"></script>

    <script src="../Content/Formulario/js/jquery-3.2.1.js"></script>
    <link href="../css/Valoracion.css" rel="stylesheet" />
    <script src="../js/jquery-latest.js"></script>
    <link href="../Content/Formulario/css/estilos.css" rel="stylesheet" />

    <link href="../Content/Formulario/css/font-awesome.css" rel="stylesheet" />
    <meta name="../viewport" content="width=device-width, initial-scale=1.0">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <script>

        function Operacion() {

            var lbltext = document.getElementById('texto').innerHTML;

            document.getElementById('<%= txtResultado.ClientID %>').value = lbltext;

            document.getElementById('<%= modificar.ClientID %>').click();
        }
        function GetValue() {
            Operacion();
            var f = document.getElementById('op');
            f.click();
        }

    </script>
</head>
<body>
    <div align="center"> <img class="img-fluid" width="800px" height="300px" src="../Imagenes/NewTrip.png" /></div>
           <div class="container">
          <section class="form_wrap">

        <section class="cantact_info">
            <section class="info_title">
                <span class="fa fa-university"></span>
                <h2>Lector<br>QR</h2>
            </section>
        </section>
              <form runat="server" class="form_contact">
                 <div class="col-md-12">
   <div id="app">
      <div  align="center">
        <video id="preview" width="100%"></video>
       </div>
      <div class="sidebar">
        <section class="cameras">
           <label v-if="cameras.length === 0" class="empty"></label>
            <label v-for="camera in cameras">
             <span v-if="camera.id != activeCameraId" :title="formatName(camera.name)">
              </span>
            </label>
          
        </section>
        <section class="scans">
            <ul hidden="false" v-if="scans.length === 0">
            <li class="empty"></li>
          </ul>

          <label name="scans" tag="ul">
            <label hidden="false" id="texto" v-for="scan in scans" :key="scan.date" :title="scan.content">{{ scan.content }}</label>
              <ul v-if="scans.length > 0">

                                     <input id="Button1" class="btn btn-primary" type="button" value="Ver información" onclick="Operacion();" />

                  
          </label>
              </section>          

      </div>

    </div>
                </div>
          <div class="col-md-12">
         <asp:Button hidden="false" runat="server" ID="modificar" Text="modificar" OnClick="modificar_Click"/>
         <asp:TextBox hidden="false" ID="txtResultado" runat="server"></asp:TextBox>
     
                             
        <div class="col-md-12">
            <div class="col-md-4">
                <asp:Panel ID="PHQRCode" runat="server"></asp:Panel>
            </div>
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">Datos del centro</span>
          </h4>
          <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0"><asp:Label runat="server" for="TextBox1">Nombre:</asp:Label></h6>
                <small class="text-muted">
                    <asp:Label runat="server" Visible="false" ID="lblNombre"></asp:Label>
                </small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0"><asp:Label runat="server" for="TextBox1">Histpria:</asp:Label></h6>
                <small class="text-muted"><asp:Label Visible="false" runat="server" ID="lblHistoria"></asp:Label></small>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0"><asp:Label runat="server" for="TextBox1">Dirección</asp:Label></h6>
                <small class="text-muted"><asp:Label Visible="false" runat="server" ID="lblUbicacion"></asp:Label></small>
              </div>
            </li>
          </ul>
             <div class="col-md-12" align="center">
         <asp:Button runat="server" ID="btnob" CssClass="btn btn-success" style="width:30%" Text="Obtener premio" OnClick="btnob_Click"/>
                 </div>
            </div>
                                  </div>
                             
                  <div align="right">
            <asp:Button runat="server" CssClass="btn btn-default" Text="Regresar" Width="200px" OnClick="Unnamed4_Click"/>
        </div>
    </form>
     </section>

        
   

  






        </div>









     <%--<form id="form" runat="server">
         

               


             


                 


          


     </form>--%><script src="../js/app.js"></script>

    </body>
</html>
