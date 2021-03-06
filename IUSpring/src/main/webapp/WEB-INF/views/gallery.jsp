<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> GALLERY </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="stylesheet" type="text/css" href="css/all.css">
  <link rel="stylesheet" type="text/css" href="css/home.css">
  <link rel="stylesheet" type="text/css" href="css/gallery.css">
  <style>
	body #menu4{
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
					<li>G</li>
					<li>A</li>
					<li>L</li>
					<li>L</li>
					<li>E</li>
					<li>R</li>
					<li>Y</li>
				</ul>
			</article>

			<table id="photo_table">
				<tr>
					<td><div onclick="bigger(1)" title="클릭해서 크게보기"><img id="pt1" src="img/thumb/g1.jpg"></div></td>
					<td><div onclick="bigger(2)" title="클릭해서 크게보기"><img id="pt2" src="img/thumb/g2.jpg"></div></td>
					<td><div onclick="bigger(3)" title="클릭해서 크게보기"><img id="pt3" src="img/thumb/g3.jpg"></div></td>				
				</tr>
				<tr>
					<td><div onclick="bigger(4)" title="클릭해서 크게보기"><img id="pt4" src="img/thumb/g4.jpg"></div></td>
					<td><div onclick="bigger(5)" title="클릭해서 크게보기"><img id="pt5" src="img/thumb/g5.jpg"></div></td>
					<td><div onclick="bigger(6)" title="클릭해서 크게보기"><img id="pt6" src="img/thumb/g6.jpg"></div></td>
				</tr>
				<tr>
					<td><div onclick="bigger(7)" title="클릭해서 크게보기"><img id="pt7" src="img/thumb/g7.jpg"></div></td>
					<td><div onclick="bigger(8)" title="클릭해서 크게보기"><img id="pt8" src="img/thumb/g8.jpg"></div></td>
					<td><div onclick="bigger(9)" title="클릭해서 크게보기"><img id="pt9" src="img/thumb/g9.jpg"></div></td>
				</tr>
			</table>
			<div id="big_size" onclick="remove_bigger()" title="클릭해서 작게하기">
			<img id="bigger_img" src="img/thumb/g1.jpg">
			</div>
		<script src="bigview.js"></script>
			<div class="clear"></div>
			<hr id="line1"/>
			<div id="footer"> 2017 11, IU. create with ChulSeung</div>
			
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
