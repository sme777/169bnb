$(document).ready(() => {
    $(".login-btn").click((e) => {
        e.preventDefault()

        const firstNameField = $("#login-first-name-field")
        const lastNameField = $("#login-last-name-field")
        const emailField = $("#login-email-field")
        const passwordField = $("#login-password-field")
        let ready = true

        if (firstNameField.val() == "") {
            firstNameField.addClass("is-invalid")
            ready = false
        } else {
            firstNameField.removeClass("is-invalid")
        }

        if (lastNameField.val() == "") {
            lastNameField.addClass("is-invalid")
            ready = false
        } else {
            lastNameField.removeClass("is-invalid")
        }

        if (emailField.val() == "") {
            emailField.addClass("is-invalid")
            ready = false
        } else {
            emailField.removeClass("is-invalid")
        }

        if (passwordField.val() == "") {
            passwordField.addClass("is-invalid")
            ready = false
        } else {
            passwordField.removeClass("is-invalid")
        }

        if (ready) {
            $("#sign-up-form").submit()
        }
    })
})