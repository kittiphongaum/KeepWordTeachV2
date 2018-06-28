//AddSubject
function subject() {

    $('#subjectName').empty();
    $('#section').empty();
    $('#credit').empty();
    $('#creditHour').empty();
    $('#tudsadee').empty();
    $('#prtibad').empty();
    $('#subjectID').ready(function () {
        var subjectsach = {
            "subjectsach": $('#subjectID').val()
        };
        $.ajax({
            type: "POST",
            url: "/subject",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(subjectsach),
            dataType: "json",
            success: function (msg) {
                if (msg.subjectID != null) {
                    $('#subjectName').val(msg.subjectName);
                    $('#section1').val(msg.section);
                    $('#credit').val(msg.credit);
                    $('#creditHour').val(msg.creditHour);
                    $('#tudsadee').val(msg.tudsadee);
                    $('#prtibad').val(msg.prtibad);
                    
                } else if (msg.subjectID == null) {
                    $('#alert').append('<center>ไม่มีข้อมูล</center>');
                }
            }
        });
    });
}