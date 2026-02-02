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

    reset(event) {
        event.preventDefault()

        document.querySelectorAll('[data-food-item-card]').forEach(label => {
            label.classList.remove('selected')
            const checkbox = label.querySelector('input[type="checkbox"]')
            if (checkbox) {
                checkbox.checked = false
            }
        })

        // Submit the form to update nutrition facts
        const form = event.target.closest('form')
        if (form) {
            form.requestSubmit()
        }
    }
}
