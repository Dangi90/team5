<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::장보기</title>
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
    <div id="container">
       <jsp:include page="/WEB-INF/layout/header.jsp" />
        <div id="sub">
            <div><img src="../images/sub_top_tit2.png" alt="MARKET"></div>
            <section class="market">
                <aside>
                    <img src="../images/sub_aside_cate2_tit.png" alt="장보기"/>

                    <ul class="lnb">
                        <li class="on"><a href="./list.do">장보기</a></li>
                    </ul>
                </aside>
                <article class="list">
                    <nav>
                        <img src="../images/sub_nav_tit_cate2_tit1.png" alt="장보기"/>
                        <p>
                            HOME > 장보기 > <em>상품리스트</em>
                        </p>
                    </nav>

                    <!-- 내용 시작 -->
                    <p class="sort">
                        <a href="#" class="on">전체(10) |</a>
                        <a href="#">과일 |</a>
                        <a href="#">야채 |</a>
                        <a href="#">곡류</a>
                    </p>
                    <table border="0">
                    	<c:forEach var="products" items="${products}">
	                        <tr>
	                            <td><a href="../market/view.do?no=${products.no}">${products.thumb_img}</a></td>
	                            <td>${products.type}</td>
	                            <td><a href="../market/view.do?no=${products.no}">${products.name}</a></td>
	                            <td>${products.price}</td>
	                        </tr>
                        </c:forEach>
                    </table>

                    <p class="paging">
                        <a href="#"><</a>
                        <a href="#" class="on">[1]</a>
                        <a href="#">[2]</a>
                        <a href="#">[3]</a>
                        <a href="#">[4]</a>
                        <a href="#">[5]</a>
                        <a href="#">></a>
                    </p>
                </article>
            </section>
        </div>
        <jsp:include page="/WEB-INF/layout/footer.jsp" />
    </div>    
</body>
</html>