import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-task"
export default class extends Controller {
  static targets = ["newTaskForm"]

  toggleForm() {
    this.newTaskFormTarget.classList.toggle("translate-x-full")
    this.newTaskFormTarget.classList.toggle("translate-x-0")
  }
}
