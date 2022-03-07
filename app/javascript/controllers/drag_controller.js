import { Controller } from "stimulus"
import Sortable from "sortablejs"

export default class extends Controller {

  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    // let id = event.item.dataset
    let data = new FormData()
    console.log(event)
    // data.append(position: event.newIndex + 1)
    // Rails.ajax({
    //   url: '',
    //   type: 'PATCH',
    //   data: data
    // })
  }
}
