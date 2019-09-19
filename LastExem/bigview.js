/*gallery viewer*/
var big = document.getElementById("big_size");
var getImg = document.getElementById("bigger_img");
for(var i=1;i<=9;i++){
	function bigger(i){
		big.style.zIndex=11;
		imgFadeIn(i);
	}
}
function remove_bigger(){
	var level2 = 1;
	var imageFadeOut = setInterval(function(){
		level2 = level2 - 0.1;
		big.style.opacity = level2;
		if(level2 < 0){
			clearInterval(imageFadeOut);
			big.style.zIndex=1;
			big.style.display = 'none';
		}
	},10);
}
function imgFadeIn(n){ 
	getImg.src="img/thumb/g"+n+".jpg";
	big.style.display = 'block';
	var level = 0;
	var imageFadeIn = setInterval(function(){
	  level = level + 0.05;
	  big.style.opacity = level;
	  if(level > 1){
		  clearInterval(imageFadeIn);
	  }
	},10);
}