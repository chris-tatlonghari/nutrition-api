import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    toggle(event) {
        const checkbox = event.target
        const label = checkbox.closest('[data-food-item-card]')

        if (checkbox.checked) {
            label.classList.add('selected')
        } else {
            label.classList.remove('selected')
        }
    }
}
