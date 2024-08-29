<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>팜스토리</title>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="/Farmstory_JSP/css/styleAdmin.css">
<script>
	$(function() {
		$('.showPopup').click(
				function(e) {
					e.preventDefault();
					var userId = $(this).data('uid'); // 데이터 속성에서 uid 값 가져오기
					if (userId) {
						$.ajax({
							url : '/Farmstory_JSP/admin/InfoService/getUserInfo.do',
							type : 'POST',
							data : {
								uid : userId
							},
							dataType : 'json',
							success : function(user) {
								// 팝업에 사용자 데이터 설정
								$('#popupUid').text(user.uid);
								$('#popupName').text(user.name);
								$('#popupNick').text(user.nick);
								$('#popupEmail').text(user.email);
								$('#popupHp').text(user.hp);
								$('#popupGrade').text(user.grade);
								$('#popupAddr').text(user.addr);
								$('#popupRegip').text(user.regip);
								$('#popupRegdate').text(user.regdate);
								$('#popupIsAdmin').text(
										user.isAdmin ? 'Yes' : 'No'); // isAdmin을 boolean으로 처리

								$('#userPopup').show(); // 팝업 표시
							},
							error : function(jqXHR, textStatus, errorThrown) {
								console.error('Error fetching user data:',
										textStatus, errorThrown);
								console.error('Response Text:',
										jqXHR.responseText);
								alert('사용자 정보를 불러오는 데 실패했습니다.');
							}
						});
					}
				});

		$('#userPopup .btnClose').click(function() {
			$('#userPopup').hide();
		});

		$('#userForm').submit(function(e) {
			if (!$('input[name="uid"]:checked').length) {
				alert('삭제할 사용자를 선택해 주세요.');
				e.preventDefault();
				return;
			}

			if (!confirm('정말로 선택한 사용자를 삭제하시겠습니까?')) {
				e.preventDefault();
			}
		});
	});
</script>

</head>

<body>
	<div id="container">
		<header>
			<a href="./index.do" class="logo"><img
				src="../images/admin_logo.jpg" alt="로고" /></a>
			<p>
				<a href="../index.do">HOME |</a> <a href="./index.do">관리페이지 |</a> <a
					href="../member/logout.do">로그아웃 |</a> <a href="../community/qna.do">고객센터</a>
			</p>
		</header>
		<main>
			<aside>
				<h3>주요기능</h3>
				<ul>
					<li>상품관리
						<ul>
							<li><a href="./productList.do">상품목록</a></li>
							<li><a href="./productRegister.do">상품등록</a></li>
						</ul>
					</li>
					<li>주문관리
						<ul>
							<li><a href="./orderList.do">주문목록</a></li>
						</ul>
					</li>
					<li>회원관리
						<ul>
							<li><a href="./userList.do">회원목록</a></li>
						</ul>
					</li>
				</ul>
			</aside>
			<section id="orderList">
				<nav>
					<h3>회원목록</h3>
				</nav>
				<article>
					<form id="userForm" action="deleteUser.do" method="post">
						<table border="0">
							<thead>
								<tr>
									<th><input type="checkbox" name="all" /></th>
									<th>아이디</th>
									<th>이름</th>
									<th>별명</th>
									<th>이메일</th>
									<th>휴대폰</th>
									<th>등급</th>
									<th>가입일</th>
									<th>확인</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="user" items="${users}">
									<tr>
										<td><input type="checkbox" name="uid" value="${user.uid}" /></td>
										<td>${user.uid}</td>
										<td>${user.name}</td>
										<td>${user.nick}</td>
										<td>${user.email}</td>
										<td>${user.hp}</td>
										<td>${user.grade}</td>
										<td>${user.regdate}</td>
										<td><a href="#" class="showPopup" data-uid="${user.uid}">[상세확인]</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<p>
							<button type="submit" class="userDelete">선택삭제</button>
						</p>
					</form>
				</article>
			</section>
		</main>
		<footer>
			<p>Copyright(C)Farmstory All rights reserved. FARMSTORY
				ADMINISTRATOR Version 1.0.1</p>
		</footer>

		<div id="userPopup">
			<section>
				<nav>
					<h1>사용자 상세정보</h1>
					<button class="btnClose">닫기</button>
				</nav>

				<article>
					<h3>기본정보</h3>
					<table border="0">
						<tr>
							<td>아이디</td>
							<td id="popupUid"></td>
						</tr>
						<tr>
							<td>이름</td>
							<td id="popupName"></td>
						</tr>
						<tr>
							<td>별명</td>
							<td id="popupNick"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td id="popupEmail"></td>
						</tr>
						<tr>
						<tr>
							<td>휴대폰</td>
							<td id="popupHp"></td>
						</tr>
						<tr>
							<td>등급</td>
							<td id="popupGrade"></td>
						</tr>
						<tr>
							<td>주소</td>
							<td id="popupAddr"></td>
						</tr>
						<tr>
							<td>가입 IP</td>
							<td id="popupRegip"></td>
						</tr>
						<tr>
							<td>가입일</td>
							<td id="popupRegdate"></td>
						</tr>
						<tr>
							<td>관리자 여부</td>
							<td id="popupIsAdmin"></td>
						</tr>
					</table>
				</article>
			</section>
		</div>
		<style>
