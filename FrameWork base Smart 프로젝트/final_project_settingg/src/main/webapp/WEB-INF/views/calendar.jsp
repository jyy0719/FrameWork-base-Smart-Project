<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='lib/main.css' rel='stylesheet' />
<script src='lib/main.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth'
        // timeGridWeek,timeGridDay,listMonth  이거 넣으면 주간 , 일간 관리 가능
      },
      initialDate: '2020-09-12',
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
      selectable: true,
      events: [
        {
          title: '같이달려요 정기 모임 , 3박 4일',
          start: '2020-03-20T13:00:00',
          constraint: 'businessHours',
          end  : '2020-03-24T13:00:00',
        },
        {
          title: '코딩 스터디 모임 ',
          start: '2020-03-20T13:00:00',
          constraint: 'availableForMeeting', // defined below
          color: '#257e4a'
        },
        {
          title: 'Conference',
          start: '2020-04-18',
          end: '2020-04-20'
        },


        // areas where "Meeting" must be dropped
        {
          groupId: 'availableForMeeting',
          start: '2020-04-11T10:00:00',
          end: '2020-04-11T16:00:00',
          display: 'background'
        },
        {
          groupId: 'availableForMeeting',
          start: '2020-09-11T10:00:00',
          end: '2020-09-13T16:00:00',
          display: 'background'
        },

        // red areas where no events can be dropped
        {
          start: '2020-09-24',
          end: '2020-09-28',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        },
        {
          start: '2020-09-06',
          end: '2020-09-08',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        }
      ]
    });

    calendar.render();
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    /* font-family: Arial, Helvetica Neue, Helvetica, sans-serif; 우리껄로 적용하기  */
    font-size: 14px;
  }

  #calendar {
    max-width: 1140px;
    margin: 0 auto;
  }

</style>
<title>글 상세</title>
</head>
<body>

  <div id='calendar'></div>

</body>
</html>

















