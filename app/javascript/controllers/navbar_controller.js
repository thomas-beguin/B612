import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navbar"]

  connect() {
    this.lastPosition = 0
    this.bottom = 0
  }

  hide() {
    this.currentPosition = window.scrollY
    if (this.currentPosition > this.lastPosition) {
      console.log(this.currentPosition)
      this.navbarTarget.classList.add("hide")
    } else {
      this.navbarTarget.classList.remove("hide")
    }
    this.lastPosition = window.scrollY
  }
}
