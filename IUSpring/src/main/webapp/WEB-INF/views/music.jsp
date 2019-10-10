<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> MUSIC </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="stylesheet" type="text/css" href="css/all.css">
  <link rel="stylesheet" type="text/css" href="css/music.css">
  <script src="music_hover.js" type="text/javascript">
  </script>
  <style>
	body #menu3{
		color:#ff8bda;
	}
  </style>
 </head>

 <body>
	<section id="wrap">
		<section id="main_menu">
			<ul>
				<a href="index.html">
				<li id="menu1">HOME</li>
				</a>
				<a href="about.html">
				<li id="menu2">ABOUT</li>
				</a>
				<a href="music.html">
				<li id="menu3">MUSIC</li>
				</a>
				<a href="gallery.html">
				<li id="menu4">GALLERY</li>
				</a>
				<a href="epk.html">
				<li id="menu5">EPK</li>
				</a>
				<a href="contact.html">
				<li id="menu6">CONTACT</li>
				</a>
			</ul>
		</section>
		<div class="clear"></div>
		<section id="content">
			<article id="title_name">
				<ul>
					<li>M</li>
					<li>U</li>
					<li>S</li>
					<li>I</li>
					<li>C</li>
				</ul>
			</article>
			<article id="music_box">
				<label id="litle_txt1" class="litle_txt">Representive song</label>
				<label id="litle_txt2" class="litle_txt">&copy;content is property of IU</label>
				<div class="clear"></div>
				<img id="music_cover" src="img/sony.jpg"></img>
				<div class="clear"></div>
				<iframe id="music_control" frameborder=0 name="music_frame" src="frame/m1.html" seamless>
				</iframe>
				<div class="clear"></div>
				<div class="partitions"></div>

				<div onmouseover="overE(1)" onmouseout="outE(1)" id="txt_event1">
					<a target="music_frame" href="frame/m1.html">
						<label class="numb" id="chart1">1</label> 
						<label class="music_name">마음 </label> 
						<label class="mTime">2:46</label>
					</a>
				</div>
				<div class="partitions"></div>
				
				<div onmouseover="overE(2)" onmouseout="outE(2)" class="txt_event">
					<a target="music_frame" href="frame/m2.html">
						<label class="numb" id="chart2">2</label> 
						<label class="music_name">금요일에 만나요 </label>
						<label class="mTime">3:37</label>
					</a>
				</div>
				<div class="partitions"></div>

				<div onmouseover="overE(3)" onmouseout="outE(3)" class="txt_event">
					<a target="music_frame" href="frame/m3.html">
						<label class="numb" id="chart3">3</label> 
						<label class="music_name">내 손을 잡아 </label> 
						<label class="mTime">3:15</label>
					</a>
				</div>
				<div class="partitions"></div>

				<div onmouseover="overE(4)" onmouseout="outE(4)" class="txt_event">
					<a target="music_frame" href="frame/m4.html">
						<label class="numb" id="chart4">4</label> 
						<label class="music_name">좋은 날 </label> 
						<label class="mTime">3:53</label>
					</a>
				</div>
				<div class="partitions"></div>

				<div onmouseover="overE(5)" onmouseout="outE(5)" class="txt_event">
					<a target="music_frame" href="frame/m5.html">
						<label class="numb" id="chart5">5</label> 
						<label class="music_name">가을 아침 </label> 
						<label class="mTime">3:53</label>
					</a>
				</div>
				<div class="partitions"></div>

				<div onmouseover="overE(6)" onmouseout="outE(6)" class="txt_event">
					<a target="music_frame" href="frame/m6.html">
						<label class="numb" id="chart6">6</label> 
						<label class="music_name">Rain Drop </label> 
						<label class="mTime">3:53</label>
					</a>
				</div>
				<div class="partitions"></div>

				<div onmouseover="overE(7)" onmouseout="outE(7)" class="txt_event">
					<a target="music_frame" href="frame/m7.html">
						<label class="numb" id="chart7">7</label> 
						<label class="music_name">밤편지 </label> 
						<label class="mTime">3:53</label>
					</a>
				</div>
			</article>
		</section>
	</section>
  <script>
  /*page fade in*/
	document.getElementById("content").style.opacity=0;
	var level = 0;
	var goFadeIn = setInterval(function(){
		level = level + 0.01;
		document.getElementById("content").style.opacity=level;
		if(level > 1){
			clearInterval(goFadeIn);
		}
	},10);
  </script>
 </body>
</html>
