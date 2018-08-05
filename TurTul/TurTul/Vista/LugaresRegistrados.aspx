<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LugaresRegistrados.aspx.cs" Inherits="TurTul.LugaresRegistrados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://code.jquery.com/jquery-3.2.1.js"></script>
 
    <link href="../css/jquery.gmaps.css" rel="stylesheet" />
    <script src="../js/jquery.gmaps.js"></script>
    <link href="../Content/Valoracion.css" rel="stylesheet" />

<%--    <style>
        .gmaps{
            height:500px;
            width:100%;
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div data-key="AIzaSyCzDTG3CORgvqNUNAouh1O3zpJjPQJYuys"
data-control-zoom="true"
data-control-type="true"
data-control-scale="true"
data-control-streetview="true"
data-control-rotate="true"
data-event-mousewheel="true"  

data-zoom="14" role="map" class="gmaps">

<!-- items de ubicaciones -->
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
<div
data-id="<%# DataBinder.Eval(Container.DataItem,"Id_Lugar") %>"
data-lat="<%# DataBinder.Eval(Container.DataItem,"Latitud") %>"
data-lng="<%# DataBinder.Eval(Container.DataItem,"Longitud") %>"
class="marker">
    <div class="map-card">
        <h1><%# DataBinder.Eval(Container.DataItem,"Nombre") %></h1>
        <p>Dirección: <%# DataBinder.Eval(Container.DataItem,"Ubicacion") %></p>
        <p>Historia: <%# DataBinder.Eval(Container.DataItem,"Historia") %></p>
        <p>e-Mail: fake@email.com</p>
       <p class="clasificacion">
  <input id="radio1" type="radio" name="estrellas" value="5">
  <label for="radio1">★</label>
  <input id="radio2" type="radio" name="estrellas" value="4">
  <label for="radio2">★</label>
  <input id="radio3" type="radio" name="estrellas" value="3">
  <label for="radio3">★</label>
  <input id="radio4" type="radio" name="estrellas" value="2">
  <label for="radio4">★</label>
  <input id="radio5" type="radio" name="estrellas" value="1">
  <label for="radio5">★</label>
           </p>
    </div>
</div></ItemTemplate>
        </asp:Repeater>


    
    </div>
    </form>
    <script>
        $(document).ready(function () {
            $('.gmaps').gmaps();
        });
    </script>
</body>
</html>
