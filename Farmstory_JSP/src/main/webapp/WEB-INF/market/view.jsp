<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::장보기</title>
    <link rel="stylesheet" href="../css/style.css"/>
    <script>
    function updateTotal() {
        var price = parseInt(document.getElementById('price').innerText.replace(/,/g, '').replace('원', ''));
        var count = parseInt(document.getElementById('count').value);
        if (isNaN(price)) price = 0; 
        if (isNaN(count)) count = 0; 
        var total = price * count;
        document.getElementById('total').innerText = total.toLocaleString() + '원';
    }

    function updateOrderLink() {
        var count = document.getElementById('count').value;
        var productNo = document.getElementById('productNo').value;
        var orderLink = document.getElementById('orderLink');
        orderLink.href = "./order.do?no=" + encodeURIComponent(productNo) + "&count=" + encodeURIComponent(count);
    }
    
    document.addEventListener('DOMContentLoaded', function() {
        var quantityInput = document.getElementById('count');
        quantityInput.addEventListener('input', function() {
            updateTotal();
            updateOrderLink();
        });
        updateTotal();
        updateOrderLink();
    });
    
    
    </script>
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
                        <li class="on"><a href="./market.html">장보기</a></li>
                    </ul>
                </aside>
                <article class="view">
                    <nav>
                        <img src="../images/sub_nav_tit_cate2_tit1.png" alt="장보기"/>
                        <p>
                            HOME > 장보기 > <em>장보기</em>
                        </p>
                    </nav>

                    <!-- 내용 시작 -->
                    
                    <h3>기본정보</h3>
		    	      <div class="basic">
				    <img src="../images/market_item_thumb.jpg" alt="딸기 500g">
				    <table border="0">                            
				        <tr>
				            <td>상품명</td>
				            <td>${products.name}</td>
				        </tr>
				        <tr>
				            <td>상품코드</td>
				            <td>${products.no}</td>
				        </tr>
				        <tr>
				            <td>배송비</td>
				            <td>
				                <span>${products.delivery_fee}</span>원
				                <em>3만원 이상 무료배송</em>
				            </td>
				        </tr>
				        <tr>
				            <td>판매가격</td>
				            <td id="price">${products.price}원</td>
				        </tr>
				        <tr>
				            <td>구매수량</td>
				            <td>
				                <input type="number" id="count" name="count" min="1" value="1">
				                <!-- Hidden field for product number -->
				                <input type="hidden" id="productNo" value="${products.no}">
				            </td>
				        </tr>
				        <tr>
				            <td>합계</td>
				            <td class="total" id="total"></td>
				        </tr>
				        <tr>
				            <td colspan="2">
				                <a id="orderLink" href="./order.do" class="btnOrder">
				                    <img src="../images/market_btn_order.gif" alt="바로 구매하기"/>
				                </a>
				            </td>
				        </tr>
				    </table>
					</div>
                    <h3>상품설명</h3>
                    <div class="detail">
                        <img src="../images/market_detail_sample.jpg" alt="설명">

                    </div>

                    <h3>배송정보</h3>
                    <div class="delivery">
                        <p>
                            입금하신 이후 택배송장번호는 SMS(문자서비스)를 통해 고객님께 안내해드립니다.
                        </p>
                    </div>

                    <h3>교환/반품</h3>                  
                    <div class="exchange">
                        <table border="0">
                            <tr>
                                <td>교환 반품이 가능한 경우</td>
                                <td>
                                    <ul>
                                        <li>팜스토리 상품에 하자가 있거나 불량인 경우</li>
                                        <li>채소, 과일, 양곡등의 식품은 만1일 이내</li>
                                        <li>기타 상품은 수령일로부터 영업일 기준 일주일 이내</li>
                                        <li>받으신 상품이 표시사항과 다른 경우에는 받으신 날로부터 일주일 이내</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>교환 반품이 불가능한 경우</td>
                                <td>
                                    <ul>
                                        <li>신선 식품의 경우 단순히 마음에 들지 않는 경우</li>
                                        <li>단순 변심으로 상품이 가치가 훼손돼서 판매가 어려운 경우</li>
                                    </ul>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!-- 내용 끝 -->
                </article>
            </section>

        </div>
     <jsp:include page="/WEB-INF/layout/footer.jsp" />
    </div>    
</body>
</html>