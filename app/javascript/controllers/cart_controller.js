import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["details", "toggleIcon"]

    toggle(event) {
        // Prevent toggle if clicking the remove button
        if (event.target.closest('.cart-item-remove')) {
            return
        }

        const details = this.detailsTarget
        const isVisible = details.style.display !== "none"

        if (isVisible) {
            details.style.display = "none"
            this.toggleIconTarget.style.transform = "rotate(0deg)"
        } else {
            details.style.display = "block"
            this.toggleIconTarget.style.transform = "rotate(180deg)"
        }
    }

    removeItem(event) {
        event.stopPropagation()
        const itemId = event.currentTarget.dataset.itemId

        // Find and uncheck the corresponding checkbox
        const checkbox = document.querySelector(`input[type="checkbox"][value="${itemId}"]`)
        if (checkbox) {
            checkbox.checked = false

            // Trigger the toggle event to update the visual state
            const label = checkbox.closest('[data-food-item-card]')
            if (label) {
                label.classList.remove('selected')
            }

            // Submit the form to update the page
            const form = checkbox.closest('form')
            if (form) {
                form.requestSubmit()
            }
        }
    }
}
