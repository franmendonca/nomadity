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
      console.log(marker)
      if (marker.category == "yoga") {
        url = "https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_yoga_-248-n_1_yydoiw.svg"

      }
      else if (marker.category == "cowork") {
        url = "https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_shared_workspace_re_3gsu_gn2me7.svg"
      }
      else if (marker.category == "grocery") {
        url = "https://res.cloudinary.com/di2awrsge/image/upload/v1646665175/undraw_shopping_app_flsj_zstypw.svg"
      }
      else if (marker.category == "gyms") {
        url = "https://res.cloudinary.com/di2awrsge/image/upload/v1646665146/undraw_personal_trainer_ote3_bapr18.svg"
      }
      else if (marker.category == "cafes") {
        url = "https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_coffee_re_x35h_v8e28j.svg"
      }
      else if (marker.category == "coliving") {
        url = "https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_building_re_xfcm_arfxpa.svg"
      }
      else if (marker.category == "nightlife") {
        url = "https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_wine_tasting_-30-vw_vxyh9r.svg"
      }
      else if (marker.category == "restaurants") {
        url = "https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_chef_cu-0-r_sa2zou.svg"
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
    const start = [ this.markersValue[0].lng,this.markersValue[0].lat ];
    const endpoint = [this.markersValue[1].lng, this.markersValue[1].lat];
    const map = this.map;

    async function getRoute(end) {
      // make a directions request using cycling profile
      // an arbitrary start will always be the same
      // only the end or destination will change
      const query = await fetch(
        `https://api.mapbox.com/directions/v5/mapbox/walking/${start[0]},${start[1]};${end[0]},${end[1]}?steps=true&geometries=geojson&access_token=${mapboxgl.accessToken}`,
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
      )} min 🚴 </strong></p><ol>${tripInstructions}</ol>`;
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
