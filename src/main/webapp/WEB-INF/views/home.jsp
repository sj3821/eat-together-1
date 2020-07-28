<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>맛집갔다갈래 - 맛집 동행 찾기 서비스 By 코딩맛집(COMA)</title>
<!-- BootStrap4 -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- BootStrap4 End-->

<!-- google font -->
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;900&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap"
   rel="stylesheet">

<!-- google font end-->

<!-- ******************* -->
<!-- header,footer용 css  -->
<link rel="stylesheet" type="text/css"
   href="/resources/css/index-css.css?a">
<!-- header,footer용 css  -->
<!-- ******************* -->

<!-- 
<script>
   $(function(){
      $("#toMap").on("click",function(){
         location.href = "/map/toMap";
      })
   })
</script> -->
</head>
<body>
   <!-- ******************* -->
   <!-- header  -->
   <jsp:include page="/WEB-INF/views/include/header.jsp" />
   <!-- hedaer  -->
   <!-- ******************* -->

   <!--contents-->
   
   <div class="container-fluid ">
      <!-- 슬라이드 -->
      <div class="row slide-area ">
         <div class="col px-0 mx-0">

            <div id="carouselExampleCaptions" class="carousel slide"
               data-ride="carousel">
               <ol class="carousel-indicators">
                  <li data-target="#carouselExampleCaptions" data-slide-to="0"
                     class="active"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                  <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
               </ol>
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <img src="/resources/img/slide01.jpg" class="d-block w-100"
                        alt="...">
                     <div class="carousel-caption d-none d-md-block">
                        <h1>
                           마음의 허기를 달래줄<br> <span class="index-copyright">밥친구</span>를
                           찾습니다
                        </h1>
                        <p>맛집 동행 찾기 서비스 - 맛집갔다갈래</p>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <img src="/resources/img/slide02.jpg" class="d-block w-100"
                        alt="...">
                     <div class="carousel-caption d-none d-md-block">
                        <h1>
                           같은 팀을 응원하는 사람과<br> 함께 중계를 보며 식사를 하고 싶을때
                        </h1>
                        <p>스포츠와 함께 할 때 더 즐거운 식사</p>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <img src="/resources/img/slide03.jpg" class="d-block w-100"
                        alt="...">
                     <div class="carousel-caption d-none d-md-block">
                        <h1>
                           혼자 가기 아쉬운 맛집<br> 누군가와 함께 가고 싶을 때
                        </h1>
                        <p>같이 공유하는 미각의 즐거움</p>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <img src="/resources/img/slide04.jpg" class="d-block w-100"
                        alt="...">
                     <div class="carousel-caption d-none d-md-block">
                        <h1>
                           지금 찾아보세요<br> 맛있는 음식! 즐거운 친구!
                        </h1>
                        <p>간편회원가입으로 시작하세요!</p>
                     </div>
                  </div>
               </div>
               <a class="carousel-control-prev" href="#carouselExampleCaptions"
                  role="button" data-slide="prev"> <span
                  class="carousel-control-prev-icon" aria-hidden="true"></span> <span
                  class="sr-only">Previous</span>
               </a> <a class="carousel-control-next" href="#carouselExampleCaptions"
                  role="button" data-slide="next"> <span
                  class="carousel-control-next-icon" aria-hidden="true"></span> <span
                  class="sr-only">Next</span>
               </a>
            </div>
         </div>
      </div>
      
      <div class="row">
      <div class="col-sm-12 py-2" style="background-color:#fdc23e;"></div></div>
      <div class="row">
      <div class="col-sm-12 py-5 text-center" style="background-color:#fdc23e;">
      		<iframe width="560" height="315" src="https://www.youtube.com/embed/pKvP6qy6rWw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      
      </div>
     </div>
   

	

	<script>
	// 카카오톡으로 로그인한 경우 accoun_email인증이 안되었기 때문에 mypage로 이동시킨다_20200717	
	if ("${loginInfo.account_email}" == "need@eat-together.com") {
			alert("이메일 인증 및 개인정보 수정 후 사이트를 이용해주시길 바랍니다.");
			location.replace("/member/mypage_myinfo");
		}
	</script>

	<!-- ******************* -->
	<!-- footer  -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

	<!-- footer  -->
	<!-- ******************* -->
</body>
</html>