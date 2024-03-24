import { Controller } from "@hotwired/stimulus"
import debounce from "debounce"

export default class extends Controller {
  initialize(){
    this.search = debounce(this.search.bind(this), 300)
  }
  search() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      this.element.requestSubmit()
    }, 200)
  }
}
