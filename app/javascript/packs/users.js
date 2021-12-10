$(document).ready(() => {
    // location field
    function addFloatingPlaceholders(id, text) {
        $(`#${id}`).val(text)
        $(`#${id}`).click(() => {
            if ($(`#${id}`).val() == text) {
                $(`#${id}`).val("")
            }
        })
    
        $(`#${id}`).focusout(() => {
            if ($(`#${id}`).val() == "") {
                $(`#${id}`).val(text)
            }
        })
    }
    addFloatingPlaceholders("location-field", "Where are you going?")
    addFloatingPlaceholders("check-in-field", "Add dates")
    addFloatingPlaceholders("check-out-field", "Add dates")
    addFloatingPlaceholders("guests-field", "How many guests?")

    // $("#location-field").val("Where are you going?")
    // $("#location-field").click(() => {
    //     if ($("#location-field").val() == "Where are you going?") {
    //         $("#location-field").val("")
    //     }
    // }) 
    
    // $("#location-field").focusout(() => {
    //     if ($("#location-field").val() == "") {
    //         $("#location-field").val("Where are you going?")
    //     }
    // })

    // dates fields
    // $("#check-in-field").val("Add dates")
    // $("#check-in-field").click(() => {
    //     if ($("#check-in-field").val() == "Add dates") {
    //         $("#check-in-field").val("")
    //     }
    // })

    // $("#check-in-field").focusout(() => {
    //     if ($("#check-in-field").val() == "") {
    //         $("#check-in-field").val("Add dates")
    //     }
    // })
})
