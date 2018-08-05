<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Organizaciones.aspx.cs" Inherits="TurTul.Vista.Organizaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
        <link href="../Content/Formulario/css/estilos.css" rel="stylesheet" />
    <link href="../Content/Formulario/css/font-awesome.css" rel="stylesheet" />
<%--    <script src="../Content/Formulario/js/script.js"></script>--%>
    <script src="../Content/Formulario/js/jquery-3.2.1.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
       <div align="center"> <img width="800px" height="300px" src="../Imagenes/Tutrip.png" /></div>
        <div class="col-md-2"></div>
    <div class="col-md-8">
          <section class="form_wrap">

        <section class="cantact_info">
            <section class="info_title">
                <span class="fa fa-university"></span>
                <h2>Registro<br>empresa</h2>
            </section>
        </section>
              <form action="" runat="server" class="form_contact">
            <div>
            <asp:Label ID="Label2" runat="server" Text="Label">RFC: </asp:Label>
            <asp:TextBox ID="txtRfc" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label6" type="password" runat="server" Text="Label">Contraseña</asp:Label>
            <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Label">Organizacion</asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </div>
            <div>
     <asp:Label ID="Label3" runat="server" Text="Label">Tipo de Organizacion</asp:Label>
                <br />
            <asp:DropDownList CssClass="form-control" ID="drpTipo" runat="server">
                <asp:ListItem Value="0">Hotel</asp:ListItem>
                <asp:ListItem Value="1">Restaurantes</asp:ListItem>
                <asp:ListItem Value="2">Cafe</asp:ListItem>
            </asp:DropDownList>
            </div>
                  <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Label">Ubicacion</asp:Label>
            <asp:TextBox ID="txtUbicacion" runat="server"></asp:TextBox>
            </div>
<%--            <div>
                <asp:Label ID="Label5" runat="server" Text="Label">QR</asp:Label>
            <asp:TextBox ID="txtQr" runat="server"></asp:TextBox>
            </div>--%>
            <div>
                <asp:Label ID="Label7" runat="server" Text="Label">Oferta</asp:Label>
            <asp:TextBox ID="txtOferta" runat="server"></asp:TextBox>
            </div>
            
 
        <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click"/>
<div class="col-lg-12" align="center">
        <asp:PlaceHolder runat="server" ID="PHQRCode"></asp:PlaceHolder>
    </div>
                  <div align="right">
            <asp:Button runat="server" CssClass="btn btn-default" Text="Regresar" Width="200px" OnClick="Unnamed1_Click"/>
        </div>
    </form>
     </section>

        
   

  






        </div>
        <div class="col-md-2"></div>
</body>
</html>
