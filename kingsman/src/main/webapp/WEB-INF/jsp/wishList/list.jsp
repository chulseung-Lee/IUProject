<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%-- <%@ include file="/WEB-INF/include/include-header-hanbyul.jspf"%> --%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="디스이즈네버댓, 커버낫, 엘엠씨, 아디다스, 반스, 휠라, 키르시, 5252 바이 오아이오아이">



<title>Kingman WishList</title>

<!-- <link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/magazine_common.css?20180419"> -->
<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/store_common.css?20181213_1">
<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/layout.css?20190207">
<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/guide.min.css?20190215">
<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/sub.css?20190219_5">
<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/style.css?20190218_1">
<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/media_query.css?20190110">
<!--<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/font.css?20170221" />-->
<link rel="stylesheet" type="text/css" href="//static.musinsa.com/skin/musinsa/css/new.css?20190121_1">
<!-- 스토어, 매거진 공통 스크립트 -->
<script async="" src="//www.google-analytics.com/analytics.js"></script><script type="text/javascript" src="//static.musinsa.com/mfile_outsrc/js/vendor/jquery-1.11.1.min.js?20160201"></script>
<script type="text/javascript" src="//static.musinsa.com/mfile_outsrc/js/common/base.js?20160201"></script>
<script type="text/javascript" src="//static.musinsa.com/mfile_outsrc/js/common/common.js?20181114"></script>
<script type="text/javascript" src="//static.musinsa.com/mfile_outsrc/js/vendor/jquery.easing.js?20160201"></script>
<!--// 스토어, 매거진 공통 스크립트 -->

<script type="text/javascript" src="//static.musinsa.com/skin/musinsa/js/mini_cart.js?20181029_1"></script>
<script type="text/javascript" src="//static.musinsa.com/skin/musinsa/js/common.js?20190118_1"></script>
<script type="text/javascript" src="//static.musinsa.com/skin/musinsa/js/jquery.cycle.all.js?20160202"></script>
<script type="text/javascript" src="//static.musinsa.com/skin/musinsa/js/m_js/jquery-ui.min.js?20160202"></script>
<script type="text/javascript" src="/xf/lib/jslib.js?20160201"></script>
<script type="text/javascript" src="//static.musinsa.com/skin/musinsa/js/jquery.bxslider.js?20180503"></script>
<script type="text/javascript" src="//static.musinsa.com/skin/musinsa/js/suggestions.js?20180626"></script>
<script type="text/javascript" src="//static.musinsa.com/skin/musinsa/js/clipboard.min.js?20170406"></script>
<!-- 



<script src="/skin/musinsa/js/jquery.lazyload.min.js?20160119" type="text/javascript"></script> --></head>


<style type="text/css">
      #title{
      font-size: 50px;

}

   
li.li_box {
   font-size: 13px;

}   

div.box_product {

   width: 1100px;
   /* padding-left: 200px; */
   margin: 0 auto;
}

#tttt {

float: left;


}

div.all {
   width: 1100px;
}

h2#title {
   padding-right: 900px;
   text-shadow: 15px -11px 15px #f11b8f;
   font-family: Bebedera;
   color: blue;
}

   .idsession {
   font-size: 15px;
   width: 1100px;
   padding-left: 15px;
   
}

@font-face {

  font-family: Bebedera;

  src: url('/kingsman/resources/font/A Bebedera.ttf');

}

/* @font-face 
{ 
   font-family: "NotoSansKR-Light"; 
   src: url('../font/NotoSansKR-Light.otf');
} */
#AllcartMemInfo
{
/*    font-family: "NotoSansKR-Light";  */
   text-align: left;
   font-size: 17px;
   color:#BDBDBD;
   float: left;
   width: 1118px;
   float: left;
}

div #AllcartMemInfo {
width: 1100px;

}

div #allwrap {
width: 1100px;
text-align: left;
}
   
</style>
   






</head>






<body>

<form id="frm">

      <div class="allwrap">
      <br /><br /><br /><br /><br /><br /><br /><br /><br />
      <h2 id="title">WISHLIST</h2>      <br /><br />
      <!--mypage detail-->
      
      
      <div class="idsession">
                     
                     <c:if test="${idSession!=null }">
                        <div id="AllcartMemInfo">( ${idSession} 님의 WISHLIST 목록 ) </div>
                     </c:if>
                     <br /><br />
            <div id="all">
            <a id="tttt" href="/kingsman/wishList/deleteAllWishlist" onclick="NewWishlist.deleteAll();">
            <img src="/kingsman/resources/images/delete.png" height="16" width="26" >전체상품 삭제</a> <br /><br />
            </div>
      </div>
      
      
                        <c:choose>
                           <c:when test="${fn:length(wishlist) > 0}">
      
      
      
      
      <div class="section_container_mypage">
         <div class="section_contents">
            <div class="box_product">
               <!-- <form name="f1" method="post" onsubmit="return false;"> -->
                  
               <ul class="snap-article-list center goods_320_media4">
                  <!--상품-->
                        <c:forEach items="${wishlist}" var="row">
                      <li class="li_box">
                     <div class="box_img">
                        <a href="/kingsman/item/detail?ITEM_NO=${row.ITEM_NO }">
                           <img src="/kingsman/resources/imagephoto/<c:out value="${row.ITEM_SHORTPATH}"></c:out>"  width="62" height="83" ><span class="vertical_standard"></span>
                        </a>
                        
                     </div>
                     <div class="box_info">
                        <a href="/kingsman/item/detail?ITEM_NO=${row.ITEM_NO }">
                           <span class="txt_brand">[kingsman]</span>
                           <span class="txt_item_name">${row.ITEM_NAME}</span>
                           <div class="box_price">
                              <!-- <span class="txt_price_origin">88,000원</span> -->
                              <span class="txt_price"><fmt:formatNumber value="${row.ITEM_PRICE}" pattern="#,###" />원 </span>
                           </div>
                        </a>
                        <div class="box_like active">
                        <c:url var="deleteOne" value="/wishList/deleteOneWishlist">
                                    <c:param name="WISH_NO" value="${row.WISH_NO }" />
                                       </c:url>
                                    <c:if test="${memberInfo.MEMBER_ID!=null }">
                                          <a href="${deleteOne }" >
                                          <img src="/kingsman/resources/images/delete.png" alt="삭제" width="25" height="20"></a>
                                    </c:if>
                                       <c:if test="${memberInfo.MEMBER_ID==null }">
                                          <a href="${deleteOne }" >
                                          삭제
                                       </a>
                                    </c:if>
                        
                        </div>
                     </div>
                  </li>
                           </c:forEach>


                                    
               </ul>
            </div>
            
            <br />
      ${pagingwish}      
      </div>
   </c:when>
                              <c:otherwise>
                              <tr>
                                 <td colspan="4">조회된 결과가 없습니다.</td>
                                 <br /> <br />
                              </tr>
                           </c:otherwise>
</c:choose>
</div>
</form>

<%--       <table>
         <tr>
            <td colspan="2">${pagingwish}</td>
            <td></td>
         </tr>

      </table>    --%>
      <!--// 컨텐츠 영역 -->
 </form>
</body>
</html>