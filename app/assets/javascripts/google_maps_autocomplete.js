$(document).ready(function() {
  var location_address = $('#location_address').get(0);

  if (location_address) {
    var autocomplete = new google.maps.places.Autocomplete(location_address, { types: ['geocode'] });
    google.maps.event.addDomListener(location_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});
