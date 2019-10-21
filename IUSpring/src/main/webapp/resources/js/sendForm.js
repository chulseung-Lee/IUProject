/**
 * 
 */
function formSubmit(obj) {
	var form = document.getElementById("sendForm");
	var value1 = document.getElementById("sendFormVar");
	value1.value = obj;
	form.submit();
}

function formSubmit2(obj) {
	var form = document.getElementById("sendForm");
	var value1 = document.getElementById("sendFormVar");
	var value2 = document.getElementById("methodType");
	value1.value = obj;
	value1.name = 'HOME_SRC';
	alert(value1.value);
	value2.value = 3;
	form.submit();
}