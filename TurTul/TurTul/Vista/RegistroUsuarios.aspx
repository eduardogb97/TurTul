﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="TurTul.Vista.RegistroUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                 <div>
            <asp:Label ID="Label3" runat="server" Text="Label">Nombre</asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Label">Apellidos</asp:Label>
            <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Usuario</asp:Label>
            <asp:TextBox ID="txtIdUsuario" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Label">Contraseña</asp:Label>
            <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
    </form>
</body>
</html>
