import { Controller } from "stimulus"
import Rails from "@rails/ujs";


import Sortable from "sortablejs"

export default class extends Controller {
  static targets = ["cards"]

  connect() {
    console.log(this.cardsTarget)
    this.sortable = Sortable.create(this.cardsTarget, {
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    // let id = event.item.dataset
    let data = new FormData()
    console.log(event)
    let order = []
    document.querySelectorAll(".card-experience").forEach((element) =>
     order.push(element.id));
    console.log(order);
    // data.append(position: event.newIndex + 1)
    // Rails.ajax({
    //   url: '',
    //   type: 'PATCH',
    //   data: data
    // })
    for (var i = 0; i < order.length; i++) {
      data.append('order[]', order[i]);
    }

    console.log(...data);
  }

  send(event) {
    event.preventDefault();

    let orderform = new FormData()
    console.log(event)
    let order = []
    document.querySelectorAll(".card-experience").forEach((element) =>
      order.push(element.id));
    console.log(order);
    // data.append(position: event.newIndex + 1)
    // Rails.ajax({
    //   url: '',
    //   type: 'PATCH',
    //   data: data
    // })
    for (var i = 0; i < order.length; i++) {
      orderform.append('order[]', order[i]);
    }
    let URL = window.location.protocol + "//" + window.location.host + "/directions" + "?orders=" + order


    window.location.href = URL

  }
}
