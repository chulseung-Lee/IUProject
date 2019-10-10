<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> CONTACT </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="stylesheet" type="text/css" href="css/all.css">
  <link rel="stylesheet" type="text/css" href="css/contact.css">
  <style>
	body #menu6{
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
					<li>C</li>
					<li>O</li>
					<li>N</li>
					<li>T</li>
					<li>A</li>
					<li>C</li>
					<li>T</li>
				</ul>
			</article>
			<article id="sns_box">
				<a href="https://www.facebook.com/iu.loen/"><img src="icon/facebook.png"></a>
				<a href="https://www.youtube.com/channel/UC3SyT4_WLHzN7JmHQwKQZww"><img src="icon/youtube.png"></a>
				<a href="https://twitter.com/lily199iu?lang=ko"><img src="icon/twiter.png"></a>
				<a href="https://www.instagram.com/dlwlrma/?hl=ko"><img src="icon/instargram.png"></a>
			</article>
			<article id="content_box">
				<div id="info_box">
					<li class="info_title">MANAGEMENT | Loen Entertainment</li>
					<li class="info_address"><a href="http://www.iloen.com/">iloen.com</a></li>
					<li class="info_pnumb">02-2280-7700</li>

					<li class="info_title">Official Cafe | Daum</li>
					<li class="info_address"><a href="http://cafe.daum.net/IU">cafe.daum.net/IU</a></li>
					<li class="info_pnumb">123-456-7890</li>

					<li class="info_title">Page Creater | ChulSeung Lee</li>
					<li class="info_address">dlcjftmd93@naver.com</li>
					<li class="info_pnumb">010-3080-1190</li>

					<li class="info_title">Project | ShinGu College</li>
					<li class="info_address"><a href="http://www.shingu.ac.kr/main.do?method=getIndex&gcd=G1001">shingu.ac.kr</a></li>
					<li class="info_pnumb">031-740-1114</li>

					<li class="info_title">Subscribe for updates</li>
					<li><input id="sub_txt" type="text" name="email_adr" placeholder="Email Address"></li>
					<li><input id="sub_btn" type="button" value="Subscribe Now" onclick="subnow()"></li>

				</div>
				<div class="clear"></div>
				<div id="footer1">
				<hr/>
				<p> 2017 11, IU. create with ChulSeung</p>
				</div>
				<div id="sub_who">
					<p>Thanks for Subscribe</p>
					<div id="sub_name"></div>
				</div>
				<script src="subscribe.js"></script>
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
