import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="like-travels"
export default class extends Controller {

  static values = {
    id: String,
    search: String
  }

  connect() {
    console.log("coucou!")
  }

  liked() {
    console.log("clicked")

    console.log(this.idValue)

    fetch(`/fav/${this.idValue}?search=${this.searchValue}`, {
      method: "get",
      headers: { "Accept": "application/json" }
    })
      .then(response => response.json())
      .then((data) => {
        this.element.classList.toggle("fa-regular")
      })
  }

}
