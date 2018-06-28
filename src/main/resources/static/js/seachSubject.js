//check_warranty
function subject() {
	$('#subjectName').empty();
	$('#section').empty();
	$('#credit').empty();
	$('#creditHour').empty();
	$('#tudsadee').empty();
	$('#prtibad').empty();
	$('#subjectsimID').ready(function () {
		var subjectsach = { "subjectsach": $('#subjectID').val() };
		$.ajax({
			type: "POST",
			url: "/subject",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify(subjectsach),
			dataType: "json",
			success: function (msg) {
				if (msg.serialNumber != null) {	
					$('#subjectName').val(subjectName);	
					$('#section').val(section);	
					$('#credit').val(credit);		
					$('#creditHour').val(creditHour);	
					$('#tudsadee').val(tudsadee);	
					$('#prtibad').val(prtibad);	
					// $('#subjectsimName').append('<p class="alert alert-info"><strong>วันที่ซื้อ (Date) ปี-เดือน-วัน</strong> : ' + msg.date + '</p>');
					// $('#sectionSim').append('<p class="alert alert-info"><strong>รหัสสินค้า (Product Code)</strong> : ' + msg.productCode + '</p>');
					// $('#creditHuorSim').append('<p class="alert alert-info"><strong>ชื่อสินค้า (Product Name)</strong> : ' + msg.productName + '</p>');
					// $('#tudsadeeSim').append('<p class="alert alert-info"><strong>Serial Number (S/N)</strong> : ' + msg.serialNumber + '</p>');
					// $('#prtibadSim').append('<p class="alert alert-info"><strong>ระยะเวลาประกัน</strong> : ' + msg.warranty + '</p>');
				}
				else if (msg.serialNumber == null) {
					$('#alert').append('<center>ไม่มีข้อมูล</center>');
				}
			}
		});
	});
}