import { Controller } from "stimulus"
import { csrfToken } from "@rails/ujs"

export default class extends Controller {
  static targets = ["button"]
  static values = {url: String, verb: String}

  connect() {
    console.log("I've connected to a heart")
    console.log(this.buttonTarget)
  }

  send() {
    const url = this.urlValue
    fetch(url, {
      method: this.verbValue,
      headers: { "Accept": "text/plain", "X-CSRF-Token": csrfToken()
    }
  })
  .then(response => response.text())
  .then((data)=> {
    this.buttonTarget.outerHTML=data
  })
}
}
