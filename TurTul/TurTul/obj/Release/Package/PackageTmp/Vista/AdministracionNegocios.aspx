<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="AdministracionNegocios.aspx.cs" Inherits="TurTul.Vista.AdministracionNegocios" %>

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
     <div class="col-md-2"></div>
    <div class="col-md-8">
          <section class="form_wrap">

        <section class="cantact_info">
            <section class="info_title">
                <span class="fa fa-university"></span>
                <h2>Modificar<br>empresa</h2>
            </section>
        </section>
             <form action="" runat="server" class="form_contact">
        <div class="row">
   
                <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Label">Buscar</asp:Label>
            

                <asp:TextBox ID="txtBuscar" runat="server" class="form-control"></asp:TextBox>
          

        </div>
        <div class="row">

                <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" Text="Buscar" OnClick="btnBuscar_Click" />
          
             
        </div>
        <div class="row">

                <asp:GridView ID="gvNegocios" class="form-control" runat="server" OnRowDataBound="gvNegocios_RowDataBound" OnSelectedIndexChanged="gvNegocios_SelectedIndexChanged" AutoGenerateColumns="False" ShowHeaderWhenEmpty="true">
        </asp:GridView>
            
        </div>
        

  
       




            <div class="row">
 
                    <asp:Label ID="Label2" runat="server" Text="Label" CssClass="control-label">RFC: </asp:Label>
                <asp:TextBox ID="txtRfc" runat="server" class="form-control"></asp:TextBox>

            </div>
            <div class="row">

                    <asp:Label ID="Label6" runat="server" Text="Label" CssClass="control-label">Contraseña</asp:Label>
                <asp:TextBox ID="txtContraseña" runat="server" class="form-control"></asp:TextBox>

            </div>
            <div class="row">
    
                    <asp:Label ID="Label3" runat="server" Text="Label" CssClass="control-label">Organizacion</asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
       
            </div>

            <div class="row">
             
                    <asp:Label ID="Label4" runat="server" Text="Label" CssClass="control-label">Tipo de Organizacion</asp:Label>
                <asp:DropDownList ID="drpTipo" runat="server" class="form-control">
                    <asp:ListItem Value="0">Hotel</asp:ListItem>
                    <asp:ListItem Value="1">Restaurantes</asp:ListItem>
                    <asp:ListItem Value="2">Cafe</asp:ListItem>
                </asp:DropDownList>
           
            </div>
            <div class="row">
     
                    <asp:Label ID="Label5" runat="server" Text="Label" CssClass="control-label">Ubicacion</asp:Label>
                <asp:TextBox ID="txtUbicacion" runat="server" class="form-control"></asp:TextBox>
          
            </div>
            <div class="row">
            
                     <asp:Label ID="Label7" runat="server" Text="Label" CssClass="control-label">QR</asp:Label>
                <asp:TextBox ID="txtQr" runat="server" class="form-control"></asp:TextBox>
    
            </div>
            <div class="row">
       
                    <asp:Label ID="Label8" runat="server" Text="Label" CssClass="control-label">Oferta</asp:Label>
                <asp:TextBox ID="txtOferta" runat="server" class="form-control"></asp:TextBox>
       

        </div>
        <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" />

                 </form>
     </section>
        </div>
        <div class="col-md-2"></div>
</body>
</html>
