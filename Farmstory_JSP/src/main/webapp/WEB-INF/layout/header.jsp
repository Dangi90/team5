<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<header>
			<a href="./index.html" class="logo"><img src="/Farmstory_JSP/images/logo.png"
				alt="로고" /></a>
			<p>
				<a href="#">HOME |</a> 
				<c:if test="${sessUser != null}">
					<a href="#">로그아웃 |</a> 
				</c:if>
				<c:if test="${sessUser == null}">
					<a href="./user/login.html">로그인 |</a> 
					<a href="./user/register.html">회원가입 |</a> 
				</c:if>
				
				<a href="./admin/">관리자 |</a>
				<a href="#">고객센터</a>
			</p>
			<img src="/Farmstory_JSP/images/head_txt_img.png" alt="3만원 이상 무료배송" />

			<ul class="gnb">
				<li><a href="./introduction/hello.html">팜스토리소개</a></li>
				<li><a href="./market/list.html"><img
						src="/Farmstory_JSP/images/head_menu_badge.png" alt="30%" />장보기</a></li>
				<li><a href="./croptalk/story.html">농작물이야기</a></li>
				<li><a href="./event/event.html">이벤트</a></li>
				<li><a href="./community/notice.html">커뮤니티</a></li>
			</ul>
		</header>