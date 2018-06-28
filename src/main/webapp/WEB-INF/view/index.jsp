<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/css/w3.css" href="/css/calender.less">
<link href='https://fonts.googleapis.com/css?family=RobotoDraft' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"src="/js/calendar.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<link rel="stylesheet"
	
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"

	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
<style>

html,body,h1,h2,h3,h4,h5 {font-family: "RobotoDraft", "Roboto", sans-serif}
.w3-bar-block .w3-bar-item {padding: 16px}
</style>
</head>
<body class="w3-light-grey">
 <!-- Side Navigation -->
    <%@include file="../Template/sidebar.jsp" %>



<!-- Modal that pops up when you click on "New Message" -->
<div id="id01" class="w3-modal" style="z-index:4">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-padding w3-red">
       <span onclick="document.getElementById('id01').style.display='none'"
       class="w3-button w3-red w3-right w3-xxlarge"><i class="fa fa-remove"></i></span>
      <h2>Send Mail</h2>
    </div>
    <div class="w3-panel">
      <label>To</label>
      <input class="w3-input w3-border w3-margin-bottom" type="text">
      <label>From</label>
      <input class="w3-input w3-border w3-margin-bottom" type="text">
      <label>Subject</label>
      <input class="w3-input w3-border w3-margin-bottom" type="text">
      <input class="w3-input w3-border w3-margin-bottom" style="height:150px" placeholder="What's on your mind?">
      <div class="w3-section">
        <a class="w3-button w3-red" onclick="document.getElementById('id01').style.display='none'">Cancel  <i class="fa fa-remove"></i></a>
        <a class="w3-button w3-light-grey w3-right" onclick="document.getElementById('id01').style.display='none'">Send  <i class="fa fa-paper-plane"></i></a> 
      </div>    
    </div>
  </div>
</div>

<!-- Overlay effect when opening the side navigation on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="Close Sidemenu" id="myOverlay"></div>

<!-- Page content -->
<div class="w3-main" style="margin-left:20%;">
<i class="fa fa-bars w3-button w3-white w3-hide-large w3-xlarge w3-margin-left w3-margin-top" onclick="w3_open()"></i>
<a href="javascript:void(0)" class="w3-hide-large w3-red w3-button w3-right w3-margin-top w3-margin-right" onclick="document.getElementById('id01').style.display='block'"><i class="fa fa-pencil"></i></a>

<div id="Borge1" class="w3-container person">
  <div class="w3-container w3-card w3-white w3-round w3-margin">

				<div class="col-md-12 col-sm-12">
					<a class="w3-btn  w3-border" align="right" style="background-color: rgb(105, 104, 104)">เพิ่มข้อมูลการสอนถาคปกติ >
					</a>
					<a class="w3-button  w3-border col-md-8" align="left" style="background-color: rgb(223, 221, 221)">ผลการลงทะเบียน</a>
				</div>
			</div>
</div>

<div id="Jane" class="w3-container person">
  <br>
  
   <div class="w3-container w3-card w3-white w3-round w3-margin">

				<div class="col-md-12 col-sm-12 w3-round w3-animate-top">
					<a class="w3-btn  w3-border" align="right" style="background-color: rgb(105, 104, 104)">เพิ่มข้ถาคปกติ >
					</a>
					<a class="w3-button  w3-border col-md-8" align="left" style="background-color: rgb(223, 221, 221)">ผลกงทะเบียน</a>
				</div>
			</div>
</div>

<div id="John1" class="w3-container person">
  <br>
  <img class="w3-round w3-animate-top" src="/w3images/avatar2.png" style="width:20%;">
  <h5 class="w3-opacity">Subject: None</h5>
  <h4><i class="fa fa-clock-o"></i> From John Doe, Sep 23, 2015.</h4>
  <a class="w3-button w3-light-grey">Reply<i class="w3-margin-left fa fa-mail-reply"></i></a>
  <a class="w3-button w3-light-grey">Forward<i class="w3-margin-left fa fa-arrow-right"></i></a>
  <hr>
 
</div>
<div id="Borge" class="w3-container person">
	<%@include file="calendar.jsp" %>
</div>
<div id="teaching" class="w3-container person">
 <%@include file="teaching.jsp" %>
 </div>
<!-- Teacher -->
 <div id="Teacher" class="w3-container person">
 <%@include file="teacher.jsp" %>
 </div>
<!-- Teacher -->
<!--teachingAddsubJect -->
<div id="teachingSub" class="w3-container person">
        <%@include file="teachingSub.jsp" %>
        </div>
        
<!-- teachingAddsubJect -->
 
</div>
 <%@include file="../Template/footer.jsp" %>
</body>
<script>
var openInbox = document.getElementById("myBtn");
openInbox.click();

function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}

function myFunc(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show"; 
        x.previousElementSibling.className += " w3-red";
    } else { 
        x.className = x.className.replace(" w3-show", "");
        x.previousElementSibling.className = 
        x.previousElementSibling.className.replace(" w3-red", "");
    }
}

openMail("teaching")
function openMail(personName) {
    var i;
    var x = document.getElementsByClassName("person");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    x = document.getElementsByClassName("test");
    for (i = 0; i < x.length; i++) {
       x[i].className = x[i].className.replace(" w3-light-grey", "");
    }
    document.getElementById(personName).style.display = "block";
    event.currentTarget.className += " w3-light-grey";
}
</script>

<script>
var openTab = document.getElementById("firstTab");
openTab.click();
</script>


</html>