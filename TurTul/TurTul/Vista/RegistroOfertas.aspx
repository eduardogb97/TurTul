<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroOfertas.aspx.cs" Inherits="TurTul.Vista.RegistroOfertas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/Formulario/css/estilos.css" rel="stylesheet" />
    <link href="../Content/Formulario/css/font-awesome.css" rel="stylesheet" />
    <%--    <script src="../Content/Formulario/js/script.js"></script>--%>
    <%--    <script src="../Content/Formulario/js/jquery-3.2.1.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />--%>
    <link href="../Content/1-col-portfolio.css" rel="stylesheet" />

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAsDAIpQKszXH2KS9WvJO-Y4s465ZgS2ak&libraries=places" type="text/javascript"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>
    <div class="container">

        <section class="form_wrap">

            <section class="cantact_info">
                <section class="info_title">
                    <span class="fa fa-university"></span>
                    <h2>Registro<br>
                        empresa</h2>
                </section>


            </section>
           
            <form id="form1" runat="server" class="form-contact">
                 <div class="col-md-12" align="center">
                <div class="row">
                    <div class="col-md-12" align="center">
                        <h1>
                            <asp:Label ID="lblTipo" runat="server" Text="Label"></asp:Label>
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label11" runat="server" Text="Label">Producto o servicio</asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:DropDownList class="form-control" ID="drpOpcciones" runat="server"></asp:DropDownList>
                    </div>
                </div>

                <br />
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label7" runat="server" Text="Cantidad a descontar"></asp:Label>
                    </div>
                    <div class="col-md-12">
                        <asp:TextBox ID="txtDescuento" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-12" align="center">
                    <asp:Button ID="btnAdd" runat="server" Style="width: 30%" Text="Nuevo" OnClick="btnAdd_Click" />
                </div>
                <div class="col-md-12" align="right">
                     <div align="right">
                    <asp:Button runat="server" CssClass="btn btn-default" Text="Regresar" Width="200px" OnClick="Unnamed1_Click"  />
                </div>
                </div>
                      </div>
            </form>
        </section>
    </div>
</body>
</html>
