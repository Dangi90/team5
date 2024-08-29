<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<header>
			<a href="/Farmstory_JSP/index.do" class="logo"><img src="/Farmstory_JSP/images/logo.png" alt="로고" /></a>
			<p>
				<a href="/Farmstory_JSP/index.do">HOME |</a> 
				<c:if test="${sessUser != null}">
					<a href="/Farmstory_JSP/member/logout.do">로그아웃 |</a>
					<c:if test="${sessUser.isAdmin == 1}">
						<a href="./admin/index.do">관리자 |</a>
					</c:if> 
				</c:if>
				<c:if test="${sessUser == null}">
					<a href="/Farmstory_JSP/member/login.do">로그인 |</a> 
					<a href="/Farmstory_JSP/member/register.do">회원가입 |</a> 
				</c:if>
				
				<!--  <a href="#">고객센터</a>  -->
			</p>
			<img src="/Farmstory_JSP/images/head_txt_img.png" alt="3만원 이상 무료배송" />

			<ul class="gnb">
				<li><a href="/Farmstory_JSP/introduction/hello.do">팜스토리소개</a></li>
				<li><a href="/Farmstory_JSP/market/list.do"><img src="/Farmstory_JSP/images/head_menu_badge.png" alt="30%" />장보기</a></li>
				<li><a href="/Farmstory_JSP/article/list.do?group=croptalk&cate=story">농작물이야기</a></li>
				<li><a href="/Farmstory_JSP/article/list.do?group=event&cate=info">이벤트</a></li>
				<li><a href="/Farmstory_JSP/article/list.do?group=community&cate=notice">커뮤니티</a></li>
			</ul>
		</header>