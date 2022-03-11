import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
import MapboxDirections from '@mapbox/mapbox-gl-directions/dist/mapbox-gl-directions'
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/rileybenjamin/cl0ba40e7002314v2pq1a0kac"
    })

    this.map.addControl(new MapboxDirections({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl,
      profile: 'mapbox/walking',
      unit: 'metric',
      directions: 'top-left'
    }))
    this.#getDirections()


    this.#addMarkersToMap()
    this.#fitMapToMarkers()



  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      let url;
      //console.log(marker)
      if (marker.category == "yoga") {
        url="https://www.svgrepo.com/show/67653/buddhist-yoga-pose.svg"
        }
        else if (marker.category == "cowork") {
        url="https://cdn-icons-png.flaticon.com/512/1965/1965701.png"
        }
        else if (marker.category == "grocery") {
        url="https://png.pngitem.com/pimgs/s/20-202999_grocery-store-icon-png-shop-icon-transparent-png.png"
        }
        else if (marker.category == "gyms") {
        url="https://icon-library.com/images/gym-icon/gym-icon-10.jpg"
        }
        else if (marker.category == "cafes") {
        url="https://www.svgrepo.com/show/56061/latte.svg"
        }
        else if (marker.category == "coliving") {
        url="https://cdn.iconscout.com/icon/premium/png-512-thumb/co-living-2690700-2234394.png"
        }
        else if (marker.category == "nightlife") {
        url="https://www.svgrepo.com/show/190609/disco-ball-disco.svg"
        }
        else if (marker.category == "restaurants") {
        url="https://www.svgrepo.com/show/160848/knife-and-fork-in-a-square-for-interface-symbol-for-restaurants.svg"
        }
      // Create a HTML element for your custom marker
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${url}')`
      customMarker.style.backgroundSize = "cover"
      customMarker.style.width = "50px"
      customMarker.style.height = "50px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #getDirections(){
    console.log(this.markersValue)
    const start = [ this.markersValue[0].lng,this.markersValue[0].lat ];
    const lastMarker = this.markersValue[this.markersValue.length -1];
    const endpoint = [lastMarker.lng, lastMarker.lat];
    const map = this.map;
    let wayCoords = []
    this.markersValue.slice(0,-1).forEach((element) => {
      wayCoords.push(`${element.lng + "%2C" + element.lat + "%3B"}`)
    });
    wayCoords.push(`${lastMarker.lng + "%2C" + lastMarker.lat}`);
    let waypoints = wayCoords.join('');
    console.log(waypoints)


    // -8.590245 % 2C41.150756 % 3B-8.612786 % 2C41.148264 % 3B - 8.617216 % 2C41.157438
    //api.mapbox.com/directions/v5/mapbox/walking/-9.158779%2C38.738893%3B-9.1501%2C38.739055?continue_straight=false&geometries=geojson&language=en&overview=simplified&steps=true&access_token

    async function getRoute(end) {
      // make a directions request using cycling profile
      // an arbitrary start will always be the same
      // only the end or destination will change
      const query = await fetch(
        `https://api.mapbox.com/directions/v5/mapbox/walking/${waypoints}?alternatives=true&continue_straight=true&geometries=geojson&language=en&overview=simplified&steps=true&access_token=${mapboxgl.accessToken}`,
        { method: 'GET' }
      );

      const json = await query.json();
      const data = json.routes[0];
      const route = data.geometry.coordinates;
      const geojson = {
        type: 'Feature',
        properties: {},
        geometry: {
          type: 'LineString',
          coordinates: route
        }
      };
      // if the route already exists on the map, we'll reset it using setData
      if (map.getSource('route')) {
        map.getSource('route').setData(geojson);
      }
      // otherwise, we'll make a new request
      else {
        map.addLayer({
          id: 'route',
          type: 'line',
          source: {
            type: 'geojson',
            data: geojson
          },
          layout: {
            'line-join': 'round',
            'line-cap': 'round'
          },
          paint: {
            'line-color': '#3887be',
            'line-width': 5,
            'line-opacity': 0.75
          }
        });
      }
      const instructions = document.getElementById('instructions');
      const steps = data.legs[0].steps;

      let tripInstructions = '';
      for (const step of steps) {
        tripInstructions += `<li>${step.maneuver.instruction}</li>`;
      }
      instructions.innerHTML = `<p><strong>Trip duration: ${Math.floor(
        data.duration / 60
      )} min 🚶‍♂️ </strong></p><ol>${tripInstructions}</ol>`;
    }

    map.on('load', () => {
      // make an initial directions request that
      // starts and ends at the same location
      getRoute(start);

      // Add starting point to the map
      map.addLayer({
        id: 'point',
        type: 'circle',
        source: {
          type: 'geojson',
          data: {
            type: 'FeatureCollection',
            features: [
              {
                type: 'Feature',
                properties: {},
                geometry: {
                  type: 'Point',
                  coordinates: start
                }
              }
            ]
          }
        },
        paint: {
          'circle-radius': 10,
          'circle-color': '#3887be'
        }
      });
      const coords = endpoint;
      const end = {
        type: 'FeatureCollection',
        features: [
          {
            type: 'Feature',
            properties: {},
            geometry: {
              type: 'Point',
              coordinates: coords
            }
          }
        ]
      };
      if (map.getLayer('end')) {
        map.getSource('end').setData(end);
      }
      getRoute(coords);

      // reload map
       var refreshBuilder = MapboxDirectionsRefresh.builder()
        .accessToken(accessToken)
        .requestId(route.routeOptions()?.requestUuid())
        .legIndex(legIndex)
      //reload map
      map.on('click', (event) => {

        const coords = Object.keys(event.lngLat).map((key) => event.lngLat[key]);
        const end = {
          type: 'FeatureCollection',
          features: [
            {
              type: 'Feature',
              properties: {},
              geometry: {
                type: 'Point',
                coordinates: coords
              }
            }
          ]
        };
        console.log(coords);
        console.log(end)
        if (map.getLayer('end')) {
          map.getSource('end').setData(end);
        } else {
          map.addLayer({
            id: 'end',
            type: 'circle',
            source: {
              type: 'geojson',
              data: {
                type: 'FeatureCollection',
                features: [
                  {
                    type: 'Feature',
                    properties: {},
                    geometry: {
                      type: 'Point',
                      coordinates: coords
                    }
                  }
                ]
              }
            },
            paint: {
              'circle-radius': 10,
              'circle-color': '#f30'
            }
          });
        }
        getRoute(coords);
      });
    });
  }


}
