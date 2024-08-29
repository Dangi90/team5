<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="/Farmstory_JSP/css/styleAdmin.css">
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

            <section>
                <nav>
                    <h3>관리자 메인</h3>
                </nav>

                <article>
                    <h3>
                        <a href="./productList.do">상품현황</a>
                        <a href="./productList.do" class="more">+ 더보기</a>
                    </h3>
                    <table border="0">
                        <tr>
                            <th>상품번호</th>
                            <th>상품명</th>
                            <th>구분</th>
                            <th>가격</th>
                            <th>재고</th>
                            <th>등록일</th>
                        </tr>
                        <tbody>
                            <c:forEach var="product" items="${products}">
							    <tr>
							        <td>${product.no}</td>
							        <td>${product.name}</td>
							        <td>${product.type}</td>
							        <td>${product.price}</td>
							        <td>${product.stack}</td>
							        <td>${product.datetime}</td>
							    </tr>
							</c:forEach>
                        </tbody>
                   	</table>
                </article>

                <article>
                    <h3>
                        <a href="./orderList.do">주문현황</a>
                        <a href="./orderList.do" class="more">+ 더보기</a>
                    </h3>
                    <table border="0">
                        <tr>
                            <th>주문번호</th>
                            <th>상품명</th>
                            <th>판매가격</th>
                            <th>수량</th>
                            <th>배송비</th>
                            <th>합계</th>
                            <th>주문자</th>
                            <th>주문일</th>
                        </tr>
                        <c:forEach var="order" items="${orders}">
						    <tr>
						        <td>${order.product_no}</td>
						        <td>${order.product_name}</td>
						        <td>${order.product_price}</td>
						        <td>${order.count}</td>
						        <td>${order.product_delivery_fee}</td>
						        <td>${order.product_total_price}</td>
						        <td>${order.receiver}</td>
						        <td>${order.datetime}</td>
						    </tr>
						</c:forEach>
                    </table>
                </article>
                <article>
                    <h3>
                        <a href="./userList.do">회원현황</a>
                        <a href="./userList.do" class="more">+ 더보기</a>
                    </h3>
                    <table border="0">
                        <tr>
                            <th>회원아이디</th>
                            <th>이름</th>
                            <th>닉네임</th>
                            <th>휴대폰</th>
                            <th>이메일</th>
                            <th>등급</th>
                            <th>회원가입일</th>
                        </tr>
                        <c:forEach var="user" items="${users}">
						    <tr>
						        <td>${user.uid}</td>
						        <td>${user.name}</td>
						        <td>${user.nick}</td>
						        <td>${user.hp}</td>
						        <td>${user.email}</td>
						        <td>${user.grade}</td>
						        <td>${order.datetime}</td>
						    </tr>
						</c:forEach>
                    </table>
                </article>
            </section>
        </main>
        <footer>            
            <p>                
                Copyright(C)Farmstory All rights reserved. FARMSTORY ADMINISTRATOR Version 1.0.1
            </p>
        </footer>
    </div>
    
</body>
</html>