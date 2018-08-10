google.maps.event.addDomListener(window, "load", function () {


    const ubicacion = new Localizacion(() => {

        const myLatlng = { lat: ubicacion.latitude, lng: ubicacion.longitude };

        const options = {
            center: myLatlng,
            zoom: 15
        }
        var map = document.getElementById('map');

        const mapa = new google.maps.Map(map, options);
        const marcador = new google.maps.Marker({
            position: myLatlng,
            map: mapa,
            draggable: true
        });

        var geocoder = new google.maps.Geocoder;
        var infowindow = new google.maps.InfoWindow;

        marcador.addListener('dragend', function (event) {
            document.getElementById("coords").value = this.getPosition().lat() + "," + this.getPosition().lng();

            geocodeLatLng(geocoder, mapa, infowindow);
        });


        var informacion = new google.maps.InfoWindow();
        marcador.addListener('click', function () {
            informacion.open(mapa, marcador);
        });

        var autocomplete = document.getElementById('autocomplete');
        const search = new google.maps.places.Autocomplete(autocomplete);
        search.bindTo("bound", mapa);

        search.addListener('place_changed', function () {

            informacion.close();
            marcador.setVisible(false);

            var place = search.getPlace();

            if (!place.geometry.viewport) {
                window.alert('Error al mostra el lugar');
                return;
            }
            if (place.geometry.viewport) {
                mapa.fitBounds(place.geometry.viewport);

            }
            else {
                mapa.setCenter(place.geometry.location);
                mapa.setZoom(15);
            }
            marcador.setPosition(place.geometry.location);
            marcador.setVisible(true);

        });
    });



    function geocodeLatLng(geocoder, map, infowindow) {
        var input = document.getElementById("coords").value;
        var latlngStr = input.split(',', 2);
        var latlng = { lat: parseFloat(latlngStr[0]), lng: parseFloat(latlngStr[1]) };
        geocoder.geocode({ 'location': latlng }, function (results, status) {
            if (status === 'OK') {
                if (results[0]) {
                    map.setZoom(10);
                    marcador = new google.maps.Marker({
                        position: latlng,
                        map: map,
                        draggable: true
                    });
                    var x = document.getElementById('extra');
                    x.value = results[0].formatted_address;
                    marcador.setVisible(false);
                } else {
                    window.alert('No se encontraron resultados');
                }
            } else {
                window.alert('Fallo debido a : ' + status);
            }
        });
    }
});
