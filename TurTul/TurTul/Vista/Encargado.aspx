<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Encargado.aspx.cs" Inherits="TurTul.Vista.Encargado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <script src="../js/adapter.min.js"></script>
    <script src="../js/vue.min.js"></script>
    <script src="../js/instascan.min.js"></script>

    <script src="../Content/Formulario/js/jquery-3.2.1.js"></script>
    <link href="../css/Valoracion.css" rel="stylesheet" />
    <script src="../js/jquery-latest.js"></script>
    <link href="../Content/Formulario/css/estilos.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Content/Formulario/css/estilos.css" rel="stylesheet" />
    <link href="../Content/Formulario/css/font-awesome.css" rel="stylesheet" />
    <%--    <script src="../Content/Formulario/js/script.js"></script>--%>
    <%--    <script src="../Content/Formulario/js/jquery-3.2.1.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />--%>
    <link href="../Content/1-col-portfolio.css" rel="stylesheet" />

    <script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAsDAIpQKszXH2KS9WvJO-Y4s465ZgS2ak&libraries=places"
  type="text/javascript"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <link href="../Content/Formulario/css/font-awesome.css" rel="stylesheet" />
    <meta name="../viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <script>

        function Operacion() {

            var lbltext = document.getElementById('texto').innerHTML;

            document.getElementById('<%= txtResultado.ClientID %>').value = lbltext;

            document.getElementById('<%= btnConsultar.ClientID %>').click();
        }
        function GetValue() {
            Operacion();
            var f = document.getElementById('op');
            f.click();
        }

    </script>
    <title></title>
</head>
<body>
     <div align="center"> <img src="../Imagenes/NewTrip.png" width="800px" height="300px" src="../Imagenes/NewTrip.png" /></div>
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
        <div class="col-md-8">
            <asp:TextBox ID="txtResultado" runat="server"></asp:TextBox>
            <asp:Button ID="btnConsultar" style="visibility:hidden" runat="server" Text="Button" OnClick="btnConsultar_Click" />
           
        </div>
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
                                     <input id="Button1" class="btn btn-primary" type="button" value="Consultar" onclick="Operacion();" />
                            
                  
          </label>
              </section>     
          





      </div>

    </div>
                     </div>


                   <asp:GridView ID="gvRecompensas" CssClass="table table-bordered" runat="server" OnRowDeleting="gvRecompensas_RowDeleting">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Accion" ShowHeader="True" Text="Hacer Descuento" />
                </Columns>
            </asp:GridView>


                   <div align="right">
        
                  <asp:Button runat="server" CssClass="btn btn-default" Width="200px" Text="Regresar" OnClick="Unnamed1_Click"/>
                        </div>
         
    </form>




</body>
<script src="../js/app.js"></script>
</html>
