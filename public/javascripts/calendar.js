$(document).ready(function() {

  var date = new Date(2079, 5, 24);
  var d = date.getDate();
  var m = date.getMonth();
  var y = date.getFullYear();

  $('.calendar').fullCalendar({
    year: y,
    month: m,
    date: d,
    weekends: false,
    weekMode: 'liquid',
    editable: false,
    eventColor: '#FEFA95',
    eventTextColor: 'black',
    header : {
      center:   '',
      right:   '',
      left: 'title',
    },
    events: [
    {
      title: 'Absent',
      start: new Date(y, m, 1),
      allDay: true
    },
    {
      id: 999,
      title: 'Late',
      start: new Date(y, m, d+4, 16, 0),
      allDay: false
    }
    ]
  });

});

