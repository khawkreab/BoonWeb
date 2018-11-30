var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the crurrent tab
var gold, other = false;

function showTab(n) {
	// This function will display the specified tab of the form...
	var x = $('.tab');
	x[n].style.display = "block";
	// ... and fix the Previous/Next buttons:

	if (n == 0) {
		$('#prevBtn').css("display", "none")
		$('#nextBtn, #chooseBtn').css("display", "inline")
	} else {
		$('#prevBtn, #nextBtn').css("display", "inline")
		$('#chooseBtn').css("display", "none")

	}
	if (n == (x.length - 1)) {
		$('#nextBtn').text('ลงจำนำ')
	} else {
		$('#nextBtn').text('ต่อไป')
	}
	// ... and run a function that will display the correct step indicator:
	fixStepIndicator(n)
}

function nextPrev(n) {
	// This function will figure out which tab to display
	var x = $('.tab');
	// Exit the function if any field in the current tab is invalid:
	if (n == 1 && !validateForm())
		return false;
	// Hide the current tab:
	x[currentTab].style.display = "none";
	// Increase or decrease the current tab by 1:
	currentTab = currentTab + n;
	// if you have reached the end of the form...
	if (currentTab >= x.length) {
		// ... the form gets submitted:
		$('#regForm').submit();
		return false;
	}
	// Otherwise, display the correct tab:
	showTab(currentTab);
}

function validateForm() {
	// This function deals with validation of the form fields.
	var x, y, i, valid = true;
	x = $('.tab');
	y = x[currentTab].getElementsByTagName("input");

	// RegularExpression
	var characterReg = /^[0-9A-Za-z]{0,22}$/;
	var decimal = /^[1-9]|[1-9][0-9]/;
	var model = /^.{0,20}$/;

	// validate
	if (gold) {
		var pawnerPostPure = $("input[name = 'pawnerPostPure']").val();
		if (pawnerPostPure == '')
			pawnerPostPure = '12'
		for (i = 0; i < y.length; i++) {
			y[i].classList.remove("invalid");
			if (y[i].value == "" || !decimal.test(pawnerPostPure)) {
				y[i].className += " invalid";
				valid = false;
			} else {
				y[i].classList.remove("invalid");
			}
		}
	}
	if (other) {
		var pawnerPostSerial = $("input[name = 'pawnerPostSerial']").val();
		var pawnerPostModel = $("input[name = 'pawnerPostModel']").val();
		if ($('#files').val() == "") {
			$('#picturefiles').addClass("fas fa-exclamation-circle text-red");
		} else {
			$('#picturefiles')
					.removeClass("fas fa-exclamation-circle text-red");
		}
		for (i = 0; i < y.length; i++) {
			y[i].classList.remove("invalid");
			if (y[i].value == "" || !characterReg.test(pawnerPostSerial)
					|| !model.test(pawnerPostModel)) {
				y[i].className += " invalid";
				valid = false;
			} else {
				y[i].classList.remove("invalid");
			}
		}

	}
	if (valid) {
		document.getElementsByClassName("step")[currentTab].className += " finish";
	}
	return valid; // return the valid status
}

function fixStepIndicator(n) {
	// This function removes the "active" class of all steps...
	var i, x = $('.step');
	for (i = 0; i < x.length; i++) {
		x[i].className = x[i].className.replace(" active", "");
	}
	// ... and adds the "active" class on the current step:
	x[n].className += " active";
}

function choosetype() {
	gold = false, other = false;
	console.log(gold, other);
	$('#choosetype').css("display", "block")
	$('#regForm').css("display", "none")
}

function showsteptype(e) {
	var step1;
	var step2;
	var step3;

	$(':input').val('')
	$('#regForm').css("display", "block")
	$('#step2, #step3').empty()
	$('.thumbnail').parent().remove();
	if (e == 1) {
		gold = true;

		step2 = "<input type='hidden' name='pawnerPostItemType' value='Gold' />"

		step2 += "<p>"
		step2 += "<div class='wrap-input100 validate-input' style='margin-top:15px;'>"
		step2 += "<label>ชนิดหรือรูปแบบของทองคำ</label>"
		step2 += "<select class='input100' name='pawnerPostCategory' required='required'>"
		step2 += "<option></option>"
		step2 += "<option>ทองรูปพรรณ</option>"
		step2 += "<option>ทองเค เช่น 18k, 14k</option>"
		step2 += "<option>เงิน</option>"
		step2 += "<option>ทอง 96.5 %</option>"
		step2 += "<option>พรีม่าโกลด์, โกลด์มาสเตอร์</option>"
		step2 += "<option>กรอบพระ</option>"
		step2 += "<option>แพลตตินั่ม</option>"
		step2 += "<option>อื่นๆ</option>"
		step2 += "</select>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<div class='wrap-input100 validate-input' style='margin-top:15px;'>"
		step2 += "<label>น้ำหนักทองรูปพรรณ</label>"
		step2 += "<select class='input100' name='pawnerPostWeigh'>"
		step2 += "<option></option>"
		step2 += "<option>ทองหนัก ครึ่ง สลึง</option>"
		step2 += "<option>ทองหนัก 1 สลึง</option>"
		step2 += "<option>ทองหนัก 1 บาท</option>"
		step2 += "<option>ทองหนัก 2 บาท</option>"
		step2 += "<option>ทองหนัก 3 บาท</option>"
		step2 += "<option>ทองหนัก 4 บาท</option>"
		step2 += "<option>ทองหนัก 5 บาท</option>"
		step2 += "<option>ทองหนัก 10 บาท</option>"
		step2 += "<option>ทองหนัก 10 บาท ขึ้นไป</option>"
		step2 += "</select>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<label>ความบริสุทธิ์</label>"
		step2 += " <input type='text' name='pawnerPostPure' required='required'	id='decimalOne' /> <br>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น 99.99</i>"
		step2 += "</p>"

		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		step3 += "<div class='d-inline-flex'>"
		step3 += "<input type='checkbox' />"
		step3 += "<label>ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</div>"

		$('#step3').append(step3);

	}
	if (e == 2) {
		other = true;
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Laptop' />"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' maxlength='20'>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>หมายเลขผลิตภัณฑ์ (Serial Number) หรือ หมายเลข SNID</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' maxlength='22'>"
		step2 += "<i>ห้ามใช้ภ่ษาไทย และ ความยาวไม่เกิน 22 ตัวอักษร</i>"
		step2 += "</p>"

		step2 += "<ul class='form-list' style='display: inline-flex; list-style-type: none;'>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 100px;'>"
		step2 += "<div>"
		step2 += "<lable>Harddisk</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<select name='pawnerPostHarddisk' >"
		step2 += "<option>250 GB</option>"
		step2 += "<option>500 GB</option>"
		step2 += "<option>1 TB</option>"
		step2 += "<option>2 TB</option>"
		step2 += "<option>3 TB</option>"
		step2 += "<option>อื่นๆ</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "<div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 100px;'>"
		step2 += "<div>"
		step2 += "<lable>Ram</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<select name='pawnerPostRam' >"
		step2 += "<option>4 Gb</option>"
		step2 += "<option>8 Gb</option>"
		step2 += "<option>16 Gb</option>"
		step2 += "<option>32 Gb</option>"
		step2 += "<option>64 Gb</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 100px;'>"
		step2 += "<div>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<select name='pawnerPostSize' >"
		step2 += "<option>10-11 นิ้ว</option>"
		step2 += "<option>12-13 นิ้ว</option>"
		step2 += "<option>14 นิ้ว</option>"
		step2 += "<option>15 นิ้ว</option>"
		step2 += "<option>17 นิ้ว</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style=' margin-right: 10px;'>"
		step2 += "<div>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "</ul>"

		step2 += "<div class='d-inline-flex'>"
		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option2' name='pawnerPostBattery' type='checkbox' />"
		step2 += "<label for='option2'>Battery charger</label>"
		step2 += "</div>"

		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option3' name='pawnerPostWarranty' type='checkbox' />"
		step2 += "<label for='option3'>ประกันสินค้า</label>"
		step2 += "</div>"
		step2 += "</div>"

		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		step3 += "<div class='d-inline-flex'>"
		step3 += "<input type='checkbox' />"
		step3 += "<label'>ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</div>"

		$('#step3').append(step3);

	}
	if (e == 3) {
		other = true;
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Tv' />"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' maxlength='20'>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>หมายเลขผลิตภัณฑ์ (Serial Number) หรือ หมายเลข SNID</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' maxlength='22'>"
		step2 += "<i>ห้ามใช้ภ่ษาไทย และ ความยาวไม่เกิน 22 ตัวอักษร</i>"
		step2 += "</p>"

		step2 += "<ul class='form-list' style='display: inline-flex; list-style-type: none;'>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 100px;'>"
		step2 += "<div>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<select name='pawnerPostSize' >"
		step2 += "<option>26 นิ้ว</option>"
		step2 += "<option>32 นิ้ว</option>"
		step2 += "<option>42 นิ้ว</option>"
		step2 += "<option>46 นิ้ว</option>"
		step2 += "<option>47 นิ้ว</option>"
		step2 += "<option>50 นิ้ว</option>"
		step2 += "<option>55 นิ้ว</option>"
		step2 += "<option>60 นิ้ว</option>"
		step2 += "<option>65 นิ้ว</option>"
		step2 += "<option>70 นิ้ว</option>"
		step2 += "<option>75 นิ้ว</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style=' margin-right: 10px;'>"
		step2 += "<div>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "</ul>"

		step2 += "<div class='d-inline-flex'>"
		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option2' name='panwePostRemote' type='checkbox' />"
		step2 += "<label for='option2'>Remote control</label>"
		step2 += "</div>"

		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option3' name='pawnerPostWarranty' type='checkbox' />"
		step2 += "<label for='option3'>ประกันสินค้า</label>"
		step2 += "</div>"
		step2 += "</div>"

		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		step3 += "<div class='d-inline-flex'>"
		step3 += "<input type='checkbox' />"
		step3 += "<label>ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</div>"

		$('#step3').append(step3);
	}

	if (e == 4) {
		other = true;
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Smartphone' />"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' maxlength='20'>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>หมายเลขผลิตภัณฑ์ (Serial Number) หรือ หมายเลข SNID</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' maxlength='22'>"
		step2 += "<i>ห้ามใช้ภ่ษาไทย และ ความยาวไม่เกิน 22 ตัวอักษร</i>"
		step2 += "</p>"

		step2 += "<ul class='form-list' style='display: inline-flex; list-style-type: none;'>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 100px;'>"
		step2 += "<div>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<select name='pawnerPostSize' >"
		step2 += "<option>น้อยกว่า 3.5 นิ้ว</option>"
		step2 += "<option>3.6 ถึง 4 นิ้ว</option>"
		step2 += "<option>4.1 ถึง 4.5 นิ้ว</option>"
		step2 += "<option>4.6 ถึง 5 นิ้ว</option>"
		step2 += "<option>5.1 ถึง 5.5  นิ้ว</option>"
		step2 += "<option>มากกว่า 5.6  นิ้ว</option>"
		step2 += "<option>7.0 ถึง 7.9  นิ้ว</option>"
		step2 += "<option>8 ถึง 8.9 นิ้ว</option>"
		step2 += "<option> 9 ถึง 9.9 นิ้ว</option>"
		step2 += "<option>10 นิ้ว ขึ้นไป</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style=' margin-right: 100px;'>"
		step2 += "<div>"
		step2 += "<lable>หน่วยความจำ</lable>"
		step2 += "<select name='pawnerPostCapacity' >"
		step2 += "<option>8 Gb</option>"
		step2 += "<option>16 Gb</option>"
		step2 += "<option>32 Gb</option>"
		step2 += "<option>64 Gb</option>"
		step2 += "<option>64 Gb ขึ้นไป</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style=' margin-right: 10px;'>"
		step2 += "<div>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "</ul>"

		step2 += "<div class='d-inline-flex'>"
		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option2' name='pawnerPostBattery' type='checkbox' />"
		step2 += "<label for='option2'>Battery charger</label>"
		step2 += "</div>"

		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option3' name='pawnerPostWarranty' type='checkbox' />"
		step2 += "<label for='option3'>ประกันสินค้า</label>"
		step2 += "</div>"
		step2 += "</div>"

		$('#step2').append(step2);

		step3 += "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		step3 += "<div class='d-inline-flex'>"
		step3 += "<input type='checkbox' />"
		step3 += "<label>ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</div>"

		$('#step3').append(step3);

	}
	if (e == 5) {
		other = true;
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Watch' />"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' maxlength='20'>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>หมายเลขผลิตภัณฑ์ (Serial Number) หรือ หมายเลข SNID</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' maxlength='22'>"
		step2 += "<i>ห้ามใช้ภ่ษาไทย และ ความยาวไม่เกิน 22 ตัวอักษร</i>"
		step2 += "</p>"

		step2 += "<ul class='form-list' style='display: inline-flex; list-style-type: none;'>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 20px;'>"
		step2 += "<div>"
		step2 += "<lable>ชนิดของหน้าปัด</lable>"
		step2 += "<select name='pawnerPostCase' required='required'>"
		step2 += "<option>Stainless Steel</option>"
		step2 += "<option>White Gold</option>"
		step2 += "<option>Yellow Gold</option>"
		step2 += "<option>Ceramic</option>"
		step2 += "<option>Pink Gold</option>"
		step2 += "<option>Others</option>"
		step2 += "<option>Unknown</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 20px;'>"
		step2 += "<div>"
		step2 += "<lable>ชนิดของสายรัดข้อมือ</lable>"
		step2 += "<select name='pawnerPostBracelet' required='required'>"
		step2 += "<option>Stainless Steel</option>"
		step2 += "<option>Gold and Silver</option>"
		step2 += "<option>Gold</option>"
		step2 += "<option>Platinum</option>"
		step2 += "<option>Pink Gold</option>"
		step2 += "<option>Others</option>"
		step2 += "<option>Unknown</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 20px;'>"
		step2 += "<div>"
		step2 += "<lable>มีเพรชอยู่บนบริเวณใดบาง</lable>"
		step2 += "<select name='pawnerPostDiamond' required='required'>"
		step2 += "<option>ไม่มี</option>"
		step2 += "<option>มีอยู๋บริเวณหน้าปัด</option>"
		step2 += "<option>มีอยู๋บรเวณสายรัดข้อมือ</option>"
		step2 += "<option>มีอยู๋บนบริเวณตัวเลข</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 20px;'>"
		step2 += "<p>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</P>"
		step2 += "</li>"

		step2 += "</ul>"

		step2 += "<div class='d-inline-flex'>"
		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option2' name='pawnerPostPackage' type='checkbox' />"
		step2 += "<label for='option2'>กล้องบรรจุสินค้า</label>"
		step2 += "</div>"

		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option3' name='pawnerPostWarranty' type='checkbox' />"
		step2 += "<label for='option3'>ประกันสินค้า</label>"
		step2 += "</div>"
		step2 += "</div>"

		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		step3 += "<div class='d-inline-flex'>"
		step3 += "<input type='checkbox' />"
		step3 += "<label>ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</div>"

		$('#step3').append(step3);

	}
	if (e == 6) {
		other = true;
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Camera' />"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' maxlength='20'>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>หมายเลขผลิตภัณฑ์ (Serial Number) หรือ หมายเลข SNID</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' maxlength='22'>"
		step2 += "<i>ห้ามใช้ภ่ษาไทย และ ความยาวไม่เกิน 22 ตัวอักษร</i>"
		step2 += "</p>"

		step2 += "<ul class='form-list' style='display: inline-flex; list-style-type: none;'>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 20px;'>"
		step2 += "<div>"
		step2 += "<lable>ชนิดของเลนกล้อง</lable>"
		step2 += "<select name='pawnerPostCameraLen' required='required'>"
		step2 += "<option>เลนส์ไพร์ม (Prime Lens)</option>"
		step2 += "<option>เลนส์ซูม (Zoom Lens)</option>"
		step2 += "<option>เลนส์มาตรฐาน (Normal Lens)</option>"
		step2 += "<option>เลนส์เทเลโฟโต (Telephoto Lens)</option>"
		step2 += "<option>เลนส์ไวด์ (Wide Angle Lens)</option>"
		step2 += "<option>เลนส์ฟิชอาย (Fisheye Lens)</option>"
		step2 += "<option>เลนส์มาโคร (Macro Lens) </option>"
		step2 += "<option>เลนส์ไวด์ เลนส์ฟิกซ์ (Fixed Lens)</option>"
		step2 += "<option>อื่นๆ</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 20px;'>"
		step2 += "<div>"
		step2 += "<lable>ชนิดของกล้อง</lable>"
		step2 += "<select name='pawnerPostTypeCamera' required='required'>"
		step2 += "<option>กล้องคอมแพค (Compact)</option>"
		step2 += "<option>กล้องมิลเลอร์เลส  (Mirrorless)</option>"
		step2 += "<option>กล้องดีเอสแอลอา (DSLR)</option>"
		step2 += "<option>อื่นๆ</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "<li class='form-list-row form-list-row-inline' style='margin: auto; margin-right: 20px;'>"
		step2 += "<p>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<input type='date' name='pawnerPostPurchase'>"
		step2 += "</P>"
		step2 += "</li>"

		step2 += "</ul>"

		step2 += "<div class='inputGroup'>"
		step2 += "<input  id='option3' name='pawnerPostWarranty' type='checkbox' />"
		step2 += "<label for='option3'>ประกันสินค้า</label>"
		step2 += "</div>"

		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		step3 += "<div class='d-inline-flex'>"
		step3 += "<input type='checkbox' />"
		step3 += "<label>ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</div>"
		step3 += "</p>"

		$('#step3').append(step3);

	}

	$('#choosetype').css("display", "none")
	nextPrev(0);
}
