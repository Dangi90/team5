<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>팜스토리::농작물이야기</title>
<link rel="stylesheet" href="../css/style.css" />
<style>
table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

th {
	background-color: #f2f2f2;
}

.hot {
	color: red;
}

.search-bar {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 10px;
}

.search-bar select, .search-bar input[type="text"], .search-bar button {
	margin-right: 10px;
	padding: 5px;
}

.search-bar input[type="radio"] {
	margin-left: 10px;
}
</style>
</head>
<body>
	<div id="container">
		<header>
			<a href="../index.jsp" class="logo"><img src="../images/logo.png"
				alt="로고" /></a>
			<p>
				<a href="../index.jsp">HOME |</a> <a
					href="/Farmstory_JSP/member/login.do">로그인 |</a> <a
					href="/Farmstory_JSP/member/register.do">회원가입 |</a> <a
					href="./admin/index.do">관리자 |</a> <a href="#">고객센터</a>
			</p>
			<img src="../images/head_txt_img.png" alt="3만원 이상 무료배송" />

			<ul class="gnb">
				<li><a href="/Farmstory_JSP/introduction/hello.do">팜스토리소개</a></li>
				<li><a href="/Farmstory_JSP/market/list.do"><img
						src="../images/head_menu_badge.png" alt="30%" />장보기</a></li>
				<li><a href="/Farmstory_JSP/croptalk/story.do">농작물이야기</a></li>
				<li><a href="/Farmstory_JSP/event/info.do">이벤트</a></li>
				<li><a href="/Farmstory_JSP/community/notice.do">커뮤니티</a></li>
			</ul>
		</header>

		<div id="sub">
			<div>
				<img src="../images/sub_top_tit3.png" alt="CROP TALK">
			</div>
			<section class="croptalk">
				<aside>
					<img src="../images/sub_aside_cate3_tit.png" alt="농작물이야기" />

					<ul class="lnb">
						<li class="on"><a href="./story.do">농작물이야기</a></li>
						<li><a href="./grow.do">텃밭가꾸기</a></li>
						<li><a href="./school.do">귀농학교</a></li>
					</ul>

				</aside>
				<article>
					<nav>
						<img src="../images/sub_nav_tit_cate3_story.png" alt="농작물이야기" />
						<p>
							HOME > 농작물이야기 > <em>농작물이야기</em>
						</p>
					</nav>

					<!-- 내용 시작 -->

					<table>
						<thead>
							<tr>
								<th>No.</th>
								<th>제 목</th>
								<th>글쓴이</th>
								<th>날짜</th>
								<th>조회</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="article" items="${articles}">
								<tr>
									<td>${article.no}</td>
									<td>${article.title}<span class="hot">HOT</span></td>
									<td>${article.nick}</td>
									<td>${article.regdate}</td>
									<td>${article.views}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<form action="/Farmstory_JSP/article/list.do?group=croptalk&cate=story" method="post">
					<div class="search-bar">
						<select name="searchType">
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select> 
						<input type="text" name="searchText" placeholder="검색어를 입력하세요" />
						<button>검색</button>
						<label> 
						<input type="radio" name="searchCondition" value="and" checked> and
						</label>
						 <label> 
						 <input type="radio" name="searchCondition" value="or"> or
						</label>
					</div>			
					</form>
					<!-- 내용 끝 -->

				</article>
			</section>

		</div>


		<footer>
			<img src="../images/footer_logo.png" alt="로고" />
			<p>
				(주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-팜스토리구-123호 / 벤처기업확인
				서울지방중소기업청 제 012345678-9-01234호<br /> 등록번호 팜스토리01234 (2013.04.01) /
				발행인 : 홍길동<br /> 대표 : 홍길동 / 이메일 : email@mail.mail / 전화 : 01)
				234-5678 / 경기도 성남시 잘한다구 신난다동 345<br /> <em>Copyright(C)홍길동 All
					rights reserved.</em>
			</p>
		</footer>
	</div>
</body>
</html>