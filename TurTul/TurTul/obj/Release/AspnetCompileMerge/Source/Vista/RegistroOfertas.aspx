<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroOfertas.aspx.cs" Inherits="TurTul.Vista.RegistroOfertas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="lblTipo" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div class="row">               <div class="col-md-12" id="contenido">
                        <asp:Label ID="Label11" runat="server" Text="Label">Producto o servicio</asp:Label>
                        <asp:DropDownList ID="drpOpcciones" runat="server"></asp:DropDownList>

                         <asp:Label ID="Label7" runat="server" Text="Cantidad a descontar"></asp:Label>
                        <asp:TextBox ID="txtDescuento" runat="server"></asp:TextBox>
                        <asp:Button ID="btnAdd" runat="server" Text="Nuevo" OnClick="btnAdd_Click" />
                    </div>
                    <div class="col-md-5">
                        <div class="titulo_boton">
                              <a style='cursor: pointer;' onclick="muestra_oculta('contenido')" title="" class="boton_mostrar">Finalizar</a>
                        </div>
                    </div>
                </div>
        </div>
    </form>
</body>
</html>
