import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["button"]

    toggle(event) {
        const button = event.currentTarget
        const field = button.dataset.field
        const isActive = button.classList.contains('active')
        const isDesc = button.classList.contains('desc')

        if (isActive) {
            // Toggle direction on the same button
            if (isDesc) {
                button.classList.remove('desc')
                button.value = `${field} asc`
            } else {
                button.classList.add('desc')
                button.value = `${field} desc`
            }
        } else {
            // Deactivate all buttons
            this.buttonTargets.forEach(btn => {
                btn.classList.remove('active', 'desc')
            })

            // Activate this button with appropriate default direction
            button.classList.add('active')

            // Name defaults to ascending, numeric fields default to descending
            if (field === 'name') {
                button.value = `${field} asc`
            } else {
                button.classList.add('desc')
                button.value = `${field} desc`
            }
        }

        // Submit the form
        button.form.requestSubmit()
    }
}
