/*txt javascript*/
	//var numb = document.getElementByClassName('numb');
for (var i=1;i<=7 ;i++ )
{
	function overE(i){
		var cn = document.getElementById('chart'+i);
		cn.innerHTML = "&gt;";
	}
	function outE(i){
		var cn = document.getElementById('chart'+i);
		cn.innerHTML = i;
	}
}
