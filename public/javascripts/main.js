$(document).ready(function() {
  $('.false').hide();
  $('#add-more-comments').click(function() {
    $('.sent-comments').hide();
    $('#send-comments').show();
  });
  $('input[placeholder],textarea[placeholder]').placeholder();
});
