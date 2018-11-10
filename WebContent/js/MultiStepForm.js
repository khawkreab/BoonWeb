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
	// This function deals with validation of the form fields
	var x, y, i, valid = true;
	x = $('.tab');
	y = x[currentTab].getElementsByTagName("input");
	// A loop that checks every input field in the current tab:
	for (i = 0; i < y.length; i++) {
		// If a field is empty...
		if (y[i].value == "") {
			// add an "invalid" class to the field:
			y[i].className += " invalid";
			// and set the current valid status to false
			valid = false;
		}
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

		step2 += "<p>"
		step2 += "<label>ความบริสุทธิ์</label>"
		step2 += " <input type='text' name='pawnerPostPure' required='required'	 pattern='[^'a-zA-Zก-ฮ@,!#$?:^%&*+/=()\\_`{|}~-]{1,5}'/> <br>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น 99.99</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<label>น้ำหนัก(ใช้หน่วยเป็นกรัม)</label>"
		step2 += " <input type='text' name='pawnerPostWeigh' required='required' pattern='[^'a-zA-Zก-ฮ@,!#$?:^%&*+/=()\\_`{|}~-]{1,5}'/> <br>"
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
		step3 += "<input type='checkbox' required='required'/>"
		step3 += "ฉันยอมรับและตกลง <strong>เงือนไขการใช้งาน </strong> ของระบบบุญยง"
		step3 += "</span></p>"

		$('#step3').append(step3);

	}
	if (e == 2) {
		
		step2 = "<input type='hidden' name='pawnerPostItemType' value='Laptop' />"
		step2 += "<p>"
		step2 += "<lable>หมายเลขประจำเครื่อง</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<input type='text' name='pawnerPostSize' required='required' pattern='[^'a-zA-Zก-ฮ@,!#$?:^%&*+/=()\\_`{|}~-]{1,5}'>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น  13.5</i>"
		step2 += "</p>"

		step2 += "<ul class='form-list'>"

		step2 += "<li class='form-list-row form-list-row-inline'>"
		step2 += "<div>"
		step2 += "<lable>Harddisk</lable>"
		step2 += "<div class='form-list-row-inline'>"
		step2 += "<select name='pawnerPostHarddisk' required='required'>"
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
		step2 += "<select name='pawnerPostRam' required='required'>"
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
		step1 = "<input type='hidden' name='pawnerPostItemType' value='Tv' />"
		step1 += "<p>"
		step1 += "<label>ชื่อสินค้าที่ต้องการจำนำ</label>"
		step1 += " <input type='text' name='pawnerPostName' required='required'	pattern='[^'@.,!#$?:^%&*+/=()\\_`{|}~-]{1,30}'> <br>"
		step1 += "<i>ใช้เป็นตัวอักษร	ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ</i>"
		step1 += "</p>"

		step1 += "<div class='wrap-input100 validate-input' style='margin-top:15px;'>"
		step1 += "<select class='input100' name='pawnerPostBrand' required='required'>"
		step1 += "<option>ยี่ห้อ</option>"
		step1 += "<option>LG</option>"
		step1 += "<option>Panasonic</option>"
		step1 += "<option>Samsung</option>"
		step1 += "<option>Sony</option>"
		step1 += "<option>Sharp</option>"
		step1 += "<option>TCL</option>"
		step1 += "<option>Toshiba</option>"
		step1 += "<option>อื่นๆ</option>"
		step1 += "</select>"

		step1 += "<div style='margin-top:15px;width:100%'>"
		step1 += "<span style='font-size:14px;'>ลงรูปภาพประกอบการจำนำ</span>"
		step1 += "<div class='wrap-input100' style='border: none;'>"
		step1 += "<div class='box-img-list'>"
		step1 += "<div class='box box-img-1' style='display: block'>"
		step1 += "<div class='box-img-thumb'>"
		step1 += "<div class='upload-options js--image-preview' id='img-pic-1'>"
		step1 += "<label> <input type='file' class='image-upload' accept='image'  name='files' required='required'/></label>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</span>"
		step1 += "</div>"

		$('#step1').append(step1);

		step2 = "<p>"
		step2 += "<lable>หมายเลขประจำเครื่อง</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<input type='text' name='pawnerPostSize' required='required' pattern='[^'a-zA-Zก-ฮ@,!#$?:^%&*+/=()\\_`{|}~-]{1,5}'>"
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
		step1 = "<input type='hidden' name='pawnerPostItemType' value='Smartphone' />"
		step1 += "<p>"
		step1 += "<label>ชื่อสินค้าที่ต้องการจำนำ</label>"
		step1 += " <input type='text' name='pawnerPostName' required='required'	pattern='[^'@.,!#$?:^%&*+/=()\\_`{|}~-]{1,30}'> <br>"
		step1 += "<i>ใช้เป็นตัวอักษร	ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ</i>"
		step1 += "</p>"

		step1 += "<div class='wrap-input100 validate-input' style='margin-top:15px;'>"
		step1 += "<select class='input100' name='pawnerPostBrand' required='required'>"
		step1 += "<option>ยี่ห้อ</option>"
		step1 += "<option>HP</option>"
		step1 += "<option>Lenovo</option>"
		step1 += "<option>LG</option>"
		step1 += "<option>Sony</option>"
		step1 += "<option>Samsung</option>"
		step1 += "<option>Sony</option>"
		step1 += "<option>อื่นๆ</option>"
		step1 += "</select>"

		step1 += "<div style='margin-top:15px;width:100%'>"
		step1 += "<span style='font-size:14px;'>ลงรูปภาพประกอบการจำนำ</span>"
		step1 += "<div class='wrap-input100' style='border: none;'>"
		step1 += "<div class='box-img-list'>"
		step1 += "<div class='box box-img-1' style='display: block'>"
		step1 += "<div class='box-img-thumb'>"
		step1 += "<div class='upload-options js--image-preview' id='img-pic-1'>"
		step1 += "<label> <input type='file' class='image-upload' accept='image'  name='files' required='required'/></label>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</span>"
		step1 += "</div>"

		$('#step1').append(step1);

		step2 = "<p>"
		step2 += "<lable>หมายเลขประจำเครื่อง</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ขนาดหน้าจอ</lable>"
		step2 += "<input type='text' name='pawnerPostSize' required='required' pattern='[^'a-zA-Zก-ฮ@,!#$?:^%&*+/=()\\_`{|}~-]{1,5}'>"
		step2 += "<i>ตัวเลขเท่านั้น 0-9 หรือใช้ จุดทศนิยม เช่น  13.5</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>หน่วยความจำ</lable>"
		step2 += "<input type='text' name='pawnerPostCapacity'>"
		step2 += "<i>ตัวเลขเท่านนั้ 0-9</i>"
		step2 += "</p>"

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
		step1 = "<input type='hidden' name='pawnerPostItemType' value='Camera' />"
		step1 += "<p>"
		step1 += "<label>ชื่อสินค้าที่ต้องการจำนำ</label>"
		step1 += " <input type='text' name='pawnerPostName' required='required'	pattern='[^'@.,!#$?:^%&*+/=()\\_`{|}~-]{1,30}'> <br>"
		step1 += "<i>ใช้เป็นตัวอักษร	ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ</i>"
		step1 += "</p>"

		step1 += "<div class='wrap-input100 validate-input' style='margin-top:15px;'>"
		step1 += "<select class='input100' name='pawnerPostBrand' required='required'>"
		step1 += "<option>ยี่ห้อ</option>"
		step1 += "<option>Rolex</option>"
		step1 += "<option>Patek Philippe</option>"
		step1 += "<option>Audemars Piguet</option>"
		step1 += "<option>Cartier</option>"
		step1 += "<option>Franck Muller</option>"
		step1 += "<option>Tag Heuer</option>"
		step1 += "<option>Omega</option>"
		step1 += "<option>Casio</option>"
		step1 += "<option>อื่นๆ</option>"
		step1 += "</select>"

		step1 += "<div style='margin-top:15px;width:100%'>"
		step1 += "<span style='font-size:14px;'>ลงรูปภาพประกอบการจำนำ</span>"
		step1 += "<div class='wrap-input100' style='border: none;'>"
		step1 += "<div class='box-img-list'>"
		step1 += "<div class='box box-img-1' style='display: block'>"
		step1 += "<div class='box-img-thumb'>"
		step1 += "<div class='upload-options js--image-preview' id='img-pic-1'>"
		step1 += "<label> <input type='file' class='image-upload' accept='image'  name='files' required='required'/></label>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</span>"
		step1 += "</div>"

		$('#step1').append(step1);

		step2 = "<div>"
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
		step1 = "<input type='hidden' name='pawnerPostItemType' value='Watch' />"
		step1 += "<p>"
		step1 += "<label>ชื่อสินค้าที่ต้องการจำนำ</label>"
		step1 += " <input type='text' name='pawnerPostName' required='required'	pattern='[^'@.,!#$?:^%&*+/=()\\_`{|}~-]{1,30}'> <br>"
		step1 += "<i>ใช้เป็นตัวอักษร	ภาษาไทย หรือ อังกฤษ เท่านั้น ความยาวไม่เกิน 30 ตัวอักษร และ ต้องไม่ใช้ อักษรพิเศษ</i>"
		step1 += "</p>"

		step1 += "<div class='wrap-input100 validate-input' style='margin-top:15px;'>"
		step1 += "<select class='input100' name='pawnerPostBrand' required='required'>"
		step1 += "<option>ยี่ห้อ</option>"
		step1 += "<option>Rolex</option>"
		step1 += "<option>Patek Philippe</option>"
		step1 += "<option>Audemars Piguet</option>"
		step1 += "<option>Cartier</option>"
		step1 += "<option>Franck Muller</option>"
		step1 += "<option>Tag Heuer</option>"
		step1 += "<option>Omega</option>"
		step1 += "<option>Casio</option>"
		step1 += "<option>อื่นๆ</option>"
		step1 += "</select>"

		step1 += "<div style='margin-top:15px;width:100%'>"
		step1 += "<span style='font-size:14px;'>ลงรูปภาพประกอบการจำนำ</span>"
		step1 += "<div class='wrap-input100' style='border: none;'>"
		step1 += "<div class='box-img-list'>"
		step1 += "<div class='box box-img-1' style='display: block'>"
		step1 += "<div class='box-img-thumb'>"
		step1 += "<div class='upload-options js--image-preview' id='img-pic-1'>"
		step1 += "<label> <input type='file' class='image-upload' accept='image'  name='files' required='required'/></label>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</div>"
		step1 += "</span>"
		step1 += "</div>"

		$('#step1').append(step1);

		step2 = "<p>"
		step2 += "<lable>หมายเลขประจำเครื่อง</lable>"
		step2 += "<input type='text' name='pawnerPostSerial' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>รุ่น</lable>"
		step2 += "<input type='text' name='pawnerPostModel' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ และ ภาษาไทย</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ชนิดของกล้อง</lable>"
		step2 += "<input type='text' name='pawnerPostTypeCamera' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ชนิดของเลนกล้อง</lable>"
		step2 += "<input type='text' name='pawnerPostCameraLen' required='required' pattern='[^'ก-ฮ@.,!#$?:^%&*+/=()\\_`{|}~-]{1,20}'>"
		step2 += "<i>ห้ามใช้ อักษรพิเศษ</i>"
		step2 += "</p>"

		step2 += "<p>"
		step2 += "<lable>ปีที่ซื้อสินค้า</lable>"
		step2 += "<input type='date'name='pawnerPostPurchase'>"
		step2 += "</P>"

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
