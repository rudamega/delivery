import { executeMap } from './mapboxgl';

const location = () => {
  if (document.getElementById("location") == null) {
  } else {
    const latitud = document.getElementById("latitud");
    const longitud = document.getElementById("longitud");
     document.getElementById("location").addEventListener('click', () => {
      navigator.geolocation.getCurrentPosition((data) => {
        console.log(data);
        console.log(data["coords"]["latitude"]);
        console.log(data["coords"]["longitude"]);
        latitud.value = data["coords"]["latitude"];
        longitud.value = data["coords"]["longitude"];
        const longitude = data["coords"]["latitude"];
        const latitude = data["coords"]["longitude"];
        executeMap([longitude, latitude]);
      });
    });
    };
  };


export { location };

