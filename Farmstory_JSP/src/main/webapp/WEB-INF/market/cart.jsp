<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>cart</title>
  	<link rel="stylesheet" href="../css/style.css"/>
  	<style>
    
    * {
            margin: 0;
            padding: 0;
            font: normal 12px '고딕';
        }
        ul, ol {list-style: none;}
        a {text-decoration: none; color: #111;}
        input, textarea {outline: none;}
        
        
        main{
        height: auto;
        }
        
        #wrapper {
        position: relative;
        width: 1920px;
        height: 1199px;
                
        background: #FFFFFF;

        margin: 0 auto;

        }

        /***********/
        /* header */
        header{
            width: 980px;
            height: 150px;
            margin : 0 auto;
        }

        /*top line*/
        header .htop{
            position: absolute;
            width: 980px;
            height: 14px;
            top: 1px;
            background-repeat: repeat;
            height: 10px;
            background-image: url('../img/head_top_line.png')
        }
        
        /*logospace 는 로고, 사이드로고, 로그인| 담고있음*/
        .logospace {
            width : 980px;
            height : 80px;
            position : relative;
        } 

        .logospace > p{
            position : absolute;
            height: 14px;
            right : 0;
            left: 787.45px;
            top: 15px;
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            color: #111111;
        }
        .logospace > p{
            position: absolute;
            width: 237.15px;
        }

        .headlog {
            position : absolute;
            left : 40%;
            top : 15px;
        }
        .headlog2 {
            position : absolute;
            right : 0px;
            top : 45px;
        }

        /**nav**/
        header nav {
            width : 100%;
            height : 50px;
            position :relative;
        }
        .navfont> li a {
            font-size :15px;
            font-weight: bolder;
        }
       header nav > ul {
            width :100%;
            height : 50px;
            display: inline-block;
            justify-content: space-around;
            padding: 10px 0;
        }
        
       header nav > ul > li {
        margin-left : 5px;
        float : left;
        min-width : 190px;
        height: 30px;
        margin-top :5px;
        border-top: 5px solid rgb(145, 142, 142);
        /*안의 글자 a들을 중앙으로 배치하는 방법*/
        position : flex;
        text-align: center;
        }
        /*장보기 뱃지*/
        .badge {
            position : absolute;
            margin-top :-10px;
            margin-left  : 310px;
        }

        .subtopbg1{
            position: absolute;
            width: 980px;
            height: 184px;
            left: 470px;
            right: 470px;
            top: 145px;

            background: url(.jpg);


        }
      
        main {
            position: absolute;
            width: 980px;
            height: 743px;
            left: 470px;
            right: 470px;
            top: 326px;
        }
        main > aside{
            position: absolute;
            width: 176px;
            height: 650px;
            left: 0px;
            top: 0px;

            background: url(.png);

        }

        main > #asidesize{
            position: absolute;
            width: 176px;
            height: 650px;
            left: 470px;
            top: 340px;

            background: url(.png);
            
        }
        
        .asidegate1{
            position: absolute;
            width: 129px;
            height: 44px;
            left: 16px;
            top: 16px;

            background: url(.png);


        }

        main #asidesize .asidebgline{
            position: relative;
            top: 37px;
            float: right;
            
        }

        .asidelnb{
            position: absolute;
            width: 175px;
            height: 233px;
            left: 0px;
            top: 81px;

            background: url('../img/sub_aside_bg_lnb.png');

        }

        .asidelnb .lnb1{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 26px;
            bottom: 178px;

            background: url(.png);


        }
        .asidelnb .lnb2{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 61px;
            bottom: 143px;

            background: url(.png);


        }
        .asidelnb .lnb3{
            position: absolute;
            left: 0px;
            right: 0px;
            top: 96px;
            bottom: 108px;

            background: url(.png);

        }


        .hello{
            position: absolute;
            width: 802px;
            height: 743px;
            left: 176px;
            top: 0px;
        }

        .hello > article > nav{
            box-sizing: border-box;
            position: absolute;
            width: 762px;
            height: 72px;
            left: 40px;
            right: 0px;
            top: 0px;

            border-bottom: 1px solid #C2C2C2;

        }
        .hello > article > nav .navtit1{
            position: absolute;
            width: 69px;
            height: 24px;
            left: 0px;
            bottom: 5px;

            background: url(.png);

        }
        .hello > article > nav .smallhello{
            position: absolute;
            height: 17px;
            left: 75.21%;
            right: 0%;
            bottom: 5px;
            white-space: nowrap;
       
        }
       

        .hello > article > nav .smallhello .smallhello2{
            position: absolute;
            height: 14px;
            height: 14px;
            left: 42px;
            top: 1px;

            font-family: Arial, Helvetica, sans-serif; /* 폰트 패밀리 */
            font-style: normal; /* 폰트 스타일 */
            font-weight: 400; /* 폰트 굵기 */
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;

            color: #8C8C8C;



        }
        .hello > article > nav .smallhello .smallhello2 > div{
            position: relative;
            right: 3px;
            bottom: 2px;

        }
        .hello > article > nav .smallhello .smallhello2 .highlight{
            position: relative;
            bottom: 1.5px;
            font-weight: bold;
            color: #91BA15;
            
        }
        .hello > article > div .boards{
            position: absolute;
            width: 247.22px;
            height: 14px;
            left: 40px;
            top: 113px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            white-space: nowrap;
                    
            color: #000000;
                    

        }
  
       

        

        main .button {
             display: flex;
             justify-content: flex-end;
        }
        .button button {
         border: none;
            cursor: pointer;
        }


        main .button .deleteselect{
            position: absolute;
            width: 60px;
            height: 29px;
            left: 40px;
            top: 481px;

            background: #960D1A;

        } 
        main .button .deleteselect > p{
            position: absolute;
            width: 48.2px;
            height: 14px;
            left: 6px;
            top: 7px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;
            background-color: #960D1A;
            color: #FFFFFF;


        }

        main .boarder{
            box-sizing: border-box;
            position: absolute;
            height: 262px;
            left: 62%;
            right: 0%;
            top: 481px;

            border: 1px solid #D7D7D7;

        }
        main .boarder .table{
            box-sizing: border-box;
            position: absolute;
            height: 201px;
            left: 7px;
            right: 7px;
            top: 7px;

            border-width: 1px 0px;
            border-style: solid;
            border-color: #111111;

        }

        main .boarder .table .allcount{
            position: absolute;
            width: 48.2px;
            height: 14px;
            left: 121.39px;
            top: 7px;
            

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;

            color: #000000;


        }

        main .boarder .table .bdquantity{
            position: absolute;
            width: 286.8px;
            height: 26px;
            left: 0px;
            top: calc(50% - 26px/2 - 60px);


        }
        main .boarder .table .bdquantity .bdquantity1_1{
            position: absolute;
            width: 36.2px;
            height: 26px;
            left: 10px;
            top: calc(50% - 26px/2);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 26px;
            /* identical to box height, or 217% */
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bdquantity .bdquantity1_2{
            position: absolute;
            width: 6.2px;
            height: 14px;
            left: 185.88px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bdprice{
            position: absolute;
            width: 286.8px;
            height: 26px;
            left: 0px;
            top: calc(50% - 26px/2 - 32px);

        }
        main .boarder .table .bdprice .bdprice1_1{
            position: absolute;
            width: 48.2px;
            height: 26px;
            left: 10px;
            top: calc(50% - 26px/2);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 26px;
            /* identical to box height, or 217% */
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bdprice .bdprice1_2{
            position: absolute;
            width: 33.2px;
            height: 14px;
            left: 185.88px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.3125px;
            line-height: 12px;
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bddcprice{
            position: absolute;
            width: 286.8px;
            height: 26px;
            left: 0px;
            top: calc(50% - 26px/2 - 4px);

        }
        main .boarder .table .bddcprice .bddcprice1_1{
            position: absolute;
            width: 48.2px;
            height: 26px;
            left: 10px;
            top: calc(50% - 26px/2);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 26px;
            /* identical to box height, or 217% */
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bddcprice .bddcprice1_2{
            position: absolute;
            width: 45.2px;
            height: 14px;
            left: 185.88px;
            top: calc(50% - 14px/2 - 0.5px);
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.5px;
            line-height: 13px;
            display: flex;
            align-items: center;
                    
            color: #000000;
                    
                    
        }
        main .boarder .table .bddelfee{
            position: absolute;
            width: 286.8px;
            height: 26px;
            left: 0px;
            top: calc(50% - 26px/2 + 24px);
        }
        main .boarder .table .bddelfee .bddelfee1_1{
            position: absolute;
            width: 36.2px;
            height: 26px;
            left: 10px;
            top: calc(50% - 26px/2);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 26px;
            /* identical to box height, or 217% */
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bddelfee .bddelfee1_2{
            position: absolute;
            width: 45.2px;
            height: 14px;
            left: 185.88px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.5px;
            line-height: 13px;
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bdpoint{
            position: absolute;
            width: 286.8px;
            height: 26px;
            left: 0px;
            top: calc(50% - 26px/2 + 52px);

        }
        main .boarder .table .bdpoint .bdpoint1_1{
            position: absolute;
            width: 36.2px;
            height: 26px;
            left: 10px;
            top: calc(50% - 26px/2);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 26px;
            /* identical to box height, or 217% */
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bdpoint .bdpoint1_2{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 185.88px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.6875px;
            line-height: 13px;
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bdallcount{
            position: absolute;
            width: 286.8px;
            height: 26px;
            left: 0px;
            top: calc(50% - 26px/2 + 80px);

        }
        main .boarder .table .bdallcount .bdallcount1_1{
            position: absolute;
            width: 72.2px;
            height: 26px;
            left: 10px;
            top: calc(50% - 26px/2);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 26px;
            /* identical to box height, or 217% */
            display: flex;
            align-items: center;

            color: #000000;


        }
        main .boarder .table .bdallcount .bdallcount1_2{
            position: absolute;
            width: 33.2px;
            height: 14px;
            left: 185.88px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 9.1875px;
            line-height: 11px;
            display: flex;
            align-items: center;

            color: #C20A0A;


        }

        .button2 button {
         border: none;
            cursor: pointer;
        }


        main .boarder .button2 .btnorder{
            display: flex;
            justify-content: flex-end;
            position: absolute;
            width: 290.8px;
            height: 37px;
            left: 7px;
            right: 7px;
            top: 218px;

            background: #960D1A;

        }

        main .boarder .button2 .btnorder > p{
            position: absolute;
            width: 48.2px;
            height: 14px;
            left: calc(50% - 48.2px/2 + 0.09px);
            top: 11px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;
            background-color: #960D1A;
            color: #FFFFFF;

          
                    

        }
        /***********/
        /* footer */
        footer {
            box-sizing: border-box;
            position: absolute;
            margin : 0 auto;
            width : 980px;
            height: 130px;
            left: 470px;
            right: 470px;
            bottom: auto;
            margin-top: 200px;
            background-color: #F8F9FA; /* 배경색 추가 */
            
            overflow :hidden
        }

        footer > div {
            float :right;
            width :100%;
            height : 120px;
            
        }

    /*footer topline*/
      footer .fline{
        position: relative;
        width: 980px;
        background-repeat: repeat;
        height: 10px;
        background: url('../img/footer_top_line.png');
      }
      /*info3개 들음*/
      #Paragraph {
        float : right;
        margin-top:10px;
        position: relative;
        height: 95px;
        width : 75%;
        overflow : hidden;
       }
        .info1{

        position: absolute;
        left : 0;
        top : 0;
         width: 709.68px;
         height: 54px;
         font-family: 'Inter', sans-serif;
         font-style: normal;
         font-weight: 300;
         font-size: 10.6562px;
         line-height: 18px;
         display: flex;
         align-items: center;
         color: #585858;
        }
    
         footer > div .info2{
            position: absolute;
            left : 0;
            bottom : 25px;
        width: 275.5px;
        height: 14px;
        font-family: 'Inter', sans-serif;
        font-style: normal;
        font-weight: 400;
        font-size: 11.25px;
        line-height: 14px;
        display: flex;
        align-items: center;
        color: #888888;
    }
        footer > div .info3{
            position: absolute;
            right : 5px;
            bottom : 0;
        width: 89.18px;
        height: 14px;
        font-family: 'Inter', sans-serif;
        font-style: normal;
        font-weight: 400;
        font-size: 10.6875px;
        line-height: 13px;
        display: flex;
        align-items: center;
        color: #888888;
        
        
    }
  	
  	.list > .paging {
    
    text-align: center;
    }
    	
    
</style>
	<script>
	document.addEventListener('DOMContentLoaded', function() {
	    var discount = 0.30; // 30% 할인
	    var priceElements = document.querySelectorAll('#endprice');
	    priceElements.forEach(function(element) {
	        var originalPrice = parseFloat(element.getAttribute('data-price'));
	        var discountedPrice = originalPrice * (1 - discount);
	        element.textContent = discountedPrice.toFixed(2); 
	    });
	});
	
	</script>
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
                <p>장바구니 전체(10)</p>
                <section class="cart">
                   <article class="list">
                    <nav>
                        <img src="../images/sub_nav_tit_cate2_tit1.png" alt="장보기"/>
                        <p>
                            HOME > 장보기 > <em>구매리스트</em>
                        </p>
                    </nav>
                    <!-- 내용 시작 -->
                   <div>
                   <table border="0">
						<tr>
							<th><input type="checkbox" name="all" /></th>
							<th>사진</th>
							<th>종류</th>
							<th>상품명</th>
							<th>수량</th>
							<th>할인</th>
							<th>포인트</th>
							<th>가격</th>
							<th>소계</th>
						</tr>
						<c:forEach var="orders" items="${orders}">
							<tr>
								<td><input type="checkbox" name="orderCheck" /></td>
								<td><img src="../images/sample_item1.jpg" class="thumb"alt="샘플1"></td>
								<td>${orders.type}</td>
								<td>${orders.product_name}</td>
								<td>${orders.count}</td>
								<td id = "discount">30%</td>
								<td id = "point">50p</td>
								<td>${orders.total_price}</td>
            					<td id="endprice" data-price="${orders.total_price}">${orders.total_price}</td>
							</tr>
						</c:forEach>
					</table>
					</div>
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
                <!-- 
                <div class="button">
                    <button class="deleteselect"><p>선택삭제</p></button>
                </div>
                -->
                <!-- 
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
                -->
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
        <jsp:include page="/WEB-INF/layout/footer.jsp" />
    </main>
   
  </div>
  </body>
  </html>
  