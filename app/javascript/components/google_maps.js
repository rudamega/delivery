
// Initialize and add the map
const initMap = (latilong) => {
  // The location of Uluru
  let uluru = {lat: latilong[1], lng: latilong[0]};
  // The map, centered at Uluru
  let map = new google.maps.Map(
      document.getElementById('map'), {zoom: 15, center: uluru});
  // The marker, positioned at Uluru
  let marker = new google.maps.Marker({position: uluru, map: map});
}

export { initMap };
