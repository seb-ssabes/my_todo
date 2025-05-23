import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="expand"
export default class extends Controller {
  static targets = ["tasksList", "icon"]

  connect() {
    console.log("arigato")
    this.tasksListTarget.classList.add("hidden")
  }

  showSection() {
    this.tasksListTarget.classList.toggle("hidden")

    this.iconTarget.classList.toggle("fa-angle-right")
    this.iconTarget.classList.toggle("fa-angle-down")
  }
}
