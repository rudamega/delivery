import mapboxgl from 'mapbox-gl';

mapboxgl.accessToken = 'pk.eyJ1IjoicnVkYW1lZ2EiLCJhIjoiY2tjd2Yzemd4MDBwODJxcWNldWw1bjl1dyJ9.YYB0BTesfB4w7l0lmbwRYQ';
const executeMap = (latiLong) => {
const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/streets-v9',
  center: latiLong,
  zoom: 12
});
  new mapboxgl.Marker()
  .setLngLat(latiLong)
  .addTo(map)
}
export { executeMap };
