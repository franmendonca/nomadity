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
        url="https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_yoga_-248-n_1_yydoiw.svg"

      }
      else if (marker.category == "cowork") {
        url="https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_shared_workspace_re_3gsu_gn2me7.svg"
      }
      else if (marker.category == "grocery") {
        url="https://res.cloudinary.com/di2awrsge/image/upload/v1646665175/undraw_shopping_app_flsj_zstypw.svg"
      }
      else if (marker.category == "gyms") {
        url="https://res.cloudinary.com/di2awrsge/image/upload/v1646665146/undraw_personal_trainer_ote3_bapr18.svg"
      }
      else if (marker.category == "cafes") {
        url="https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_coffee_re_x35h_v8e28j.svg"
      }
      else if (marker.category == "coliving") {
        url="https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_building_re_xfcm_arfxpa.svg"
      }
      else if (marker.category == "nightlife") {
        url="https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_wine_tasting_-30-vw_vxyh9r.svg"
      }
      else if (marker.category == "restaurants") {
        url="https://res.cloudinary.com/di2awrsge/image/upload/v1646665145/undraw_chef_cu-0-r_sa2zou.svg"
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
