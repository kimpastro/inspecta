import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.element.classList.add('fade-in');
  }
  
  disconnect() {
    this.element.classList.add('fade-out');
    setTimeout(() => {
      this.element.remove();
    }, 1000);
  }

}
