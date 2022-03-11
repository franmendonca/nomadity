import { Controller } from "stimulus"

export default class extends Controller {

  connect() {
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    document.getElementById(urlParams.get('category')).classList.add("active-cat")
  }
}
