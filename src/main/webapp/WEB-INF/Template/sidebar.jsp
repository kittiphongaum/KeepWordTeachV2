<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<nav
	class="w3-sidebar w3-bar-block w3-collapse w3-white w3-animate-left w3-card"
	style="z-index: 3; width: 20%;" id="mySidebar">
<!-- 	  <a href="javascript:void(0)"
		class="w3-bar-item w3-button w3-border-bottom w3-large"><img
		src="" style="width: 60%;"></a>
		 <a href="javascript:void(0)"
		onclick="w3_close()" title="Close Sidemenu"
		class="w3-bar-item w3-button w3-hide-large w3-large">Close
		 <i class="fa fa-remove"></i></a> 
		 <a href="javascript:void(0)"
		class="w3-bar-item w3-button w3-dark-grey w3-button w3-hover-black w3-left-align"
		onclick="document.getElementById('id01').style.display='block'">New
		Message <i class="w3-padding fa fa-pencil"></i>
	</a>  -->
	<!-- <a id="myBtn" onclick="myFunc('Demo1')" href="javascript:void(0)" class="w3-bar-item w3-button">
	<i class="fa fa-inbox w3-margin-right">
	</i>Inbox (3)<i class="fa fa-caret-down w3-margin-left"></i></a>
	<div id="Demo1" class="w3-hide w3-animate-left">
		<a href="javascript:void(0)"
			class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey"
			onclick="openMail('Borge');w3_close();" id="firstTab">
			<div class="w3-container">
				<img class="w3-round w3-margin-right" src="/w3images/avatar3.png"
					style="width: 15%;"><span class="w3-opacity w3-large">Borge
					Refsnes</span>
				<h6>Subject: Remember Me</h6>
				<p></p>
			</div>
		</a>
		 <a href="javascript:void(0)"
			class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey"
			onclick="openMail('Jane');w3_close();">
			<div class="w3-container">
				<img class="w3-round w3-margin-right" src="/w3images/avatar5.png"
					style="width: 15%;"><span class="w3-opacity w3-large">Jane
					Doe</span>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit...</p>
			</div>
		</a> <a href="javascript:void(0)"
			class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey"
			onclick="openMail('John');w3_close();">
			<div class="w3-container">
				<img class="w3-round w3-margin-right" src="/w3images/avatar2.png"
					style="width: 15%;"><span class="w3-opacity w3-large">John
					Doe</span>
				<p>Welcome!</p>
			</div>
		</a>
	</div>  -->

	 <a href="javascript:void(0)"
		class="w3-bar-item w3-button w3-dark-grey w3-button w3-hover-black w3-left-align"
		onclick="display='block'">Profile <i ></i>
	</a> 
	<div id="myBtn" href="javascript:void(0)" onclick="myFunc()">
	<a href="javascript:void(0)"
		class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey"
		onclick="openMail('Jane');w3_close();">
		<div class="w3-container">
			<span class="w3-opacity w3-large">ตารางสอน</span>

		</div>
	</a> <a href="javascript:void(0)"
		class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey"
		onclick="openMail('teaching');w3_close();">
		<div class="w3-container">
			<span class="w3-opacity w3-large">เบิกค่าสอน</span>

		</div>
	</a> <a href="javascript:void(0)"
		class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey"
		onclick="openMail('Teacher');w3_close();">
		<div class="w3-container">
			<span class="w3-opacity w3-large">ข้อมูลผู้ใช้</span>

		</div>
	</a>
</div>
</nav>