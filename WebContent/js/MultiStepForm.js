var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the crurrent tab

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
	var characterReg = /^[0-9A-Za-zก-๙]+$/;
	var decimal = /^[-+]?[0-9]+.[0-9]+$/;
	// validate
	var postName = $('#textVal').val();
	var brandName = $('#brandName').val();
	var decimalOne = $('#decimalOne').val();
	var decimalTwo = $('#decimalTwo').val();
	var serial = $('#serial').val();
	var model = $('#model').val();
	// A loop that checks every input field in the current tab:
	for (i = 0; i < y.length; i++) {
		// If a field is empty...
		if (currentTab == 0) {
			if (!characterReg.test(postName) || !characterReg.test(brandName)) {
				// add an "invalid" class to the field:
				y[i].className += " invalid";
				// and set the current valid status to false
				valid = false;
			}
		} else if (currentTab == 1) {
			if (!decimal.test(decimalOne) || !decimal.test(decimalTwo)
					|| !characterReg.test(model) || !characterReg.test(serial)) {
				// add an "invalid" class to the field:
				y[i].className += " invalid";
				// and set the current valid status to false
				valid = false
			}
		}

		/*
		 * if (y[i].value == "" || characterReg.test(y[i].value)) { // add an
		 * "invalid" class to the field: y[i].className += " invalid"; // and
		 * set the current valid status to false valid = false; }
		 */

	}
	// If the valid status is true, mark the step as finished and valid:
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
	if (e == 1) {

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

		step2 += "<input type='hidden' id='serial' value='test'>"
		step2 += "<input type='hidden' id='model' value='test'>"

		step2 += "<p>"
		step2 += "<label>ความบริสุทธิ์</label>"
		step2 += " <input type='text' name='pawnerPostPure' required='required'	id='decimalOne' /> <br>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น 99.99</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<label>น้ำหนัก(ใช้หน่วยเป็นกรัม)</label>"
		step2 += "<input type='text' name='pawnerPostWeigh' required='required' id='decimalTwo' /> <br>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น 99.99</i>"
		step2 += "</p>"

		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea class='input100' name='pawnerPostDescription' required='required'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<span>"
		step3 += "<input type='checkbox'/>"
		step3 += "ฉันยอมรับและตกลง <strong>เงือนไขการใช้งาน </strong> ของระบบบุญยง"
		step3 += "</span></p>"

		$('#step3').append(step3);

	}
	if (e == 2) {

		step2 = "<input type='hidden' name='pawnerPostItemType' value='Laptop' />"
		step2 += "<p>"
		step2 += "<lable>หมายเลขประจำเครื่อง</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' id='serial' required='required'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' id='model' required='required'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<input type='text' name='pawnerPostSize' id='decimalOne'>"
		step2 += "<input type='hidden' id='decimalTwo' value='12.00'>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น  13.5</i>"
		step2 += "</p>"

		step2 += "<ul class='form-list'>"

		step2 += "<li class='form-list-row form-list-row-inline'>"
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

		step2 += "<li class='form-list-row form-list-row-inline'>"
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

		step2 += "<li class='form-list-row form-list-row-inline'>"
		step2 += "<div>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</div>"
		step2 += "</div>"
		step2 += "</li>"

		step2 += "</ul>"

		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='pawnerPostBattery'/> "
		step3 += "Battery charger</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='pawnerPostWarranty'/> "
		step3 += "ประกันสินค้า</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked'/> "
		step3 += "ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		$('#step3').append(step3);

	}
	if (e == 3) {
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Tv' />"

		step2 += "<p>"
		step2 += "<lable>หมายเลขประจำเครื่อง</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' required='required' id='serial'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' required='required' id='model'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<input type='text' name='pawnerPostSize' required='required' id='decimalOne'>"
		step2 += "<input type='hidden' value='12.00' id='decimalTwo'>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น  13.5</i>"
		step2 += "</p>"

		step2 += "<ul class='form-list'>"

		step2 += "<li class='form-list-row form-list-row-inline'>"
		step2 += "<div>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</div>"
		step2 += "</div>"
		step2 += "</li>"
		step2 += "</ul>"

		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='panwePostRemote'/> "
		step3 += "Remote control</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='pawnerPostWarranty'/> "
		step3 += "ประกันสินค้า</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked'/> "
		step3 += "ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		$('#step3').append(step3);
	}

	if (e == 4) {
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Smartphone' />"

		step2 += "<p>"
		step2 += "<lable>หมายเลขประจำเครื่อง</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' required='required'  id='serial'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' required='required'  id='model'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<input type='text' name='pawnerPostSize' required='required' id='decimalOne'>"
		step2 += "<input type='hidden' value='12.00' id='decimalTwo'>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น  13.5</i>"
		step2 += "</p>"

		step2 += "<li class='form-list-row form-list-row-inline'>"
		step2 += "<div>"
		step2 += "<lable>หน่วยความจำ</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<select name='pawnerPostCapacity' >"
		step2 += "<option>8 Gb</option>"
		step2 += "<option>16 Gb</option>"
		step2 += "<option>32 Gb</option>"
		step2 += "<option>64 Gb</option>"
		step2 += "<option>More than 64 Gb</option>"
		step2 += "</select>"
		step2 += "</div>"
		step2 += "</div>"
		step2 += "</li>"

		$('#step2').append(step2);

		step3 = "<P>"
		step3 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step3 += "<input type='date'name='pawnerPostPurchase'>"
		step3 += "</P>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='pawnerPostBattery'/> "
		step3 += "Battery charger</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='pawnerPostWarranty'/> "
		step3 += "ประกันสินค้า</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked'/> "
		step3 += "ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		$('#step3').append(step3);

	}
	if (e == 5) {
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Camera' />"

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

		step2 += "<div>"
		step2 += "<lable>มีเพรชอยู่บนบริเวณใดบาง</lable>"
		step2 += "<select name='pawnerPostDiamond' required='required'>"
		step2 += "<option>ไม่มี</option>"
		step2 += "<option>มีอยู๋บริเวณหน้าปัด</option>"
		step2 += "<option>มีอยู๋บรเวณสายรัดข้อมือ</option>"
		step2 += "<option>มีอยู๋บนบริเวณตัวเลข</option>"
		step2 += "</select>"
		step2 += "</div>"

		step2 += "<p>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</P>"

		step2 += "<input type='hidden' value='test' required='required'  id='serial'>"
		step2 += "<input type='hidden' value='test' required='required'  id='model'>"
		step2 += "<input type='hidden' value='12.00' required='required' id='decimalOne'>"
		step2 += "<input type='hidden' value='12.00' id='decimalTwo'>"
		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='pawnerPostPackage'/> "
		step3 += "กล้องบรรจุสินค้า</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='pawnerPostWarranty'/> "
		step3 += "ประกันสินค้า</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked'/> "
		step3 += "ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		$('#step3').append(step3);

	}
	if (e == 6) {
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Watch' />"

		step2 += "<p>"
		step2 += "<lable>หมายเลขประจำเครื่อง</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' id='serial'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' id='model'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

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

		step2 += "<div>"
		step2 += "<lable>ชนิดของกล้อง</lable>"
		step2 += "<select name='pawnerPostTypeCamera' required='required'>"
		step2 += "<option>กล้องคอมแพค (Compact)</option>"
		step2 += "<option>กล้องมิลเลอร์เลส  (Mirrorless)</option>"
		step2 += "<option>กล้องดีเอสแอลอา (DSLR)</option>"
		step2 += "<option>อื่นๆ</option>"
		step2 += "</select>"
		step2 += "</div>"

		step2 += "<p>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</P>"
			
		step2 += "<input type='hidden' value='12.00' required='required' id='decimalOne'>"
		step2 += "<input type='hidden' value='12.00' id='decimalTwo'>"
		$('#step2').append(step2);

		step3 = "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked' name='pawnerPostWarranty'/> "
		step3 += "ประกันสินค้า</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>"
		step3 += "<input type='checkbox' required='required' checked='checked'/> "
		step3 += "ยอมรับเงือนไขการใช้งาน</label>"
		step3 += "</p>"

		step3 += "<p>"
		step3 += "<label>รายละเอียดสินค้าเพิ่มเติม</label>"
		step3 += "<textarea name='pawnerPostDescription'></textarea> <br>"
		step3 += "<i>พิมท์เนื้อหาสำคำคัญเพิ่มเติม</i>"
		step3 += "</p>"

		$('#step3').append(step3);

	}

	$('#choosetype').css("display", "none")
	nextPrev(0);
}
