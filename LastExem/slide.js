/*slide*/

	var slideIndex = 1;
	showDivs(slideIndex);

	var myImg = setInterval(nextImg, 3000);

	function plusDivs(n) {
	  showDivs(slideIndex += n);
	  clearInterval(myImg);
	  myImg = setInterval(nextImg, 3000);
	}

	function currentDiv(n) {
	  showDivs(slideIndex = n);
	  clearInterval(myImg);
	  myImg = setInterval(nextImg, 3000);
	}
	function showDivs(n) {
	  var i;
	  var x = document.getElementsByClassName("mySlide");
	  if (n > x.length) {slideIndex = 1}    
	  if (n < 1) {slideIndex = x.length} ;
	  for (i = 0; i < x.length; i++) {
		 x[i].style.display = "none"; 
	  }
	  fadeIn(x[slideIndex-1]);
	}
	function nextImg(){
		slideIndex = slideIndex+1;
		showDivs(slideIndex);
	}

	function fadeIn(n){
	  n.style.display = "block";  
	  n.style.opacity=0;
	  var level = 0;
	  var goFadeIn = setInterval(function(){
		  level = level + 0.02;
		  n.style.opacity = level;
		  if(level > 1){
			  clearInterval(goFadeIn);
		  }
	  },10);
	}