<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> HOME </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="stylesheet" type="text/css" href="/iup/resources/css/all.css">
  <link rel="stylesheet" type="text/css" href="/iup/resources/css/home.css">
  <style>
	body #menu1{
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
			<article id="photo">
				<img id="main_photo" src="/iup/resources/img/home/${vo.HOME_SRC}"/>
			</article>
			<article id="text_area">
				<h5 id="p_name">이지은 // IU</h5>
				<h2 id="text1">RES<a class="font_point">ON</a>ATE</h2>
				<h2 id="text2"><a class="font_point">I</a>N YO<a class="font_point">U</a>R</h2>
				<h2 id="text3">MI<a class="font_point">NE</a> & HEAR<a class="font_point">T</a></h2>
			</article>
			<div class="clear"></div>
			<div id="source_tag">
				<a>11, 2013 by IU ELLE merden times <a href="http://daeng516.tistory.com/24">http://daeng516.tistory.com/24</a></a>
			</div>
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
