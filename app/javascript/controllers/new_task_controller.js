import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="new-task"
export default class extends Controller {
  static targets = ["newTaskForm", "addIcon", "overlay"]

  toggleForm() {
    this.newTaskFormTarget.classList.toggle("translate-x-full")
    this.newTaskFormTarget.classList.toggle("translate-x-0")

    const addIcon = this.addIconTarget.classList

    addIcon.add("opacity-0")

    setTimeout(() => {
      if (addIcon.contains("fa-plus")) {
        addIcon.remove("fa-plus")
        addIcon.add("fa-xmark", "px-0.5")
      } else {
        addIcon.remove("fa-xmark", "px-0.5")
        addIcon.add("fa-plus")
      }
      addIcon.remove("opacity-0")
    }, 150);

    this.overlayTarget.classList.toggle("opacity-0");
    this.overlayTarget.classList.toggle("pointer-events-none")
  }
}
