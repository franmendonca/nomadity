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

  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      let url;
      console.log(marker)
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
        url="https://www.svgrepo.com/show/55894/gymnast-using-gym-equipment.svg"
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
      customMarker.style.width = "35px"
      customMarker.style.height = "35px"

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
