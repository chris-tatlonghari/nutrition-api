import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["button"]

    toggle(event) {
        const button = event.currentTarget
        const field = button.dataset.field
        const isActive = button.classList.contains('active')
        const isDesc = button.classList.contains('desc')

        let newValue

        if (isActive) {
            // Toggle direction on the same button
            if (isDesc) {
                button.classList.remove('desc')
                newValue = `${field} asc`
            } else {
                button.classList.add('desc')
                newValue = `${field} desc`
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
                newValue = `${field} asc`
            } else {
                button.classList.add('desc')
                newValue = `${field} desc`
            }
        }

        button.value = newValue

        // Update the hidden field to preserve sort state
        const hiddenField = button.form.querySelector('input[name="q[s]"]')
        if (hiddenField) {
            hiddenField.value = newValue
        }

        // Submit the form with the button as the submitter
        button.form.requestSubmit(button)
    }
}
