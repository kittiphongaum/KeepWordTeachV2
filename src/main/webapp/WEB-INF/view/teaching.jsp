<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

	<div class="w3-container w3-card w3-white ">
		<div class="row">
				<a class="w3-btn  w3-border col-md-7" align="left" style="background-color: rgb(18, 209, 235)">ลงทะเบียนวิชาสอน</a>

			<a class="w3-btn  w3-border col-md-3 " align="right" style="background-color: rgb(33, 214, 145)">บันทึกรายวิชา >
			</a>
					<a class="w3-btn  w3-border col-md-2" align="right" style="background-color: rgb(8, 245, 79)">บันทึกและพิมพ์ >
						</a>
		</div>
	
	</div>

	<div class="w3-container w3-card w3-white w3-round w3-margin">


		<div class=" col-md-12">
			<div class="form-group" align="right">
				<div class="col-md-12 col-sm-12">
					<button name="submitFormPayment" type="button" id="submitFormPayment" class="btn btn-success btn-lg" onclick="openMail('teachingSub');w3_close();">
						<span class="glyphicon glyphicon-share"> บันทึกและถัดไป</span>
					</button>
				</div>
			</div>
		</div>
		<div class="w3-container w3-card w3-white w3-round w3-margin">
			<p>เงินค่าสอนพิเศษ</p>
			<div class="col-md-12" style="left: 5%">
				<div class="col-md-4">
					
						<label  class="containerradio">อาจารย์ข้าราชการประจำ
							<input type="radio" checked="checked" name="radio" value=""> 
							<span class="checkmark"></span>
						</label>
				
				</div>
				<div class="col-md-4">
					
						<label  class="containerradio">อาจารย์พิเศษ
							<input type="radio" name="radio" value=""> 
							<span class="checkmark"></span>
						</label>
					
				</div>
				<div class="col-md-4">
					
						<label class="containerradio">พนักงานมหาวิทยาลัย
							<input type="radio" name="radio" value=""> 
							<span class="checkmark"></span>
						</label>
					
				</div>
			</div>
			<div class="col-md-12" style="left: 5%">

				<div class="col-md-4">
					
						<label class="containerradio">
							<input type="radio" name="radio" value=""> บุคลสายวิชาการ(อาจารย์อัตราจ้าง)
							<span class="checkmark"></span>
						</label>
					
				</div>
				<div class="col-md-5">
				
						<label class="containerradio">
							<input type="radio" name="radio" value=""> บุคลสายวิชาการ(ข้าราชการเกษียณอายุราชการ)
							<span class="checkmark"></span>
						</label>
					
				</div>
			</div>

		</div>



		<div class="w3-container w3-card w3-white w3-round w3-margin">
			<!-- 	<div style="background-color: rgb(3, 169, 249)">บันทึกการสอน</div> -->

			<div class=" col-md-12">
				<div class="form-group" align="left">
					<div class="col-md-12 col-sm-12">
						<button name="submitFormPayment" type="button" id="submitFormPayment" class="btn btn-success btn-lg" onclick="submitForm()">
							<span class="glyphicon glyphicon-share"> เพิ่มวิชาที่สอน</span>
						</button>
					</div>
				</div>
			</div>

			<div class="col-md-12" style="top: 50%">
				<div class="col-md-6">
					<div class="form-group" align="left">
						<div class="form-group row">
							<label for="colFormLabelSm" class="col-sm-4 col-form-label ">รหัสวิชา</label>
							<div class="col-sm-6">
								<input type="text" class="form-control form-control-sm" id="subjectID" placeholder="รหัสวิชา">
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-12">
				<div class="form-group row" align="left">
					<label for="colFormLabelSm" class="col-md-2 col-form-label ">จำนวนหน่วยกิจ</label>

					<label for="colFormLabelSm" class="col-md-1 col-form-label ">นก.</label>
					<div class="col-sm-2">
						<input type="text" class="form-control form-control-sm" id="credit" placeholder="00">
					</div>
					<label for="creditHour" class="col-md-1 col-form-label ">ซม.</label>
					<div class="col-sm-2">
						<input type="text" class="form-control form-control-sm" id="creditHour" placeholder="0-0-0">
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="col-md-6">
					<div class="form-group row" align="left">
						<label for="colFormLabelSm" class="col-sm-5 col-form-label ">จำนวนนักศึกษา</label>
						<div class="col-sm-4">
							<input type="text" class="form-control form-control-sm" id="studentNum" placeholder="00">
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="form-group row" align="left">
						<label for="colFormLabelSm" class="col-md-3 col-form-label ">Section</label>
						<div class="col-sm-3">
							<input type="text" class="form-control form-control-sm" id="section" placeholder="00">
						</div>
					</div>
				</div>
			</div>
			<div class=" col-md-12">
				<div class="form-group" align="right">
					<div class="col-md-12 col-sm-12">
						<button name="submitFormPayment" type="button" class="btn btn-success btn-lg" onclick=" insertSubjectfrom()">
							<span class="glyphicon glyphicon-share"> เพิ่ม</span>
						</button>
					</div>
				</div>
			</div>
		</div>
		<div class="w3-container w3-card w3-white w3-round w3-margin">
			<div class="col-md-12">
				<h1 class="card-header">ตารางวิชาที่สอน</h1>
				<div class="col-md-12 table-responsive">
					<table id="customerTable" class="table table-bordered table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>รายวิชา</th>
								<th>ชื่อวิชา</th>
								<th>section</th>
								<th>จำนวนหนวยกิจ</th>
								<th>จำนวนนักศึกษา</th>
								<th>ใช้ป็นฐาน/คาบ</th>
								<th>ใช้เบิก/หน่วยชั่วโมง</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>

					<div id="resultMsgDiv">
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	//insert
function insertSubjectfrom() {
//	console.log(warranty)
	
	var insertSubject = {
		subjectID : $('#subjectID').val(),//id,
		subjectName : $('#subjectName').val(),//id
		section : $('#section').val(),
		credit : $('#credit').val(),
		creditHour : $('#creditHour').val(),	
	}

	$.ajax({
		type : "POST",
		url : "/insertSubject",
		contentType : "application/json; charset=utf-8",
		data : JSON.stringify(insertSubject),
		dataType : "json",
		success : function(msg) {
		console.log(msg)
		window.location.href = msg.page;
		},
		error: function() {
			window.location.href = "table";
			
		}
	});
}
	</script>
	<script type="text/javascript">
		$(document).ready(function () {
			var table = $('#Table').DataTable({
				"sAjaxSource": "/subjectTable",
				"sAjaxDataProp": "",
				"order": [
					[1, "asc"]
				],
				"aoColumns": [{
						"mData": "id"
					},
					{
						"mData": "subjectID"
					},
					{
						"mData": "subjectName"
					},
					{
						"mData": "section"
					},
					{
						"mData": "credit"
					},
					{
						"mData": "creditHour"
					}
				]
			})
		});

		$(document).ready(function () {

			// Do GET all Customers from Back-End with JQUERY AJAX
			$(function () {
				$.ajax({
					type: "GET",
					url: window.location + "/subjectTable",
					success: function (result) {
						$.each(result, function (index, Subject) {

							var SubjectRow = '<tr>' +
								'<td>' + index + '</td>' +
								'<td>' + Subject.subjectID + '</td>' +
								'<td>' + Subject.subjectName + '</td>' +
								'<td>' + Subject.section + '</td>' +
								'<td>' + Subject.credit + '</td>' +
								'<td>' + Subject.creditHour + '</td>' +
								'<td class="text-center">' +
								'<input type="hidden" value=' + Subject.id + '>' +
								'<a>' +
								'<span class="glyphicon glyphicon-remove"></span>' +
								'</a>' +
								'</td>' +
								'</tr>';

							$('#customerTable tbody').append(SubjectRow);

						});

						$("#customerTable tbody tr:odd").addClass("info");
						$("#customerTable tbody tr:even").addClass("success");
					},
					error: function (e) {
						alert("ERROR: ", e);
						console.log("ERROR: ", e);
					}
				});
			});

			// Do DELETE a Customer via JQUERY AJAX
			$(document).on("click", "a", function () {

				var customerId = $(this).parent().find('input').val();
				var workingObject = $(this);

				$.ajax({
					type: "DELETE",
					url: window.location + "api/customer/delete/" + customerId,
					success: function (resultMsg) {
						$("#resultMsgDiv").html("<p style='background-color:#67597E; color:white; padding:20px 20px 20px 20px'>" +
							"Customer with Id=" + customerId + " is deleted successfully!" +
							"</p>");

						workingObject.closest("tr").remove();

						// re-css for table
						$("#customerTable tbody tr:odd").addClass("info");
						$("#customerTable tbody tr:even").addClass("success");
					},
					error: function (e) {
						alert("ERROR: ", e);
						console.log("ERROR: ", e);
					}
				});
			});
		})
	</script>
	<style>
			/* The container */
			.containerradio {
				display: block;
				position: relative;
				padding-left: 15%;
				margin-bottom: 12px;
				cursor: pointer;
				font-size: 12px;
				-webkit-user-select: none;
				-moz-user-select: none;
				-ms-user-select: none;
				user-select: none;
			}
			
			/* Hide the browser's default radio button */
			.containerradio input {
				position: absolute;
				opacity: 0;
				cursor: pointer;
			}
			
			/* Create a custom radio button */
			.checkmark {
				position: absolute;
				top: 0;
				left: 0;
				height: 20px;
				width: 20px;
				background-color: #eee;
				border-radius: 50%;
			}
			
			/* On mouse-over, add a grey background color */
			.containerradio:hover input ~ .checkmark {
				background-color: #ccc;
			}
			
			/* When the radio button is checked, add a blue background */
			.containerradio input:checked ~ .checkmark {
				background-color: #2196F3;
			}
			
			/* Create the indicator (the dot/circle - hidden when not checked) */
			.checkmark:after {
				content: "";
				position: absolute;
				display: none;
			}
			
			/* Show the indicator (dot/circle) when checked */
			.containerradio input:checked ~ .checkmark:after {
				display: block;
			}
			
			/* Style the indicator (dot/circle) */
			.containerradio .checkmark:after {
				 top: 20%;
				left: 20%;
				width: 50%;
				height: 50%;
				border-radius: 50%;
				background: white;
			}
			</style>