<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
<style></style>
</head>

<body>
    <div id="container">
        <header>
            <a href="./index.do" class="logo"><img src="../images/admin_logo.jpg" alt="로고"/></a>
            <p>
                <a href="../index.do">HOME |</a>
                <a href="./index.do">관리페이지 |</a>
                <a href="../member/logout.do">로그아웃 |</a>
                
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
            <section id="productList">
                <nav>
                    <h3>상품목록</h3>
                </nav>

				<article>


					<table border="0">
						<tr>
							<th><input type="checkbox" name="all" /></th>
							<th>사진</th>
							<th>상품번호</th>
							<th>상품명</th>
							<th>구분</th>
							<th>가격</th>
							<th>재고</th>
							<th>등록일</th>
						</tr>
						<c:forEach var="product" items="${productList}">
							<tr>
								<td><input type="checkbox" name="" /></td>
								<td><img src="${product.thumb_img}" class="thumb" alt="상품 이미지"></td>
								<td>${product.no}</td>
								<td>${product.name}</td>
								<td>${product.type}</td>
								<td>${product.price}원</td>
								<td>${product.stack}</td>
								<td>${(product.regdate).substring(0, 10)}</td>
							</tr>
						</c:forEach>
						<tr>
							<td><input type="checkbox" name="" /></td>
							<td><img src="../images/sample_item1.jpg" class="thumb"
								alt="샘플1"></td>
							<td>1011</td>
							<td>사과 500g</td>
							<td>과일</td>
							<td>4,000원</td>
							<td>100</td>
							<td>2023-01-01</td>
						</tr>
					</table>

					<p>
						<a href="#" class="productDelete">선택삭제</a> <a
							href="./productRegister.html" class="productRegister">상품등록</a>
					</p>

				</article>


			</section>
		</main>
		<footer>
			<p>Copyright(C)Farmstory All rights reserved. FARMSTORY
				ADMINISTRATOR Version 1.0.1</p>
		</footer>
	</div>

</body>
</html>