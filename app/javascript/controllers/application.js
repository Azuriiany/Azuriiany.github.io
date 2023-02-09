import { Application } from "@hotwired/stimulus"
//= require popper
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }


$(document).ready(function() {
  $('#summernote').summernote();
  console.log('coucou')
});