<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <div class="w3-container w3-card w3-white w3-round w3-margin">
        <div class="col-md-12">
            <h3 class="card-header">ระยะเวลาที่สอน</h3>
            <hr>
            <div class="col-md-12">
                <div class="col-md-6">
                    <div class="form-group" align="left">
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-4 col-form-label ">สัปดาห์ที่</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control form-control-sm" id="" placeholder="สัปดาห์">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group row" align="left">
                        <label for="colFormLabelSm" class="col-md-4 col-form-label ">วัน/เดือน/ปี</label>
                        <div class="col-sm-6">
                            <input type="date" class="form-control form-control-sm" id="" placeholder="วัน/เดือน/ปี">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6">
                    <div class="form-group" align="left">
                        <div class="form-group row">
                            <label for="colFormLabelSm" class="col-sm-4 col-form-label ">รายวิชา</label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control form-control-sm" id="" placeholder="รายวิชา">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group row" align="left">
                        <label for="colFormLabelSm" class="col-md-6 col-form-label ">ภาคทฤษฎี</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control form-control-sm" id="" placeholder="0">
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="form-group row" align="left">
                        <label for="colFormLabelSm" class="col-md-6 col-form-label ">ภาคปฏิบัติ</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control form-control-sm" id="" placeholder="0">
                        </div>
                    </div>
                </div>
            </div>
            <div class=" col-md-12">
                <div class="form-group" align="right">
                    <div class="col-md-12 col-sm-12">
                        <button name="submitFormPayment" type="button" class="btn btn-success btn-lg" onclick="">
                            <span class="glyphicon glyphicon-share"> เพิ่ม</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
</div>
        <div class="w3-container w3-card w3-white w3-round w3-margin">
            <div class="col-md-12">
                <h2 class="card-header">ระยะเวลาที่สอน</h2>
                <hr>
                <div class="col-md-12 table-responsive">
                    <table id="" class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">สัปดาห์</th>
                                <th scope="col">รายวิชา</th>
                                <th scope="col">วัน/เดือน/ปี</th>
                                <th scope="col">ภาคทฤษฎี</th>
                                <th scope="col">ภาคปฏิบัติ</th>
                                <th scope="col">รวม</th>

                            </tr>


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