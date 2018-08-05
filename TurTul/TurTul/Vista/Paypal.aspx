<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paypal.aspx.cs" Inherits="TurTul.Vista.Paypal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-md-5"></div>
        <div class="col-md-2">
            <div class="row">
            <img width="300px" height="150px" src="../Imagenes/índice.png" />
                </div>
            <div class="row">
            <asp:TextBox CssClass="form-control" runat="server" ID="Usuario"></asp:TextBox>
                </div>
            <br />
            <div class="row">
            <asp:TextBox CssClass="form-control" type="password" runat="server"  ID="Contraseña"></asp:TextBox>
                </div>
            <br />
            <div class="row">
            <asp:Button CssClass="btn btn-primary" Width="100%" Text="Iniciar sesión" runat="server" OnClick="Unnamed3_Click"/>
            </div>
            <br />
            <div class="row">
        </div>
            <a href="#"></a>
            <asp:Button CssClass="btn btn-default" Width="100%" Text="Registrarse" runat="server"/>
        </div>
        <div class="col-md-5"></div>
    </form>
</body>
</html>
