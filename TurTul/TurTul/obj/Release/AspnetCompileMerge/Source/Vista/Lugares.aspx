<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lugares.aspx.cs" Inherits="TurTul.Lugares" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCzDTG3CORgvqNUNAouh1O3zpJjPQJYuys&callback=initMap"
  type="text/javascript"></script>
    <!-- Latest compiled and minified CSS -->
    <script src="../js/locationpicker.jquery.js"></script>
        <link href="../Content/Formulario/css/estilos.css" rel="stylesheet" />

    <title>Control de ubicaciones</title>
</head>
<body>
    <div align="center"> <img width="800px" height="300px" src="../Imagenes/Tutrip.png" /></div>
    <form id="form1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label for="exampleInputEmail1">Ubicación</label>
                <asp:HiddenField ID="txtID" runat="server" />
                <asp:TextBox ID="txtUbicacion" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <div id="ModalMapPreview" style="width: 100%; height:300px;"></div>
            </div>
            <!-- Latitud y longitud -->
            <div class="form-group">
               
                <div class="col-md-6">
                 
                <asp:TextBox ID="txtLat" Text="20.0904802" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
          
                <asp:TextBox ID="txtLong" Text="-98.3690922" CssClass="form-control" runat="server"></asp:TextBox>
                <br />
                    
                </div>
                
               
            </div>
            <div class="form-group">
                <label for="exampleInputPassword">Nombre:</label>
                <asp:TextBox ID="txtNombre" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                <label for="exampleInputPassword">Historia:</label>
                <asp:TextBox ID="txtHistoria" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
            </div>
            <!-- Controles de altas, bajas y cambios-->
            <div class="form-group">
                <asp:Button ID="btnAgregar" CssClass="btn btn-success" runat="server" Text="Agregar" UseSubmitBehavior="false" OnClick="Guardar_Click" />
                  <asp:Button ID="btnLimpiar" CssClass="btn btn-default" runat="server" Text="Limpiar" UseSubmitBehavior="false" />
            </div>
        </div>
        <div class="col-md-8">
            <br />
            <h1>Ubicaciones</h1>
            <div style="overflow: scroll;  Height: 600px;">
            <asp:GridView ID="GridViewLugares" runat="server" CssClass="table table-striped table-bordered table-hover" >
                
                 
        </asp:GridView>
                </div>
        </div>
    </div>

        <br />
         <div align="right">
        
                  <asp:Button runat="server" CssClass="btn btn-default" Width="200px" Text="Regresar" OnClick="Unnamed1_Click"/>
                        </div>
    </form>
    <script>
        $('#ModalMapPreview').locationpicker({
            radius: 0,
            location: {
                latitude: $('#<%=txtLat.ClientID%>').val(),
                longitude: $('#<%=txtLong.ClientID%>').val()
            },
            inputBinding: {
                latitudeInput: $('#<%=txtLat.ClientID%>'),
                longitudeInput: $('#<%=txtLong.ClientID%>'),
                locationNameInput: $('#<%=txtUbicacion.ClientID%>')
            },
            enableAutocomplete: true
        });
    </script>
</body>
</html>
