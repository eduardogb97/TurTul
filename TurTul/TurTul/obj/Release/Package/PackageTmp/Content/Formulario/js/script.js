$(document).ready(function(){

    document.getElementById('#<%=btnGuardar.ClientID%>').click(function(){

        var errores = '';

        // Validado Nombre ==============================
        if (document.getElementById('#<%=txtNombre.ClientID%>').val() == '' ){
            errores += '<p>Escriba un nombre</p>';
            document.getElementById('#<%=txtNombre.ClientID%>').css("border-bottom-color", "#F14B4B")
        } else{
            document.getElementById('#<%=txtNombre.ClientID%>').css("border-bottom-color", "#d1d1d1")
        }

        // Validado Correo ==============================
        if (document.getElementById('#<%=txtApellidos.ClientID%>').val == '') {
            errores += '<p>Ingrese un correo</p>';
            document.getElementById('#<%=txtApellidos.ClientID%>').css("border-bottom-color", "#F14B4B")
        } else{
            document.getElementById('#<%=txtApellidos.ClientID%>').css("border-bottom-color", "#d1d1d1")
        }


        // Validado Correo ==============================
        if (document.getElementById('#<%=txtIdUsuario.ClientID%>').val() == '') {
            errores += '<p>Ingrese un correo</p>';
            document.getElementById('#<%=txtIdUsuario.ClientID%>').css("border-bottom-color", "#F14B4B")
        } else {
            document.getElementById('#<%=txtIdUsuario.ClientID%>').css("border-bottom-color", "#d1d1d1")
        }

        // Validado Mensaje ==============================
        if (document.getElementById('#<%=txtContraseña.ClientID%>').val() == '' ){
            errores += '<p>Escriba un mensaje</p>';
            document.getElementById('#<%=txtContraseña.ClientID%>').css("border-bottom-color", "#F14B4B")
        } else{
            document.getElementById('#<%=txtContraseña.ClientID%>').css("border-bottom-color", "#d1d1d1")
        }

        // ENVIANDO MENSAJE ============================
        if( errores == '' == false){
            var mensajeModal = '<div class="modal_wrap">'+
                                    '<div class="mensaje_modal">'+
                                        '<h3>Errores encontrados</h3>'+
                                        errores+
                                        '<span id="btnClose">Cerrar</span>'+
                                    '</div>'+
                                '</div>'

            $('body').append(mensajeModal);
        }

        // CERRANDO MODAL ==============================
        $('#btnClose').click(function(){
            $('.modal_wrap').remove();
        });
    });

});
