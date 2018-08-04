<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Organizaciones.aspx.cs" Inherits="TurTul.Vista.Organizaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
            <asp:Label ID="Label2" runat="server" Text="Label">RFC: </asp:Label>
            <asp:TextBox ID="txtRfc" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label6" runat="server" Text="Label">Contraseña</asp:Label>
            <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="Label">Organizacion</asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </div>
            <div>
     <asp:Label ID="Label3" runat="server" Text="Label">Tipo de Organizacion</asp:Label>
            <asp:DropDownList ID="drpTipo" runat="server">
                <asp:ListItem Value="0">Hotel</asp:ListItem>
                <asp:ListItem Value="1">Restaurantes</asp:ListItem>
                <asp:ListItem Value="2">Cafe</asp:ListItem>
            </asp:DropDownList>
            </div>
            <div>
                <asp:Label ID="Label4" runat="server" Text="Label">Ubicacion</asp:Label>
            <asp:TextBox ID="txtUbicacion" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label5" runat="server" Text="Label">QR</asp:Label>
            <asp:TextBox ID="txtQr" runat="server"></asp:TextBox>
            </div>
            <div>
                <asp:Label ID="Label7" runat="server" Text="Label">Oferta</asp:Label>
            <asp:TextBox ID="txtOferta" runat="server"></asp:TextBox>
            </div>
            
        </div>
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click"/>

        <asp:PlaceHolder runat="server" ID="PHQRCode"></asp:PlaceHolder>
    </form>
</body>
</html>
