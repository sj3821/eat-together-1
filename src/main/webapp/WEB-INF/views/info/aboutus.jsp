<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집갔다갈래 - 제작팀 소개</title>
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
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">

<!-- google font end-->



<!-- ******************* -->
<!-- header,footer용 css  -->
<link rel="stylesheet" type="text/css"
	href="/resources/css/index-css.css">
<!-- header,footer용 css  -->
<!-- ******************* -->
<link rel="stylesheet" type="text/css" href="/resources/css/info.css?f">
<style>
body {
	overflow-x: hidden;
}
</style>
<script>
	$(function() {
		$("#toJoinBtn").on("click", function() {
			location.href = "/member/signup_check";
		});
	})
</script>
</head>

<body>
	<!-- ******************* -->
	<!-- header  -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<!-- hedaer  -->
	<!-- ******************* -->

	<div class="container-fluid big-title mt-5 pt-3 mb-3 pb-3">
		<div class="row">
			<div class="col-12 col-sm-12 text-center">
				<h4 class="info-s-title">맛집 동행 찾기 서비스</h4>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-sm-12 text-center">
				<h1 class="info-title text-center">맛집 갔다 갈래</h1>

			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-12 my-3"></div>
		</div>
		<div class="row">
			<div class="col-12 col-sm-5">
				<img src="/resources/img/logo/eattogether-logo-rectangle.png"
					class="info-logo">
			</div>
			<div class="col-12 col-sm-7 text-center">
				<h3 class="info-copyright mt-5 pt-5 ">
					"우리는 사람과 식탁을 연결하고,<br>더 즐거운 삶의 방식을 만듭니다."
				</h3>
				<a href="/info/toIntroduction" class="infobadge badge badge-warning">사이트
					소개</a> <a href="/info/aboutUs" class="infobadge badge badge-success">제작팀
					소개</a>

			</div>
		</div>
		<div class="row">
			<div class="col-12 col-sm-12 my-1"></div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-12 col-sm-12 text-center mt-5 pt-5">
				<h3 class="page-title">제작팀 소개</h3>
				<hr class="title-hr" />
			</div>

		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-12 col-sm-6 my-5 mx-0 px-0 text-right">
				<img src="/resources/img/team-photo/teamphoto0.JPG" class="teamphoto" alt="team photo">
				<p class="team_name">TEAM COMA</p>
			</div>
			<div class="col-12 col-sm-6 my-5 pl-2 text-left">
			<img src="/resources/img/team-photo/teamphoto.jpg" class="teamphoto mb-2" alt="team photo">
			<img src="/resources/img/team-photo/teamphoto1.jpg" class="teamphoto" alt="team photo">
			
			</div>
		</div>
	</div>

	<div class="container-fluid mx-0 px-0">
		<div class="row">
			<div class="col-12 col-sm-12">
				<h1 class="strapline">MEET THE TEAM</h1>

			</div>
		</div>
	</div>
	<div class="container-fluid mx-0 px-0 back-00bfff">
		<div class="container">
			<div class="row">
				<div class="col-12 col-sm-12 my-5"></div>
			</div>
			<div class="row">
				<div class="col-12 col-sm-4 text-center">
					<img src="/resources/img/team-photo/suji.png" alt="SUJI LEE">
					<p class="team-name">이수지</p>
					<p class="deprt-name">Developer</p>
					<p class="contact">&#128231; sj3821@gmail.com</p>
					<p class="contact">&#127968; github.com/sj3821</p>
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-warning" data-toggle="modal"
						data-target="#sujiModal">View Details</button>
					<!-- Button trigger modal -->

					<!-- Modal -->
					<div class="modal fade" id="sujiModal" data-backdrop="static"
						data-keyboard="false" tabindex="-1" role="dialog"
						aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="staticBackdropLabel">이수지 :: 오만함을 모르는 겸손 개발자</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body text-left">
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-12" id="viewdetails">
												<span class="badge badge-dark">담당파트</span>
												<p>카카오로컬API를 이용한 모임 CRUD 기능 / 모임 참가 및 나가기, 종료 및 재시작 기능 / FAQ 게시판 / 공지사항 게시판 / 메인페이지, 사이트소개, 팀소개 페이지 / 관리자 기능(조회 및 삭제) - 모임관리, FAQ관리 / 
												AWS WEB서버 및 DB서버구축 및 관리 / 도메인 메일주소 세팅
												</p>
											</div>
										</div>

										<div class="row">
											<div class="col-12 col-md-4">
												<img src="/resources/img/team-photo/suji.png" alt="SUJI LEE">
											</div>
											<div class="col-12 col-md-8 ml-auto" id="viewdetails">
												<span class="badge badge-warning">프로젝트 느낀점</span>
												<p>
													일상적으로 이용하는 웹사이트의 프로그램들이 <span class="important_word">많은 제약조건과 경우의 수</span>를 염두하고 만들어진다는 것을 알 수 있었다. 
													서버관리의 역할이 웹프로그램을 호스팅에만 올리는 것만이 아니라는 것을 느꼈다. 
													도메인 연결, 도메인 메일주소 세팅, HTTPS 통신환경 등을 구축하는 작업을 하면서 <span class="important_word">웹아키텍처에 대한 이해</span>가 많이 필요하다는 것을 배웠다.
													
												</p>
												<span class="badge badge-warning">어려웠던 점</span>
												<p>
													<span class="important_word">사용자 유형</span>에 따라 각각 맞춤형 기능이 제공해야하고, 
													모임 상태가 실시간으로 웹페이지에 업데이트가 되게 해서 정원초과나 원치않는 유저 입장을 막아서 <span class="important_word">기능이 의도치 않게 제공되는 일을 막는 부분</span>이 어려웠다. 
													서버 구축과 관리에서도 이해가 부족한 부분이 많아서 AWS자습서와 개발자들의 블로그 포스트를 많이 읽어야했다.
													
												</p>
												<span class="badge badge-warning">흥미로웠던 점</span>
												<p>										
													모임모집기능에서 카카오 로컬<span class="important_word"> API</span>와 ajax, json을 활용해서 상점정보를 가져오는 기능이 정상작동하였을 때 정말 짜릿했다. 
													사용자유형과 모임상태에 따라서 서비스되는 기능을 다르게 넣는 것이 실시간으로 반영되는 것이 재밌었고, 
													조원들과 함께 열심히 만든 웹프로그램을 시공간와 구애받지 않는 <span class="important_word">월드와이드웹에 배포</span>할 수 있게 되었을때 뿌듯함을 느꼈다. 
													서버구축을 하다보니 트래픽 많아졌을 때의 대량 데이터 분산처리에 대한 궁금증을 갖게 되었고, 클라우드 컴퓨팅에 대해서 더 깊이 공부하고 싶어졌다.

												</p>
												<span class="badge badge-warning">앞으로 더 공부하고 싶은 분야</span>
												<p>
													<span class="important_word">분산처리 프로그래밍</span>, API 활용, REST API 구현, <span class="important_word">NoSQL</span>, AWS


												</p>

											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<span class="badge badge-light mr-2">#서버관리자</span> 
												<span class="badge badge-light mr-2">#서버마스터가_되고싶은</span> <span
													class="badge badge-light mr-2">#야매개발자</span> <span
													class="badge badge-light mr-2">#이게_왜_여기서_작동하지</span>
											</div>
										</div>



									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal -->
				</div>
				<div class="col-12 col-sm-4 text-center">
					<img src="/resources/img/team-photo/yeji.png" alt="YEJI SHIN">
					<p class="team-name">신예지</p>
					<p class="deprt-name">Developer</p>
					<p class="contact">&#128231; sinyeji958@gmail.com</p>
					<p class="contact">&#127968; github.com/yejishin-hub</p>
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-warning" data-toggle="modal"
						data-target="#yejiModal">View Details</button>
					<!-- Button trigger modal -->

					<!-- Modal -->
					<div class="modal fade" id="yejiModal" data-backdrop="static"
						data-keyboard="false" tabindex="-1" role="dialog"
						aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="staticBackdropLabel">신예지 :: 이런
										기능 추가하면 좋겠다고 말하면 다 구현해놓는 램프의 요정</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body text-left">
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-12" id="viewdetails">
												<span class="badge badge-dark">담당파트</span>
												<p>카카오맵 API를 이용한 지도형 페이지 / 지도 맛집 키워드 및 카테고리 검색 / 
													사용자 현재 위치 마커로 표시 및 이동 / 마커 클러스터러 사용 / 리뷰 작성 기능 / 리뷰 신고
													기능 / 관리자 리뷰 관리 페이지 - 리뷰 조회 및 삭제
												</p>
											</div>
										</div>

										<div class="row">
											<div class="col-12 col-md-4">
												<img src="/resources/img/team-photo/yeji.png"
													alt="YEJI SHIN">
											</div>
											<div class="col-12 col-md-8 ml-auto" id="viewdetails">
												<span class="badge badge-warning">프로젝트 느낀점</span>
												<p>
													지도형 페이지의 경우 하나의 jsp 파일 내에서 모든 내용을 처리하기 때문에 많은 양의 코드를 작성해야 했다. 
													그 덕분에 <span class="important_word">파일 분리의 중요성</span>에 대해 직접 느낄 수 있었다. 
													js , css 파일은 물론이고 인클루드 방식을 사용해 반복되는 코드를 줄여 코드를 한 눈에 볼 수 있도록 처리했다.
												</p>
												<span class="badge badge-warning">어려웠던 점</span>
												<p>
													지도에서 모임 모집으로 DB에 등록된 가게를 제외하고 사용자에게 최대한 많은 가게 정보를 보여줘야 했다.
													그러나 공공데이터포털 등 어디에도 전국의 가게 정보를 제공하는 기관은 존재하지 않았다.
													때문에 <span class="important_word">많은 양의 가게 정보 데이터를 저장할 수 있는 방법을 찾는 것</span>이 가장 어려웠다.
													고민 끝에 카카오 개발 가이드 내의 '카테고리로 장소 검색' 문서를 활용해 검색된 데이터를 <span class="important_word">json 파일</span>에 저장하는 방법을 찾았고 결과적으로 사용자에게 많은 가게 정보를 보여줄 수 있었다.
												</p>
												<span class="badge badge-warning">흥미로웠던 점</span>
												<p>										
													카카오에서 제공하는 로컬 개발 가이드 문서를 분석해 코드를 작성했다. 
													분석한 API의 서비스를 최대한 활용한 기능을 하나하나 완성해가면서 뿌듯함을 느꼈다. 
													AWS 서버를 구축하여 HTTPS 프로토콜 서비스를 할당받았을 때, 지도에서 <span class="important_word">사용자의 현재 위치</span> 정보를 가져와 지도에서 보여줄 수 있도록 구현하는 과정이 가장 흥미로웠다.
													

												</p>
												<span class="badge badge-warning">앞으로 더 공부하고 싶은 분야</span>
												<p>
													<span class="important_word">REST API</span> 학습 / 어플리케이션 개발


												</p>

											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<span class="badge badge-light mr-2">#지도마스터</span> <span
													class="badge badge-light mr-2">#풀스택개발자</span> <span
													class="badge badge-light mr-2">#말하면_다_만들어오는_개발자</span>
											</div>
										</div>



									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal -->
				</div>
				<div class="col-12 col-sm-4 text-center">
					<img src="/resources/img/team-photo/jieun.png" alt="JIEUN PARK">
					<p class="team-name">박지은</p>
					<p class="deprt-name">Developer</p>
					<p class="contact">&#128231; jieun8372@naver.com</p>
					<p class="contact">&#127968; blog.naver.com/cloudia101</p>
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-warning" data-toggle="modal"
						data-target="#jieunModal">View Details</button>
					<!-- Button trigger modal -->

					<!-- Modal -->
					<div class="modal fade" id="jieunModal" data-backdrop="static"
						data-keyboard="false" tabindex="-1" role="dialog"
						aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="staticBackdropLabel">박지은 ::
										2020년, 개발자의 적성과 능력을 각성한 슈퍼루키</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body text-left">
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-12" id="viewdetails">
												<span class="badge badge-dark">담당파트</span>
												<p>카카오톡 로그인 api 활용한 회원 로그인 / 사이트 자체 회원가입 및 로그인 로그아웃,
													회원탈퇴 / 마이페이지 내부의 내정보 보기 및 정보 수정 / 메일 라이브러리를 활용한 회원가입 축하메일
													발송 및 인증번호 발송 기능 / 마이페이지 내부의 내가 참여중인 모임 보기 / 마이페이지 내부 내가 남긴
													리뷰 보기 / 관리자 페이지 내부 회원관리 기능</p>
											</div>
										</div>

										<div class="row">
											<div class="col-12 col-md-4">
												<img src="/resources/img/team-photo/jieun.png"
													alt="JIEUN PARK">
											</div>
											<div class="col-12 col-md-8 ml-auto" id="viewdetails">
												<span class="badge badge-warning">프로젝트 느낀점</span>
												<p>
													맛집 동행 구하기 서비스가 괜찮은 사업성을 가질 수 있다고 생각한다. 파이널 프로젝트로 마무리하기에는 조금
													아쉬울 정도. 기회가 된다면 <span class="important_word">창업 공모전</span>에
													희망하는 사람들끼리 참여해보는 것도 좋을 것 같다. <span class="important_word">CEO</span>가
													될 수 있는 기회다.

												</p>
												<span class="badge badge-warning">어려웠던 점</span>
												<p>
													<span class="important_word">주석의 중요성</span>을 다시금 깨달았다. 기존의
													메서드도 수정을 통해 업데이트 되는 경우가 있어서 주석에 수정한 사람의 이름과 날짜, 간략한 코드설명을
													적어주는 게 깃허브 관리자와 팀 모두를 편하게 하는 걸 배울 수 있었다.


												</p>
												<span class="badge badge-warning">흥미로웠던 점</span>
												<p>
													<span class="important_word">API를 활용</span>하면서 구글링과 유튜브를 통해
													다른 개발자의 코드를 분석해보는 작업이 흥미로웠다. 그만큼 시간이 오래 걸리기도 했지만, 스스로 배우면서
													내 프로젝트에 반영한다는 느낌이 뿌듯하다.

												</p>
												<span class="badge badge-warning">앞으로 더 공부하고 싶은 분야</span>
												<p>
													<span class="important_word">REST API</span>를 제대로 사용해보고 싶다.
													카카오톡 로그인을 구현하면서 사용하기는 했지만 온전히 내것으로 만들기보다는 흉내를 내본 느낌이 강해서 조금
													더 욕심을 내보고자 한다.

												</p>

											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<span class="badge badge-light mr-2">#회원관리마스터</span> <span
													class="badge badge-light mr-2">#css병아리</span> <span
													class="badge badge-light mr-2">#눈부신_성장</span>
											</div>
										</div>



									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal -->

				</div>

			</div>
			<div class="row mt-5">
				<div class="col-12 col-sm-4 text-center">
					<img src="/resources/img/team-photo/sangbin1.png"
						alt="SANGBIN YOON">
					<p class="team-name">윤상빈</p>
					<p class="deprt-name">Developer</p>
					<p class="contact">&#128231; hamthink@gmail.com</p>
					<p class="contact">&#127968; github.com/hamthink</p>
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-warning" data-toggle="modal"
						data-target="#sangbinModal">View Details</button>
					<!-- Button trigger modal -->

					<!-- Modal -->
					<div class="modal fade" id="sangbinModal" data-backdrop="static"
						data-keyboard="false" tabindex="-1" role="dialog"
						aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="staticBackdropLabel">윤상빈 ::
										쓴소리하지만 해결방법도 같이 찾아주는 쓴데레</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body text-left">
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-12" id="viewdetails">
												<span class="badge badge-dark">담당파트</span>
												<p>모임 글의 생성에 따른 단체 채팅방의 생성 / 채팅 불건전 유저의 강퇴 기능 / 채팅방 퇴장
													기능 / 에러 페이지 / etc</p>
											</div>
										</div>

										<div class="row">
											<div class="col-12 col-md-4">
												<img src="/resources/img/team-photo/sangbin1.png"
													alt="SANGBIN YOON">
											</div>
											<div class="col-12 col-md-8 ml-auto" id="viewdetails">
												<span class="badge badge-warning">프로젝트 느낀점</span>
												<p>
													<span class="important_word">웹소켓</span> 방식이 다양하게 응용 가능한것을
													깨달았다. 여러 기능을 실험하고 적용할수 있었고 많은 시행착오에 거쳐 좋은 결과물이 나올 수 있었다.
												</p>
												<span class="badge badge-warning">어려웠던 점</span>
												<p>
													ServerEndPoint를 통해서는 <span class="important_word">인자</span>를
													따로 전달 할 수 없었다. 다중 채팅방이 만들어지는 특성상 채팅방 마다 <span
														class="important_word">방번호</span>가 부여되어야 했다. 고심끝에 <span
														class="important_word">HttpSession</span>을 통해 방번호를 전달한 후
													ServerEndPoint에 지역변수로 저장시켜 문제를 해결할 수 있었다. <span
														class="grey_word"> 아드레날린이 폭발한 순간</span>
												</p>
												<span class="badge badge-warning">흥미로웠던 점</span>
												<p>
													웹소켓의 메세지 전달을 통해 javascript로 화면을 <span
														class="important_word">실시간</span>으로 조정할 수 있었고 이 이점을 통해서 많은
													기능을 넣었다.
												</p>
												<span class="badge badge-warning">앞으로 더 공부하고 싶은 분야</span>
												<p>
													배움에 딱히 제한을 두고싶지 않다. <span class="grey_word">일단 웹소켓은
														한동안 하고싶지 않다</span>
												</p>

											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<span class="badge badge-light mr-2">#김잘생김</span> <span
													class="badge badge-light mr-2">#웹소켓</span> <span
													class="badge badge-light mr-2">#싫어</span> <span
													class="badge badge-light mr-2">#웹소켓마스터</span> <span
													class="badge badge-light mr-2">#디버깅천재</span>

											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal -->

				</div>
				<div class="col-12 col-sm-4 text-center">
					<img src="/resources/img/team-photo/yooseung1.png"
						alt="YOOSEUNG CHA">
					<p class="team-name">차유승</p>
					<p class="deprt-name">Developer</p>
					<p class="contact">&#128231; chayooseung@gmail.com</p>
					<p class="contact">&#127968; blog.naver.com/uououoi</p>
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-warning" data-toggle="modal"
						data-target="#yooseungModal">View Details</button>
					<!-- Button trigger modal -->

					<!-- Modal -->
					<div class="modal fade" id="yooseungModal" data-backdrop="static"
						data-keyboard="false" tabindex="-1" role="dialog"
						aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="staticBackdropLabel">차유승 ::
										현재에 만족하지 않고 더~ 더~ 더~ 업그레이드를 해내는 자가발전 개발자 </h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body text-left">
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-12" id="viewdetails">
												<span class="badge badge-dark">담당파트</span>
												<p> 새 쪽지 알림기능 / 쪽지함 / 쪽지 수신 송신 / 쪽지 답장 기능 / 쪽지 삭제 기능/ 회원가입 자동 축하 쪽지 / 관리자 단체쪽지 기능 / 삭제한 쪽지 복구 기능/ 쪽지 관리자 페이지 / 1:1문의 게시판 / 1:1문의 관리자 페이지</p>
											</div>
										</div>

										<div class="row">
											<div class="col-12 col-md-4">
												<img src="/resources/img/team-photo/yooseung1.png" alt="YOOSEUNG CHA">
											</div>
											<div class="col-12 col-md-8 ml-auto" id="viewdetails">
												<span class="badge badge-warning">프로젝트 느낀점</span>
												<p>
													<span class="important_word">실시간 피드백</span>은 더 <span class="important_word">좋은 결과물</span>을 가져온다. 팀원들의 코드를 분석하고 이해하고 사용하는 것 까지 해볼수있는   좋은 기회였다. 그리고 다들 자신의 능력을 숨기고있었다.


												</p>
												<span class="badge badge-warning">어려웠던 점</span>
												<p>
													<span class="important_word">전체쪽지기능</span>, 고민을 가장 많이 했다. 멤버 테이블에서 사람들의 이름을 꺼내와서 for문을 돌려보기도 하고 비효율적인 것 같아 sql 문법을 많이 찾아 보았다. 결국 sql 한문장으로 끝냈다



												</p>
												<span class="badge badge-warning">흥미로웠던 점</span>
												<p>
													<span class="important_word">SQL 문법</span>, 새로운 쪽지 알림,검색,전체쪽지 결국 sql을 얼마나 잘 작성하느냐의 문제인것같다. 쿼리만 잘 작성하면 기능은 금방 추가되었다. 구글링을 통해 자연스럽게 sql 문법에 흥미가 생겼다.


												</p>
												<span class="badge badge-warning">앞으로 더 공부하고 싶은 분야</span>
												<p>
													Server, Session, AOP, API


												</p>

											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<span class="badge badge-light mr-2">#차간단</span> <span
													class="badge badge-light mr-2">#쪽지천재</span> <span
													class="badge badge-light mr-2">#끝없는_자가발전</span>
											</div>
										</div>



									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal -->
					
				</div>
				<div class="col-12 col-sm-4 text-center">
					<img src="/resources/img/team-photo/taehoon.png" alt="TAEHOON KIM">
					<p class="team-name">김태훈</p>
					<p class="deprt-name">Developer</p>
					<p class="contact">&#128231; taehoon830@gmail.com</p>
					<p class="contact">&#127968; github.com/TaeHoon403</p>
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-warning" data-toggle="modal"
						data-target="#taehoonModal">View Details</button>
					<!-- Button trigger modal -->

					<!-- Modal -->
					<div class="modal fade" id="taehoonModal" data-backdrop="static"
						data-keyboard="false" tabindex="-1" role="dialog"
						aria-labelledby="staticBackdropLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="staticBackdropLabel">김태훈 ::
										포기하지 않고 끝까지 완주하는 성실함을 가진 꾸준한 개발자 </h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body text-left">
									<div class="container-fluid">
										<div class="row">
											<div class="col-md-12" id="viewdetails">
												<span class="badge badge-dark">담당파트</span>
												<p>
												생성된 모임 리스트를 보는 페이지 / 조건에 따른 모임글 리스트를 보는 페이지 / 페이지는 ajax 를 통한 무한 스크롤로 로딩 / 인기 맛집 선정 후 별점 높은 리뷰로 소개 / 인기맛집 직접 모집하러 가기 / 모임 신고 기능 / 관리자 신고 관리 기능 	
												</p>
											</div>
										</div>

										<div class="row">
											<div class="col-12 col-md-4">
												<img src="/resources/img/team-photo/taehoon.png" alt="TAEHOON KIM">
											</div>
											<div class="col-12 col-md-8 ml-auto" id="viewdetails">
												<span class="badge badge-warning">프로젝트 느낀점</span>
												<p>
													<span class="important_word">깃 허브를 관리</span>하면서 버전 관리의 어려움과 중요성을 느꼈다.
													기능을 맡기 전 시간 분배를 해보고 충분히 가능한 선에서 맡아야 한다.
													<span class="important_word">모듈화의 중요성</span>을 다시 한번 배웠다.기능의 모듈화가 잘 되야 코드 및 기능의 중복을 막을 수 있다.
													함께 하는 프로젝트의 경우 설계부터 탄탄해야 중간 중간 큰 수정 없이 톱니바퀴가 맞물려 돌아가듯 서로 잘 합쳐질 수 있다.			
												</p>
												<span class="badge badge-warning">어려웠던 점</span>
												<p>
													만드는 기능들이 다른 사람들이 만든 기능을 이용하는 경우가 많았는데 이를 기다리다 시간 분배를 잘 못 해 시간에 많이 쫓기게 되었다.
													또 알 수 없는 오류들을 해결 하기 위해 많은 시간들을 빼앗겼다.
													오타의 경우도 꽤 있었지만 자바 스크립트의 로딩시 코드를 읽어들이고 하는 부분의 에러가 많아 여러 시행 착오를 겪으며 에러를 잡아낼 수 있었다.

												</p>
												<span class="badge badge-warning">흥미로웠던 점</span>
												<p>
													쿼리문 작성은 <span class="important_word">마이베티스</span>를 배우기 전 후 로 나누어질 정도로 편리했다.
													단순 스트링 값으로 쿼리를 작성해 서버에서 검색할때는 조건 마다 쿼리문을 작성해야 했지만 마이베티스를 이용하면서 <span class="important_word">조건에 따른 DB 검색</span>이 훨씬 <span class="important_word">수월</span>해 졌다.
													이를 통해 복잡한 구조의 쿼리문도 손 쉽게 사용할 수 있는 점에 재미와 흥미를 느꼈다.

												</p>
												<span class="badge badge-warning">앞으로 더 공부하고 싶은 분야</span>
												<p>
													서버와의 통신에서 원하는 데이터를 얼마나 간단하고 정확하게 가져오느냐가 생각보다 중요하다고 느껴져  <span class="important_word">SQL</span> 에 대해 더 깊게 공부해 보고 싶었다. 
												</p>

											</div>
										</div>

										<div class="row">
											<div class="col-md-12">
												<span class="badge badge-light mr-2">#깃관리자</span>
												<span class="badge badge-light mr-2">#깃_마스터가_되어보자</span> <span
													class="badge badge-light mr-2">#프론트는_디자이너에게</span> <span
													class="badge badge-light mr-2">#오류_없는_개발자</span> <span
													class="badge badge-light mr-2">#당신은_이미_깃_마스터입니다</span> <span
													class="badge badge-light mr-2">#넘치는_책임감</span>

											</div>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal -->
					
				</div>

			</div>

			<div class="row">
				<div class="col-12 col-sm-12 my-5"></div>
			</div>
		</div>

	</div>


	<!-- ******************* -->
	<!-- footer  -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

	<!-- footer  -->
	<!-- ******************* -->
</body>
</html>