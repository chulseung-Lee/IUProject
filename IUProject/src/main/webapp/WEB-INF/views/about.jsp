<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> ABOUT </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <link rel="stylesheet" type="text/css" href="css/all.css">
  <link rel="stylesheet" type="text/css" href="css/about.css">
  <style>
	body #menu2{
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
					<li>A</li>
					<li>B</li>
					<li>O</li>
					<li>U</li>
					<li>T</li>
				</ul>
			</article>
			<article id="photo">
				<img id="main_photo" src="img/about.jpg">
				</img>
			</article>
			<div class="clear"></div>
			<div id="txt1">
			<dl>
				<dt> "내 주변의 선배, 동료 뮤지션들이<br/>
				유망주라고 손꼽아 말하는 가수다<br/>
				귀여운 아이유에게 곡을 주고 싶다"</dt>
				<dd>- 유희열, 유희열의 스케치북 中</dd>
				<dt>"아이유는 음색이 너무 예쁘다,<br/>
				개인적으로 허스키하면서도<br/>
				중음의 포인트가 너무 좋았다.</dt>
				<dd>- 김형석, 김형석의 다락방 中</dd>
				<dt>"최고음에서 주파수의 변동 폭이<br/>
				안정적이며 폐활량이 풍부해<br/>
				최고음을 오래 지속시킬 수 있다"</dt>
				<dd>- 숭실대학교 배명진 교수</dd>
			</dl>
			</div>
			<div id="txt2">
				아이유(IU 본명:이지은,1993년 5월 16일)<br/>라는 예명은
				'I'와 'You'를 합친 합성어로 <br/>'너와 내가 음악으로 
				하나가 된다'라는 의미이다.<br/>
				2008년 9월 20일에 '미아'로 데뷔했고,<br/>
				2010년 6월에 '잔소리'라는 곡으로 K차트 <br/>1위를 수상한다.
				그 해 12월에 세 번째 미니음반 <br/>Real을 발매하였는데,
				하루만에 차트 1위를 <br/>차지하며 인기를 얻었다.<br/><br/>
				아이유는 2011년 '드림하이'를 통해 <br/>연기자로서의 모습도 보여주면서<br/> 2013 '최고다 이순신', 2015 '프로듀사', <br/>2016 '달의 연인 - 보보심경려'에 출연하며 <br/>배우로서의 입지도 다병?
			</div>
			<div class="clear"></div>
			<hr/>
			<p> 2017 11, IU. create with ChulSeung</p>
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
