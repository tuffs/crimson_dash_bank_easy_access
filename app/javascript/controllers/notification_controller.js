import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { delay: Number }

  connect() {
    this.element.style.opacity = 1; // Ensure initial visibility
    this.timeout = setTimeout(() => {
      this.fadeOut();
    }, this.delayValue || 10000);
  }

  disconnect() {
    clearTimeout(this.timeout);
  }

  dismiss() {
    event.stopImmediatePropagation();
    this.fadeOut();
  }

  fadeOut() {
    this.element.style.transition = "opacity 0.5s ease";
    this.element.style.opacity = 0;
    setTimeout(() => {
      this.element.remove();
    }, 500);
  }
}