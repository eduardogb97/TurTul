<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Organizaciones.aspx.cs" Inherits="TurTul.Vista.Organizaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro</title>
    <link href="../Content/Formulario/css/estilos.css" rel="stylesheet" />
    <link href="../Content/Formulario/css/font-awesome.css" rel="stylesheet" />
    <%--    <script src="../Content/Formulario/js/script.js"></script>--%>
    <%--    <script src="../Content/Formulario/js/jquery-3.2.1.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />--%>
    <link href="../Content/1-col-portfolio.css" rel="stylesheet" />

    <link href="../css/jquery.gmaps.css" rel="stylesheet" />
    <script src="../js/jquery.gmaps.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <%--<script src="../Scripts/bootstrap.min.js"></script>--%>


    <style>
        .gmaps {
            height: 500px;
            width: 100%;
        }
    </style>
    <script type="text/javascript">
        $('#myModal').on('shown.bs.modal', function () {
            $('#myInput').trigger('focus')
        })
    </script>
</head>
<body>
    <div align="center">
        <img width="800px" height="300px" src="../Imagenes/Tutrip.png" />
    </div>
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <section class="form_wrap">

            <section class="cantact_info">
                <section class="info_title">
                    <span class="fa fa-university"></span>
                    <h2>Registro<br>
                        empresa</h2>
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
                    <asp:TextBox ID="txtNombre" runat="server" placeholder="Tienda Garcia"></asp:TextBox>
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

                <div>
                    <asp:Label ID="Label4" runat="server" Text="Label">Ubicacion</asp:Label>
                    <asp:TextBox ID="txtUbicacion" runat="server"></asp:TextBox>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
                        Abrir Google Maps
                    </button>

                </div>
        <div>
                <asp:Label ID="Label5" runat="server" Text="Label">QR</asp:Label>
            <asp:TextBox ID="txtQr" runat="server"></asp:TextBox>
            </div>
                <div>
                    <asp:Label ID="Label7" runat="server" Text="Label">Oferta</asp:Label>
                    <asp:TextBox ID="txtOferta" runat="server"></asp:TextBox>
                </div>


                <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                <div class="col-lg-12" align="center">
                    <asp:PlaceHolder runat="server" ID="PHQRCode"></asp:PlaceHolder>
                </div>
                <div align="right">
                    <asp:Button runat="server" CssClass="btn btn-default" Text="Regresar" Width="200px" OnClick="Unnamed1_Click" />
                </div>
                <div class="row">
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                 
                <asp:TextBox ID="txtLat" Text="20.0904802" CssClass="form-control" runat="server"></asp:TextBox>
          
                <asp:TextBox ID="txtLong" Text="-98.3690922" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                
                </div>
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p><a href="LugaresRegistrados.aspx" target="ventana_iframe">Ver mapa</a></p>

                                <iframe href="LugaresRegistrados.aspx.cs" marginwidth="0" marginheight="0" name="ventana_iframe" scrolling="no" border="0" frameborder="0" width="100%" height="600px"></iframe>
                            </div>
                        </div>
                        <!-- Page Content -->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
    </div>
    </div>
            </form>
        </section>
    </div>
        <div class="col-md-2"></div>
</body>
</html>
