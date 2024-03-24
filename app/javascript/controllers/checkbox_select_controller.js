import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["attendee"]

    connect(){
        this.attendeeTargets.map(x => x.checked = false)
    }

    toggleAttendee(){
        this.attendeeTargets.map(x => x.checked = true)
    }
}