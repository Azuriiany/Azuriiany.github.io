//= link_tree ../images
//= link_tree ../builds
//= link_tree ../stylesheets
//= link wysywig.css

$(document).ready(function() {
  $('#summernote').summernote();
  
  $('#post_color').on('change', function() {
    $('#custom-form').removeClass();
    $('#custom-form').addClass(this.value).trigger('classChange');
  });

});