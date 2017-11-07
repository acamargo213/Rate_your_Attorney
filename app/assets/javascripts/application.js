// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



$(document).ready(function() {
  var $ratingSection = $('div.star-rating');
  $ratingSection.on('click', 'span[data-stars]', function(event) {
    var $clickedStarSpan = $(event.currentTarget);
    var ratedStars = $clickedStarSpan.data('stars');
    console.log(ratedStars);
    $ratingSection.find('input[type="hidden"]').val(ratedStars);
    var $allStars = $ratingSection.find('span[data-stars]')
    $allStars.removeClass('selected');
    $allStars.each(function(index, element) {
      var $starSpan = $(element);
      if ($starSpan.data('stars') <= ratedStars) {
        $starSpan.addClass('selected');
      }
    });
  });
});




