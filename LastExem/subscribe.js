/*subscribe*/

var subview = document.getElementById("sub_who");
subview.style.opacity=0;
function subnow(){
	var sublist = document.getElementById("sub_name");
	var subtxt = document.getElementById("sub_txt").value;
	if(subtxt == ""){
		alert("plz insert your email");
	}else{
		sublist.innerHTML = sublist.innerHTML + "<br/>" + subtxt;
		subview.style.opacity = 1;
	}
}