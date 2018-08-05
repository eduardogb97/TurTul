<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="TurTul.Vista.RegistroUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-5">
                <asp:Label ID="Label3" runat="server" Text="Label" CssClass="control-label">Nombre</asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5">
                <asp:Label ID="Label4" runat="server" Text="Label" CssClass="control-label">Apellidos</asp:Label>
            <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5">
                <asp:Label ID="Label1" runat="server" Text="Label" CssClass="control-label">Usuario</asp:Label>
            <asp:TextBox ID="txtIdUsuario" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5">
                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="control-label">Contraseña</asp:Label>
            <asp:TextBox ID="txtContraseña" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
        </div>
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary"/>
    </form>
</body>
</html>
