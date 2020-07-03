<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>About</title>

<!-- setting -->

<%@ include file="/Layout/FrontMeta.jsp" %>
<link rel="stylesheet" type="text/css" href="../styles/about.css">
<link rel="stylesheet" type="text/css" href="../styles/about_responsive.css">
</head>
<body>

<div class="super_container">
<!-- Header -->
<%@ include file="/Layout/Header.jsp" %>

<!-- Menu -->

<%@ include file="/Layout/Menu.jsp" %>

	<!-- Home -->

	<div class="home">
		<div class="container">
			<div class="row text-center">
				<div class="col-lg-12">
					<div class="home_content">
						<div class="home_title">#SNS란?</div>
						<div class="index-over"><a href="../Main/index.jsp">Home</a> <i class="fa fa-angle-right" aria-hidden="true"></i> About <i class="fa fa-angle-right" aria-hidden="true"></i> <a href="../About/about.jsp">#sns란?</a></div>		
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Team -->

	<div class="team">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_title"><h2>#SNS</h2></div>
						<div class="team_text">
							<p>SNS상에서만 존재하는 숍을 이용하고자 하는 사람들을 위해 사이트들을 한곳에 모으게 되었습니다.<br>
							제가 온라인 숍중에 홈페이지가 따로 존재하는 숍은 이용하지 않고<br>
							 sns상에서만 존재 하는 숍만 이용하다보니 제작하고자 했고<br>
							이와 관련된? 원하는 형태의 템플릿을 찾지못해 사실상 메뉴나 홈을 제외하고는 <br>
							거의 전부 새로 작성하게 되었습니다.<br>
							본래 이 템플릿은 호스팅을 위해 만들어진 템플릿 이었으며<br>
							중간 페이지들는 틀이 아닌 버튼 등의 아이템 가이드가 적혀있었습니다.<br>
							다른 동기들이 본인 주제에 알맞는 템플릿을 찾아 좀 더 편한 길을 걸을때<br>
							혼자 기반부터 작성하고 여러 정보를 찾으면서 굉장히 힘들었지만 <br>
							제 실력에는 도움이 되리라 믿고 완성을 위해 여기까지 달려왔습니다.<br>
							가능한 모든 버튼과 콘텐츠가 작동하도록 작성하였고 시간을 쪼개어 디테일에도 집중했습니다.<br>
							아직은 부족함이 많은 결과물 이지만 긍정적으로 봐주세요 ^_^
						</p>
						</div>
					</div>
				</div>
			</div>
			<div class="row team_row">
				
				<!-- Team Item -->
				<div class="col-xl-3 col-md-6">
					<div class="team_item">
						<div class="team_image">
							<img src="../images/self.png" alt="selfcamera">
						</div>
					</div>
				</div>

				<div class="col-xl-9 col-md-6">
					<div class="team_content text-center">
							<div class="team_name">종강을 맞이하며</div>
							<div class="team_title"><p>1년동안 웹에 대해 공부하고 홈페이지를 만들면서<br>
								새로운 분야를 알아가고 코딩을 하는 것이 즐거웠습니다.<br>
								내년엔 모바일웹에 관련해서 배우고 무언가를 만들게 되겠죠?<br>
								앞으로 이 분야에 종사하게 될지는 모르겠지만 그 과정 모든것이<br>
								미래를 결정하고 만들어나가는데 도움이 되리라 생각합니다.<br>
								제 이야기를 써서 채우고자 한 게 이렇게 되어버렸네요.<br>
								꽤나 긴 글 읽어주셔서 감사드립니다.<br>
								더 좋은 실력으로 내년에 다시 뵙겠습니다!
								</p>
							</div>
						</div>
				</div>

			</div>
		</div>
	</div>

<!-- Footer -->

<%@ include file="/Layout/Footer.jsp" %>
</div>

<!-- setting -->
<%@ include file="/Layout/BackMeta.jsp" %>
<script src="../js/about.js"></script>
</body>
</html>