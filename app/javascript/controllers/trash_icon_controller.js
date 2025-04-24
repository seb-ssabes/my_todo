import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="trash-icon"
export default class extends Controller {
  static targets = ["icon", "task"]

  connect() {
    console.log("Hola from trash icon controller")
  }

  showIcon(e) {
    console.log("show one icon")
    e.stopPropagation()

    this.iconTargets.forEach((icon) => icon.classList.add("invisible"))

    const clickedTask = e.currentTarget

    const icon = clickedTask.closest("li").querySelector("[data-trash-icon-target='icon']")

    if (icon) icon.classList.remove("invisible")
  }

  hideAllIcons() {
    console.log("hide all icons")
    this.iconTargets.forEach((icon) => icon.classList.add("invisible"))
  }
}
