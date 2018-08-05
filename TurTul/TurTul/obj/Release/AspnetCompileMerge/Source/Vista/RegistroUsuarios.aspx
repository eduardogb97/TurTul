<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="TurTul.Vista.RegistroUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
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
                <span class="fa fa-user-circle"></span>
                <h2>Registro<br>usuario</h2>
            </section>
        </section>
              <form action="" runat="server" class="form_contact">
<div class="row">

                <asp:Label ID="Label3" for="names" runat="server" Text="Label" CssClass="control-label">Nombre</asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

        <div class="row">

                <asp:Label ID="Label4" for="apellidos" runat="server" Text="Label" CssClass="control-label">Apellidos</asp:Label>
            <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
 
        <div class="row">

                <asp:Label ID="Label1" for="usuario" runat="server" Text="Label" CssClass="control-label">Usuario</asp:Label>
            <asp:TextBox ID="txtIdUsuario" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

<div class="row">
                <asp:Label ID="Label2" for="contraseña" runat="server" Text="Label" CssClass="control-label">Contraseña</asp:Label>
            <asp:TextBox ID="txtContraseña" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
            
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary"/>
                   </form>
                </section>
   

  






        </div>
        <div class="col-md-2"></div>
</body>
</html>
