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
		$('.showPopup').click(function(e) {
			e.preventDefault();
			$('#orderPopup').show();
		});

		$('#orderPopup .btnClose').click(function() {
			$('#orderPopup').hide();
		});
	});
</script>
</head>

<body>
	<div id="container">
		<header>
			<a href="/Farmstory_JSP/index.do" class="logo"><img
				src="../images/admin_logo.jpg" alt="로고" /></a>
			<p>
				<a href="../index.do">HOME |</a> <a href="./index.do">관리페이지 |</a> <a
					href="../member/logout.do">로그아웃 |</a>

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
					<h3>주문목록</h3>
				</nav>

				<article>
					<form id="orderForm" action="deleteOrder.do" method="post">
						<thead>
							<tr>
								<th><input type="checkbox" name="all" /></th>
								<th>주문번호</th>
								<th>상품명</th>
								<th>판매가격</th>
								<th>수량</th>
								<th>배송비</th>
								<th>합계</th>
								<th>주문자</th>
								<th>확인</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="order" items="${orders}">
								<tr>
									<td><input type="checkbox" name="uid"
										value="${order.user_id}" /></td>
									<td>${order.no}</td>
									<td>${order.product_name}</td>
									<td>${order.product_price}원</td>
									<td>${order.count}개</td>
									<td>${order.product_delivery_fee}원</td>
									<td>${order.total_price}원</td>
									<td>${order.receiver}</td>

									<td><a href="#" class="showPopup">[상세확인]</a></td>
								</tr>
							</c:forEach>
						</tbody>
						</table>
						<p>
							<button type="submit" class="userDelete">선택삭제</button>
						</p>
				</article>
			</section>
		</main>
		<footer>
			<p>Copyright(C)Farmstory All rights reserved. FARMSTORY
				ADMINISTRATOR Version 1.0.1</p>
		</footer>