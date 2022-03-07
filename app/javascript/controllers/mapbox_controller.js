import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

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

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.addControl(new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl
    }))
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      let url;
      console.log(marker)
      if (marker.category == "yoga") {
        url="https://cdn-icons-png.flaticon.com/512/186/186846.png"

      }
      else if (marker.category == "cowork") {
        url="https://cdn-icons.flaticon.com/png/512/1357/premium/1357622.png?token=exp=1646653774~hmac=4bfafe30609ec5d77106036764c67b3d"
      }
      else if (marker.category == "grocery") {
        url="https://cdn-icons-png.flaticon.com/512/579/579427.png"
      }
      else if (marker.category == "gyms") {
        url="https://cdn-icons-png.flaticon.com/512/2936/2936886.png"
      }
      else if (marker.category == "cafes") {
        url="https://cdn-icons-png.flaticon.com/512/3232/3232426.png"
      }
      else if (marker.category == "coliving") {
        url="https://st2.depositphotos.com/5394392/11923/v/450/depositphotos_119236694-stock-illustration-friends-icon-group-of-people.jpg"
      }
      else if (marker.category == "nightlife") {
        url="https://cdn-icons.flaticon.com/png/512/281/premium/281462.png?token=exp=1646654123~hmac=da254bede7cd3b5b27dc97bef9d49ceb"
      }
      else if (marker.category == "restaurants") {
        url="https://cdn1.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/eat-circle-orange-512.png"
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
}
