/*val js*/
//val finder
var inTime = document.getElementById('seek');
var viewTime = document.getElementById('timechk');
var vol1 = document.getElementById('vol');
//audio finder
var a = document.getElementById('myaudio');
//synchronization
	//inTime.max = a.duration;
	//a.currentTime = inTime.value;
var pTime = setInterval(function(){
	//inTime.value = a.currentTime;
	a.volume = vol1.value/100;},10);

a.addEventListener("timeupdate",
	function(){
		var aa = Math.floor(a.currentTime);
		var bb = Math.floor(a.duration);
		var alabel = document.getElementById('current_time');
		var blabel = document.getElementById('max_time');
		var mbb = bb / 60;
		var sbb = bb % 60;
		blabel.innerHTML = Math.floor(mbb)+":"+sbb;
		var maa = aa / 60;
		var saa = aa % 60;
		alabel.innerHTML = Math.floor(maa)+":"+saa;
		inTime.value = aa;
		inTime.max = bb;
	}
	,false
);
inTime.addEventListener("change",
	function(){
		a.currentTime = inTime.value;
	}
	,false
);