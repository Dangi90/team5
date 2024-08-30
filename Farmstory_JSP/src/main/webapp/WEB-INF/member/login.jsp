<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>팜스토리::로그인</title>
<link rel="stylesheet" href="../css/style.css" />
<style>
#user {
	display: flex;
	justify-content: center;
	width: auto;
}

.btnLogin {
	height: 40px;
	text-align: right;
}

.box {
	border: 1px solid #bebebe;
	margin: 0 auto;
	width: 372px;
	height: 240px;
}

.contain {
	width: 100%;
	height: 100%;
	box-sizing: border-box;
	background-color: white;
}

.section-login .input-container {
	display: flex;
	align-items: flex-start;
	margin-left: 50px;
	margin-right: 50px;
	padding-top: 30px;
	padding-bottom: 30px;
}

.section-login .input-group {
	display: flex;
	width: 190px;
	height: 28px;
	align-items: center;
	margin-bottom: 10px;
	width: 100%;
}

.section-login img {
	margin-right: 10px;
}

.section-login input[type="text"], .section-login input[type="password"]
	{
	flex: 1;
	height: 30px; /*고정값*/
	padding: 0 10px;
	border: 1px solid #bebebe;
	box-sizing: border-box;
}

.section-login input[type="button"] {
	width: 60px; /*고정값*/
	height: 67px; /*고정값*/
	background: #fdfdfd;
	border: 1px solid #bebebe;
	cursor: pointer;
	box-sizing: border-box;
	align-self: flex-start;
	margin-left: 10px;
}

.selction-info {
	display: block;
	color: #666;
	height: 104px;
	box-sizing: border-box;
	background-color: #f5f6fa;
	padding: 5px;
	font-size: 12px;
	font-weight: bold;
}

.selction-info p {
	padding-top: 10px;
	margin-left: 10px;
	margin-bottom: 5px;
}

.selction-info__link {
	text-align: right;
	margin-right: 10px;
}

.selction-info a {
	color: #007bff;
}
</style>
<script>
<%
// URL 파라미터에서 "success"라는 파라미터의 값을 가져옵니다.
String success = request.getParameter("success");

// "success" 파라미터 값에 따라 다른 메시지를 출력하도록 합니다.
if (success != null) {
	if (success.equals("100")) {
		// "success" 값이 "true"인 경우
%>
alert("아이디 및 비밀번호가 틀렸습니다.");
<%
} else if (success.equals("101")) {
// "success" 값이 "false"인 경우
%>
alert("로그인 후 시도해 주세요");
<%
}
}
%>
</script>
</head>
<body>
	<div id="container">

		<jsp:include page="/WEB-INF/layout/header.jsp" />

		<div id="user">
			<div class="box">
				<main>
					<form action="./login.do" method="post">
						<section>
							<div class="section-login">
								<div class="input-container">
									<div>
										<div class="input-group">
											<img src="../images/login_ico_id.png" alt="아이디 아이콘" />
											<input type="text" name="uid" placeholder="아이디 입력" />
										</div>
										<div class="input-group">
											<img src="../images/login_ico_pw.png" alt="비밀번호 아이콘" />
											<input type="password" name="pass" placeholder="비밀번호 입력" />
										</div>
									</div>
									<button type="submit">로그인</button>
								</div>
							</div>
						</section>
						<section>
							<div class="selction-info">
								<div>
									<p>회원 로그인 안내</p>
									<p>아직 회원이 아니시면 회원으로 가입하세요.</p>
								</div>
								<div>
									<p class="selction-info__link">
										<a href="./terms.do">회원가입</a>
									</p>
								</div>
							</div>
						</section>
					</form>
				</main>
			</div>
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
