class Localizacion{
	constructor(callback){
		if(navigator.geolocation){
			navigator.geolocation.getCurrentPosition((position)=>{
				this.latitude=position.coords.latitude;
				this.longitude=position.coords.longitude;
				callback();
			});
		}
		else{
			alert("No soporta geolocalizacion");
		}
	}
}