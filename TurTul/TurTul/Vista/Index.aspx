﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="camara.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/3-col-portfolio.css" rel="stylesheet" />

    <link href="../css/jquery.gmaps.css" rel="stylesheet" />
    <script src="../js/jquery.gmaps.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <script>
        function post() {
            var boton = document.getElementById('<%=btnReg.ClientID%>');
            boton.click();
        }
    </script>
    <style>
        .gmaps {
            height: 500px;
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Navigation -->

    <div class="container">
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="col-md-2 col-sm-12" align="center">
                <a class="navbar-brand">
                    <img src="Imagenes/NewTrip.png" width="220px" height="80px" /></a>
            </div>
            <div class="col-md-10 col-sm-12">
                <button class="navbar-toggler" type="button"  data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span><i class="fa fa-th-list" style="font-size:36px;"></i></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#" style="color: black;">Inicio</a>
                        </li>
                        <li class="nav-item">

                           <%-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Terminos">
                                Registrar Empresa
                            </button>--%>
                            

                           <input id="btnRegistrarN" type="button" value="Registrar Empresa" class="nav-link" style="color: black;" onclick="post()" />

                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="color: black;" href="RegistroUsuarios.aspx">Registro Usuario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="color: black;" href="Lugares.aspx">Lugares</a>
                        </li>
                    </ul>

            <form class="form-inline" id="form1" runat="server">
                <asp:Button style="visibility:hidden" ID="btnReg" runat="server" Text="RegistrarEmpresa" OnClick="Button1_Click" />
               
                <div class="form-group">
                    <label for="name">Nombre:&nbsp;</label>
                    <asp:TextBox runat="server" class="form-control" ID="name" placeholder="Enter name"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pwd">Contraseña:&nbsp;</label>
                    <asp:TextBox runat="server" type="password" class="form-control" ID="pwd" placeholder="Enter password"></asp:TextBox>
                </div>
                <%--                <asp:Button ID="Button1" runat="server" Text="Ingresar" class="btn btn-success" OnClick="Button1_Click" />--%>
            </form>

                </div>
            </div>

        </nav>
        <br />
    </div>

    <br />
    <br />
    <div class="container">

        <div class="row">
            <div class="col-md-12" align="center">
                <p><a href="LugaresRegistrados.aspx" target="ventana_iframe">Ver mapa</a></p>


                <iframe href="LugaresRegistrados.aspx.cs" marginwidth="0" marginheight="0" name="ventana_iframe" scrolling="no" border="0" frameborder="0" width="100%" height="600px"></iframe>
            </div>
        </div>
        <!-- Page Content -->


        <section id="secction1">
            <!-- Page Heading -->
            <h1 class="my-4">Sitios turisticos
                    <br />
                <small>Tulancingo</small>
            </h1>




            <div class="row">
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/43695698.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Catedral Tulancingo</a>
                            </h4>
                            <p class="card-text" align="justify">La catedral de Tulancingo, dedicada a San Juan Bautista, es una obra de la arquitectura religiosa del México colonial construida a partir de 1528 por la Orden Franciscana. Imponente y a la vez sencilla destaca en el centro Histórico de Tulancingo, Hidalgo, frente a la plaza principal La Floresta.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/el-santo-en-tulancingo-1-0.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Catedral Tulancingo</a>
                            </h4>
                            <p class="card-text" align="justify">El Museo del Santo, El Enmascarado de Plata, cuyo verdadero nombre es Rodolfo Guzmán Huerta, uno de las figuras más emblemáticas de la Lucha Libre en nuestro País.</p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/9628804_csYVslgWsHXPK2JDsaemGLQb-DR1sd_euqIQwkUhEno.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Museo de Datos Históricos</a>
                            </h4>
                            <p class="card-text" align="justify">El Museo de Datos Históricos se inauguró a principios del año de 2000, con el fin de contar la historia de Tulancingo mediante imágenes fotográficas. Dentro de sus espacios se montan exposiciones temporales de arte.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/museo-del-ferrocarril-tulancingo-1.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Museo del Ferrocarril</a>
                            </h4>
                            <p class="card-text" align="justify">Es la antigua estación ferroviaria de Tulancingo, que muestra tiempos del ferrocarril de finales del siglo XIX y principios del siglo XX, época que se transformó con este medio de transporte.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/270px-Huapalcalco1.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Zona Arqueológica de Huapalcalco</a>
                            </h4>
                            <p class="card-text" align="justify">En el sitio destaca una pirámide de tres cuerpos de influencia teotihuacana de 12 metros de base y 8 metros de alto, con un altar que posiblemente fuera usado para depósito de ofrendas y un conjunto de pinturas rupestres que datan, según estimaciones, de hace 13 mil años aproximadamente, lo que convierte a este lugar en uno de los primeros poblados de América.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/dcee2558cd29b9e08400469817a4a0d3_XL.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Zoológico Municipal de Tulancingo</a>
                            </h4>
                            <p class="card-text" align="justify">En el Zoológico de Tulancingo podrás conocer las 390 especies con las que cuenta el zoológico entre las que encontrarás osos, tigres, leones, jaguar negro, ocelote, llamas, cocodrilos, avestruces y pumas, además de la mascota del zoológico que es un hipopótamo.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/161005-c1.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Parque recreativo el Caracol</a>
                            </h4>
                            <p class="card-text" align="justify">Hace 22 años se tuvo la iniciativa de crear un espacio de convivencia familiar en donde niños, jóvenes y papás pudieran convivir, hoy, sigue siendo un lugar de convivencia familiar, el parque recreativo se ha convertido en el espacio ideal de visitantes y lugareños que a diario disfrutan de los atractivos que ofrece como la ludoteca, área de patinaje, juegos infantiles, foro al aire libre y áreas verdes.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/15949284465_4f0f21ae3e.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Iglesia de los Angelitos</a>
                            </h4>
                            <p class="card-text" align="justify">
                                <ul>
                                    <li>1736: Nace la devoción a la imagen de la virgen de los ángeles.</li>
                                    <li>1790: Se declara Virgen de los Ángeles</li>
                                    <li>1862: Se nombra patrona de la Diócesis de Tulancingo</li>
                                    <li>1878: Se inicia la construcción del templo</li>
                                </ul>

                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12 portfolio-item">
                    <div class="card h-100">
                        <a href="#">
                            <img class="card-img-top img-fluid" style="width: 100%; height: 300px" src="../Imagenes/IMG_3141-e1524014202595-800x445.jpg"></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a>Casa de los emperadores</a>
                            </h4>
                            <p class="card-text" align="justify">La Casa de los Emperadores, lugar en el que alguna vez se hospedaron Agustín de Iturbide, en el año de 1823; y Maximiliano de Habsburgo, en 1865.</p>
                        </div>
                    </div>
                </div>


            </div>









            <%--            <!-- Project One -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/43695698.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>Catedral Tulancingo </h3>
                    <p align="justify">El Museo del Santo, El Enmascarado de Plata, cuyo verdadero nombre es Rodolfo Guzmán Huerta, uno de las figuras más emblemáticas de la Lucha Libre en nuestro País.</p>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Two -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/el-santo-en-tulancingo-1-0.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>Museo del Santo</h3>
                    <p align="justify">El Museo del Santo, El Enmascarado de Plata, cuyo verdadero nombre es Rodolfo Guzmán Huerta, uno de las figuras más emblemáticas de la Lucha Libre en nuestro País.</p>

                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Three -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/9628804_csYVslgWsHXPK2JDsaemGLQb-DR1sd_euqIQwkUhEno.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>Museo de Datos Históricos</h3>
                    <p align="justify">El Museo de Datos Históricos se inauguró a principios del año de 2000, con el fin de contar la historia de Tulancingo mediante imágenes fotográficas. Dentro de sus espacios se montan exposiciones temporales de arte.</p>

                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Four -->
            <div class="row">

                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/museo-del-ferrocarril-tulancingo-1.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>Museo del Ferrocarril</h3>
                    <p align="justify">Es la antigua estación ferroviaria de Tulancingo, que muestra tiempos del ferrocarril de finales del siglo XIX y principios del siglo XX, época que se transformó con este medio de transporte.</p>

                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Project Four -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/270px-Huapalcalco1.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>Zona Arqueológica de Huapalcalco</h3>
                    <p align="justify">En el sitio destaca una pirámide de tres cuerpos de influencia teotihuacana de 12 metros de base y 8 metros de alto, con un altar que posiblemente fuera usado para depósito de ofrendas y un conjunto de pinturas rupestres que datan, según estimaciones, de hace 13 mil años aproximadamente, lo que convierte a este lugar en uno de los primeros poblados de América.</p>

                </div>
            </div>
            <!-- /.row -->

            <hr>
            <!-- Project Four -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/dcee2558cd29b9e08400469817a4a0d3_XL.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>Zoológico Municipal de Tulancingo</h3>
                    <p align="justify">En el Zoológico de Tulancingo podrás conocer las 390 especies con las que cuenta el zoológico entre las que encontrarás osos, tigres, leones, jaguar negro, ocelote, llamas, cocodrilos, avestruces y pumas, además de la mascota del zoológico que es un hipopótamo.</p>

                </div>
            </div>
            <!-- /.row -->

            <hr>
            <!-- Project Four -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/161005-c1.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>Parque recreativo el Caracol</h3>
                    <p align="justify">Hace 22 años se tuvo la iniciativa de crear un espacio de convivencia familiar en donde niños, jóvenes y papás pudieran convivir, hoy, sigue siendo un lugar de convivencia familiar, el parque recreativo se ha convertido en el espacio ideal de visitantes y lugareños que a diario disfrutan de los atractivos que ofrece como la ludoteca, área de patinaje, juegos infantiles, foro al aire libre y áreas verdes.</p>
                </div>
            </div>
            <!-- /.row -->

            <hr>
            <!-- Project Four -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/15949284465_4f0f21ae3e.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>Iglesia de los Angelitos</h3>
                    <p align="justify">
                        <ul>
                            <li>1736: Nace la devoción a la imagen de la virgen de los ángeles.</li>
                            <li>1790: Se declara Virgen de los Ángeles</li>
                            <li>1862: Se nombra patrona de la Diócesis de Tulancingo</li>
                            <li>1878: Se inicia la construcción del templo</li>
                        </ul>
                    </p>
                </div>
            </div>
            <!-- /.row -->
            <hr>
            <!-- Project Four -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-fluid mb-3 mb-md-0" style="width: 630px; height: 300px" src="../Imagenes/IMG_3141-e1524014202595-800x445.jpg" />
                    </a>
                </div>
                <div class="col-md-5">
                    <h3>9.	Casa de los emperadores</h3>
                    <p align="justify">
                        La Casa de los Emperadores, lugar en el que alguna vez se hospedaron Agustín de Iturbide, en el año de 1823; y Maximiliano de Habsburgo, en 1865.
                    </p>
                </div>
            </div>--%>
            <!-- /.row -->
            <hr>
        </section>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="Terminos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Aceptar Terminos y Condiciones</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    1->La empresa se compromete a pagar mensualmente y esta de acuerdo en cancelar la subscripccion
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>

            </div>
        </div>
    </div>
    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="scripts/bootstrap.bundle.min.js"></script>
    <script src="scripts/jquery.min.js"></script>

</body>
</html>
