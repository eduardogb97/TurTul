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

    <script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAsDAIpQKszXH2KS9WvJO-Y4s465ZgS2ak&libraries=places"
  type="text/javascript"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <%--<script src="../Scripts/bootstrap.min.js"></script>--%>


    <style>
        #map {
            height: 700px;
            width: 700px;
        }
    </style>
    <script type="text/javascript" language="javascript">



        function muestra_oculta(id) {
            if (document.getElementById) { //se obtiene el id
                var el = document.getElementById(id); //se define la variable "el" igual a nuestro div
                el.style.display = (el.style.display == 'none') ? 'block' : 'none'; //damos un atributo display:none que oculta el div
            }
        }
        window.onload = function () {/*hace que se cargue la función lo que predetermina que div estará oculto hasta llamar a la función nuevamente*/
            muestra_oculta('contenido');/* "contenido_a_mostrar" es el nombre que le dimos al DIV */
        }


        function showBrowseDialog() {
            var fileuploadctrl = document.getElementById('<%= FileUpload1.ClientID %>');
            fileuploadctrl.click();
        }

        function upload() {
            var btn = document.getElementById('<%= hideButton.ClientID %>');
            btn.click();
        }
    </script>
    <script languague="javascript">
        function mostrar() {
            div = document.getElementById('flotante');
            div.style.display = '';
        }

        function cerrar() {
            div = document.getElementById('flotante');
            div.style.display = 'none';
        }
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
                <asp:FileUpload ID="FileUpload1" Style="display: none" runat="server" />
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:TextBox Style="visibility: hidden" ID="txtDireccion" runat="server"></asp:TextBox>
                <asp:HiddenField ID="longitud" runat="server" />
                <asp:HiddenField ID="latitud" runat="server" />

                <asp:Button runat="server" ID="hideButton" Text="" Style="display: none;" OnClick="UploadButton_Click" />

                <div class="row">
                </div>
                <div>
                    <asp:Label ID="Label6" type="text" runat="server" Text="Label">Nombre del Negocio</asp:Label>
                    <asp:TextBox ID="txtNegocio" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label8" type="text" runat="server" Text="Label">Dueño</asp:Label>
                    <asp:TextBox ID="txtDueño" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label ID="Label9" type="text" runat="server" Text="Label">Contacto</asp:Label>

                    <asp:TextBox ID="txtContacto" runat="server"></asp:TextBox>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label3" runat="server" Text="Label">Tipo de Organizacion</asp:Label>
                        <br />
                        <asp:DropDownList CssClass="form-control" ID="drpTipo" runat="server" OnSelectedIndexChanged="drpTipo_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="0">Selecciona</asp:ListItem>
                            <asp:ListItem Value="1">Hotel</asp:ListItem>
                            <asp:ListItem Value="2">Restaurantes</asp:ListItem>
                            <asp:ListItem Value="3">Cafe</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    
                    <div class="col-md-12">
                       
                    </div>
                </div>
                <div class="row">
                    <asp:TextBox ID="coords" runat="server"></asp:TextBox>
                </div>
                
                <div class="row">
                    <div class="col-md-5">
                        <asp:Label ID="Label2" runat="server" Text="Label">Folio: </asp:Label>
                        <asp:TextBox ID="txtFolio" runat="server" ReadOnly="true"></asp:TextBox>
                    </div>
                    <div class="col-md-5">
                        <asp:Label ID="Label10" runat="server" Text="Label">Generar: </asp:Label>
                        <asp:Button ID="btnFolio" runat="server" Text="Generar" CssClass="btn btn-primary" OnClick="btnFolio_Click" />
                    </div>
                    <div>
                    </div>


                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:Label ID="Label1" runat="server" Text="Label">Contraseña</asp:Label>
                        <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
                    </div>
                </div>

                <br />
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label4" runat="server" Text="Label">Ubicacion</asp:Label>
                    </div>

                    <div class="col-md-5">

                        <asp:TextBox ID="txtUbicacion" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-5">
                        <p><a href="javascript:mostrar();">Ir a mi Ubicacion</a></p>
                        
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8" id="flotante" style="display: none;">

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:TextBox ID="autocomplete" runat="server" AutoPostBack="false"></asp:TextBox><br />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div id="map" class="col-md-12">
                                        </div>
                                    </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>

                <asp:Button ID="btnGuardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                <div class="col-lg-12" align="center">
                    <asp:PlaceHolder ID="PHQRCode" runat="server"></asp:PlaceHolder>
                </div>
                <div align="right">
                    <asp:Button runat="server" CssClass="btn btn-default" Text="Regresar" Width="200px" OnClick="Unnamed1_Click" />
                </div>
                <div data-backdrop="static" data-keyboard="false" class="modal fade modal-lg" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLongTitle">Direccion</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        
                                        <br />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        
                                        </div>
                                    </div>
                                </div>

                                <input type="button" name="name" value="OK" />
                            </div>
                        </div>
                        <!-- Page Content -->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>


                <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            ...
                        </div>
                    </div>
                </div>
    </div>
    </div>
            </form>

        </section>
    </div>
        <div class="col-md-2"></div>
</body>
<script src="../js/main.js"></script>
<script src="../js/localizacion.js"></script>
</html>
