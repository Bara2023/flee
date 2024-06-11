import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="switch"
export default class extends Controller {

  static targets = ["programme", "participants", "onglet1", "onglet2"]

  connect() {

    console.log("coucou!");
  }

  programme(){
    this.programmeTarget.classList.remove("d-none")
    this.participantsTarget.classList.add("d-none")
    this.onglet1Target.classList.add("selectedpartial")
    this.onglet2Target.classList.remove("selectedpartial")
    this.onglet1Target.classList.remove("unselectedpartial")
    this.onglet2Target.classList.add("unselectedpartial")
  }

  participants(){
    this.programmeTarget.classList.add("d-none")
    this.participantsTarget.classList.remove("d-none")
    this.onglet2Target.classList.add("selectedpartial")
    this.onglet1Target.classList.remove("selectedpartial")
    this.onglet1Target.classList.add("unselectedpartial")
    this.onglet2Target.classList.remove("unselectedpartial")
  }
}
