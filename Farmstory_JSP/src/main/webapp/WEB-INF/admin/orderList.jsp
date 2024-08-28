<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>팜스토리</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="/Farmstory_JSP/css/styleAdmin.css">    
    <script>
        $(function(){
            $('.showPopup').click(function(e){
                e.preventDefault();
                $('#orderPopup').show();
            });

            $('#orderPopup .btnClose').click(function(){
                $('#orderPopup').hide();
            });
        });
    </script>
</head>

<body>
    <div id="container">
        <header>
            <a href="/Farmstory_JSP/index.do" class="logo"><img src="../images/admin_logo.jpg" alt="로고"/></a>
            <p>
                <a href="../index.do">HOME |</a>
                <a href="./index.do">관리페이지 |</a>
                <a href="../member/logout.do">로그아웃 |</a>
                <a href="../community/qna.do">고객센터</a>
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
                    <table border="0">
                        <tr>
                            <th><input type="checkbox" name="all"/></th>
                            <th>주문번호</th>
                            <th>상품명</th>
                            <th>판매가격</th>
                            <th>수량</th>
                            <th>배송비</th>
                            <th>합계</th>
                            <th>주문자</th>
                            <th>주문일</th>
                            <th>확인</th>
                        </tr>
                        <tbody>
                            <c:forEach var="order" items="${orders}">
                                <tr>
                                    <td><input type="checkbox" name="user_id" value="${order.user_id}"/></td>
                                    <td>${order.product_no}</td>
                                    <td>${order.product_name}</td>
                                    <td>${order.product_price}원</td>
                                    <td>${order.count}개</td>
                                    <td>${order.product_delivery_fee}원</td>
                                    <td>${order.total_price}원</td>
                                    <td>${order.receiver}</td>
                                    <td>${order.order_date}</td>
                                    <td><a href="#" class="showPopup">[상세확인]</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <p>
                        <a href="./orderList.do" class="orderDelete">선택삭제</a>                        
                    </p>
                    
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
        </main>
        <footer>            
            <p>                
                Copyright(C)Farmstory All rights reserved. FARMSTORY ADMINISTRATOR Version 1.0.1
            </p>
        </footer>

        <div id="orderPopup" style="display:none;">
            <section>
                <nav>
                    <h1>상세주문내역</h1>
                    <button class="btnClose">닫기</button>
                </nav>

                <article>  
                    <h3>기본정보</h3>
                    <table border="0">
                        <tr>
                            <td rowspan="7" class="thumb"><img src="../images/sample_item1.jpg" alt="상품 이미지"></td>
                            <td>상품번호</td>
                            <td>${orderDetail.product_no}</td>
                        </tr>
                        <tr>
                            <td>상품명</td>
                            <td>${orderDetail.product_name}</td>
                        </tr>
                        <tr>
                            <td>판매가격</td>
                            <td>${orderDetail.product_price}원</td>
                        </tr>
                        <tr>
                            <td>수량</td>
                            <td>${orderDetail.count}개</td>
                        </tr>
                        <tr>
                            <td>배송비</td>
                            <td>${orderDetail.product_delivery_fee}원</td>
                        </tr>
                        <tr>
                            <td>합계</td>
                            <td>${orderDetail.total_price}원</td>
                        </tr>
                        <tr>
                            <td>주문자</td>
                            <td>${orderDetail.receiver}</td>
                        </tr>                        
                    </table>
                </article>
            </section>
        </div>
    </div>
</body>
</html>
