<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<header>
			<a href="./index.do" class="logo"><img src="/Farmstory_JSP/images/logo.png" alt="로고" /></a>
			<p>
				<a href="./index.do">HOME |</a> 
				<c:if test="${sessUser != null}">
					<a href="./member/logout.do">로그아웃 |</a> 
				</c:if>
				<c:if test="${sessUser == null}">
					<a href="./member/login.do">로그인 |</a> 
					<a href="./member/register.do">회원가입 |</a> 
				</c:if>
				<!--  <a href="./admin/index.do">관리자 |</a>  -->
				<a href="#">고객센터</a>
			</p>
			<img src="/Farmstory_JSP/images/head_txt_img.png" alt="3만원 이상 무료배송" />

			<ul class="gnb">
				<li><a href="./introduction/hello.do">팜스토리소개</a></li>
				<li><a href="./market/list.do"><img src="/Farmstory_JSP/images/head_menu_badge.png" alt="30%" />장보기</a></li>
				<li><a href="./croptalk/story.do">농작물이야기</a></li>
				<li><a href="./event/event.do">이벤트</a></li>
				<li><a href="./community/notice.do">커뮤니티</a></li>
			</ul>
		</header>