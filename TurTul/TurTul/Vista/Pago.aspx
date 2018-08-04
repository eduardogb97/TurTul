<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pago.aspx.cs" Inherits="TurTul.Vista.Pago" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="https://www.paypal.com/mx/signin?country.x=MX&locale.x=es_MX">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Usuario</asp:Label>
            <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>

        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Label">Contraseña</asp:Label>
            <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>

        </div>
        <div>
            <asp:Button ID="btnLogin" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
