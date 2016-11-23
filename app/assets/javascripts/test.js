function displayMap(lat, lng) {
  var point = { lat: lat, lng: lng };

  // Create a map object and specify the DOM element for display.
  var map = new google.maps.Map(document.getElementById('map'), {
    center: point,
    zoom: 14
  });

  // Create a marker and set its position.
  var marker = new google.maps.Marker({
    map: map,
    position: point
  });
}

function handleGeocodingResult(data) {
  // data['results'] is an Array (several matches possible from 1 address)
  var firstResult = data['results'][0];

  if (firstResult['geometry']) {
    // Take the first one, extrat lat and lng
    var latitude = firstResult['geometry']['location']['lat'];
    var longitude = firstResult['geometry']['location']['lng'];

    // Display coordinates
    $('#results').html(latitude + ', ' + longitude);

    // Display map
    displayMap(latitude, longitude);
  } else {
    $('#results').html('Could not geocode.');
    $('#map').html('');
  }
}

$(document).ready(function() {
  $('#geocode').on('submit', function(e) {
    e.preventDefault();  // Do not submit the form via HTTP

    // Ask Google Geocoding API for coordinates
    $.ajax({
      type: 'GET',
      url: 'http://maps.googleapis.com/maps/api/geocode/json',
      data: { address: $('#address').val() },
      success: function(data) {
        handleGeocodingResult(data);
      }
    });
  })
})
