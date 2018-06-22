<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<div class="w3-container w3-card w3-white w3-round w3-margin">
	<div class="row">
		<div class="col-md-12 col-sm-12">
			<div class="form-group" align="right">
				<div class="col-md-12 col-sm-12">
					<button name="" type="submit" id="" class="btn btn-success btn-lg"
						onclick="submitForm()">
						<span class="glyphicon glyphicon-share"> บันทึกและพิมพ์</span>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="w3-container w3-card w3-white w3-round w3-margin">
		<div class=" col-md-12">
			<div class="form-group" align="left">
				<div class="col-md-12 col-sm-12">
					<button name="submitFormPayment" type="button"
						id="submitFormPayment" class="btn btn-success btn-lg"
						onclick="submitForm()">
						<span class="glyphicon glyphicon-share">
							เพิ่มข้อมูลการสอนถาคปกติ</span>
					</button>
				</div>
			</div>
		</div>
		<hr class="w3-clear" style="top: 10%">
		<div class="row" style="top: 10%">
			<div class="col-md-4">
				<div class="form-group" align="left">
					<div class="form-group row">
						<label for="colFormLabelSm"
							class="col-sm-3 col-form-label col-form-label-sm">ชื่อ</label>
						<div class="col-sm-7">
							<input type="text" class="form-control form-control-sm" id=""
								placeholder="ชื่อ">
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group row" align="left">
					<label for="colFormLabelSm"
						class="col-sm-3 col-form-label col-form-label-sm">นามสกุล</label>
					<div class="col-sm-8">
						<input type="text" class="form-control form-control-sm"
							id="colFormLabelSm" placeholder="นามสกุล">
					</div>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="form-group" align="left">
					<div class="form-group row">
						<label for="colFormLabelSm"
							class="col-sm-3 col-form-label col-form-label-sm">ตำแหน่ง</label>
						<div class="col-sm-7">
							<input type="text" class="form-control form-control-sm"
								id="colFormLabelSm" placeholder="ตำแหน่ง">
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group row" align="left">
					<label for="colFormLabelSm"
						class="col-sm-3 col-form-label col-form-label-sm">คณะ</label>
					<div class="col-sm-8">
						<input type="text" class="form-control form-control-sm"
							id="colFormLabelSm" placeholder="คณะ">
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="form-group row" align="left">
					<label for="colFormLabelSm"
						class="col-sm-2 col-form-label col-form-label-sm">สาขา</label>
					<div class="col-sm-8">
						<input type="text" class="form-control form-control-sm"
							id="colFormLabelSm" placeholder="สาขา">
					</div>
				</div>
			</div>

		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="form-group" align="left">
					<div class="form-group row">
						<label for="colFormLabelSm" align="left"
							class="col-sm-4 col-form-label col-form-label-sm">มีฐานชั่วโมง</label>
						<div class="col-sm-3">
							<input type="text" class="form-control form-control-sm"
								id="colFormLabelSm">

						</div>
						<label class="col-sm-4 col-form-label col-form-label-sm">คาบ</label>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="form-group row">
					<label for="colFormLabelSm" align="left"
						class="col-sm-3 col-form-label col-form-label-sm">เบิกค่าสอนพิเศษไม่เกิน</label>
					<div class="col-sm-2">
						<input type="text" align="left"
							class="form-control form-control-sm" id="colFormLabelSm"
							placeholder="ชั่วโมง">
					</div>
					<label align="left"
						class="col-sm-4 col-form-label col-form-label-sm">ชั่วโมง</label>
				</div>
			</div>
		</div>
	</div>
</div>