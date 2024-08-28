<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>market/cart.html</title>
  	<link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
    <div id = "wrapper">
	<jsp:include page="/WEB-INF/layout/header.jsp" />
    <div class="subtopbg1">
        <img src="../images/sub_top_bg.jpg" alt="subtopbg1">
        <div class="subtoptit1"><img src="../images/sub_top_tit2.png" alt="subtoptit1"></div>
    </div>
   
    <main>
        <div class="hello">
            <article>
                <nav>
                    <img src="../images/sub_nav_tit_cate2_tit1.png" class="navtit1" alt="">
                    <div class="smallhello">                
                        <div class="smallhello2">
                            <div><img src="../images/sub_page_nav_ico.gif" alt=""></div> 
                          HOME > 장보기 >&nbsp;<span class="highlight">장보기</span>
                       </div>
                    </div>
                </nav>
                <p>장바구니 전체(10)</p>
                <section class="cart">
                    <ul class="carthead">
                        <li>
                            <input type="checkbox" id="selectAll">
                        </li>
                        <li><p class="image">이미지</p></li>
                        <li><p class="kind">종류</p></li>
                        <li><p class="Productname">상품명</p></li>
                        <li><p class="quantity">수량</p></li>
                        <li><p class="discount">할인</p></li>
                        <li><p class="point">포인트</p></li>
                        <li><p class="price">가격</p></li>
                        <li><p class="subtotal">소계</p></li>
                    </ul>
                    <div class="cartbody">
                        <div class="cartbody1">
                            <p>장바구니에 상품이 없습니다</p>
                        </div>
                        <div class="cartbody2">
                            <input type="checkbox" id="select1">
                            <img src="../images/market_item1.jpg" class="image1" alt="apple">
                            <p class="kind1">과일</p>
                            <p class="Productname1">사과 500g</p>
                            <p class="quantity1">1</p>
                            <p class="discount1">10%</p>
                            <p class="point1">40p</p>
                            <p class="price1">4,000</p>
                            <div class="subtotal1"><p class="subtotal1_1">3,600원</p></div>
                        </div>
                        <div class="cartbody3">
                            <input type="checkbox" id="select2">
                            <img src="../images/market_item1.jpg" class="image2" alt="apple">
                            <p class="kind2">과일</p>
                            <p class="Productname2">사과 500g</p>
                            <p class="quantity2">1</p>
                            <p class="discount2">10%</p>
                            <p class="point2">40p</p>
                            <p class="price2">4,000</p>
                            <div class="subtotal2"><p class="subtotal2_1">3,600원</p></div>
                        </div>
                        <div class="cartbody4">
                            <input type="checkbox" id="select3">
                            <img src="../images/market_item1.jpg" class="image3" alt="apple">
                            <p class="kind3">과일</p>
                            <p class="Productname3">사과 500g</p>
                            <p class="quantity3">1</p>
                            <p class="discount3">10%</p>
                            <p class="point3">40p</p>
                            <p class="price3">4,000</p>
                            <div class="subtotal3"><p class="subtotal3_1">3,600원</p></div>
                        </div>

                        
                  
                </section>
                <div class="button">
                    <button class="deleteselect"><p>선택삭제</p></button>
                </div>
                <div class="boarder">
                    <div class="table">
                        <p class="allcount">전체합계</p>
                        <div class="bdquantity">
                            <p class="bdquantity1_1">상품수</p>
                            <p class="bdquantity1_2">1</p>
                        </div>
                        <div class="bdprice">
                            <p class="bdprice1_1">상품금액</p>
                            <p class="bdprice1_2">27,000</p>
                        </div>
                        <div class="bddcprice">
                            <p class="bddcprice1_1">할인금액</p>
                            <p class="bddcprice1_2">5,000원</p>
                        </div>
                        <div class="bddelfee">
                            <p class="bddelfee1_1">배송비</p>
                            <p class="bddelfee1_2">5,000원</p>
                        </div>
                        <div class="bdpoint">
                            <p class="bdpoint1_1">포인트</p>
                            <p class="bdpoint1_2">4,000원</p>
                        </div>
                        <div class="bdallcount">
                            <p class="bdallcount1_1">전체주문금액</p>
                            <p class="bdallcount1_2">23,000</p>
                        </div>
                    </div>
                    <div class="button2">
                        <button class="btnorder"><p>주문하기</p></button>
                    </div>
                </div>
               
            </div>
            <aside>
                <div id="asidesize">
                    <div class="asidegate1"><img src="../images/sub_aside_cate2_tit.png" alt=""></div>
                    <div class="asidebgline"><img src="../images/sub_aside_bg_line.png" alt=""></div>
                <ul class="asidelnb">
                    <li>
                        <li class="lnb1"><a href="#"><img id="lnb1" src="../images/sub_cate2_lnb1_ov.png" alt="cate_lnb1"></a></li>
                    </li>
                </ul>
                </div>
              </aside>
            </article>
        </div>
    </main>
   <jsp:include page="/WEB-INF/layout/footer.jsp" />
  </div>
  </body>
  </html>
  