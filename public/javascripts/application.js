// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  $('.clickable').fitted();
  $("#student_viewing").change(function () {
    $("select option:selected").each(function () {
      var student_number = this.value;
      window.location=("?student_to_view="+student_number);
    });
    //$("div").text(str);
  })
  
});
