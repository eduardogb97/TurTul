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
    <form id="form1" runat="server">
        <div class="col-md-8">
            <asp:TextBox ID="txtResultado" runat="server"></asp:TextBox>
            <asp:Button ID="btnConsultar" style="visibility:hidden" runat="server" Text="Button" OnClick="btnConsultar_Click" />

            <asp:GridView ID="gvRecompensas" runat="server"></asp:GridView>
        </div>
        <div class="row">
            <div class="col-med-5">
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
        </div>
    </form>
</body>
<script src="../js/app.js"></script>
</html>
