<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/Farmstory_JSP/js/postcode.js"></script>
<head>
    <meta charset="UTF-8">
    <title>팜스토리::장보기</title>
    <link rel="stylesheet" href="../css/style.css"/>
    <script>
    function buyEvent(e) {
        e.preventDefault(); // 폼의 기본 제출 동작을 막습니다.

        if (confirm("구매하시겠습니까?")) {
            console.log("buyEvent 호출됨");

            const productNo = "${products.no}";
            const productName = "${products.name}";
            const price = "${products.price}";
            const deliveryFee = "${products.delivery_fee}";
            const count = document.querySelector(".count").textContent;
            const total = document.querySelector(".total").textContent;
            const receiver = document.querySelector("input[name='receiver']").value;
            const hp = document.querySelector("input[name='hp']").value;
            const addr1 = document.querySelector("input[name='addr1']").value;
            const addr2 = document.querySelector("input[name='addr2']").value;

            // FormData 객체를 생성하여 데이터를 추가합니다.
            const formData = new FormData();
            formData.append("product_no", productNo);
            formData.append("product_name", productName);
            formData.append("price", price);
            formData.append("delivery_fee", deliveryFee);
            formData.append("count", count);
            formData.append("total", total);
            formData.append("receiver", receiver);
            formData.append("hp", hp);
            formData.append("addr1", addr1);
            formData.append("addr2", addr2);

            
            console.log("Product No: " + productNo);
            console.log("Product Name: " + productName);
            console.log("Price: " + price);
            console.log("Delivery Fee: " + deliveryFee);
            
            // AJAX 요청 생성
            const xhr = new XMLHttpRequest();
            const contextPath = '<%= request.getContextPath() %>';
            xhr.open("POST", contextPath + "/market/order.do", true);

            // 요청 전송
            xhr.send(formData);

            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        alert("정상 구매 되었습니다.");
                        console.log("응답: " + xhr.responseText); 
                        window.location.href = "./cart.do"; // 구매 완료 후 장바구니 페이지로 이동
                    } else {
                        alert("구매 실패");
                        console.error("Request failed: " + xhr.statusText);
                    }
                }
            };
        } else {
            alert("구매가 취소되었습니다.");
        }
    }
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
                <article class="order">
                    <nav>
                        <img src="../images/sub_nav_tit_cate2_tit1.png" alt="장보기"/>
                        <p>
                            HOME > 장보기 > <em>구매하기</em>
                        </p>
                    </nav>
                    <!-- 내용 시작 -->
                    <h3>주문상품 확인</h3>
                    <div class="info">
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
                                <td class="delivery">${products.delivery_fee}</td>
                            </tr>
                            <tr>
                                <td>판매가격</td>
                                <td>${products.price}</td>
                            </tr>
          					 <tr>
                            <td>구매수량</td>
                            <td class="count">${count}</td>
                      	 	</tr>
                       		<tr>
                            <td>합계</td>
                            <td class="total">${products.price * count}</td>
                        </tr>
                        </table>
                    </div>
                    <h3>주문정보 입력</h3>
                    <div class="shipping">
                        <table>
                            <tr>
                                <td>받는분</td>
                                <td><input type="text" name="receiver"></td>
                            </tr>
                            <tr>
                                <td>휴대폰</td>
                                <td><input type="text" name="hp"></td>
                            </tr>
                            <tr>
                                <td>배송주소</td>
                                <td>
	                                <div>
			                            <input type="text" name="zip" id="zip" placeholder="우편번호" readonly/>                                
			                            <button type="button" class="btnZip" onclick="postcode()"><img src="../images/btn_post_search.gif" alt=""></button>
			                        </div>                            
			                        <div>
			                            <input type="text" name="addr1" id="addr1" placeholder="주소를 검색하세요." readonly/>
			                        </div>
			                        <div>
			                            <input type="text" name="addr2" id="addr2" placeholder="상세주소를 입력하세요."/>
			                        </div>
                                </td>
                            </tr>
                            <tr>
                                <td>기타</td>
                                <td>
                                    <textarea name="etc"></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <p>
                        <a href="#" id="btnBuy" onclick="buyEvent(event)"><img src="../images/market_btn_buy.gif" alt="구매하기"></a>
                        <a href="#" id="btnShopping"><img src="../images/market_btn_shopping.gif"></a>
                    </p>
                </article>
            </section>
        </div>
		<jsp:include page="/WEB-INF/layout/footer.jsp" />
    </div>    
</body>
</html>