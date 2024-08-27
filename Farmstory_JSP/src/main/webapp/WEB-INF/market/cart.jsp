<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>market/cart.html</title>

    <style>
    
    * {
            margin: 0;
            padding: 0;
            font: normal 12px '고딕';
        }
        ul, ol {list-style: none;}
        a {text-decoration: none; color: #111;}
        input, textarea {outline: none;}
        
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
            background-image: url('../images/head_top_line.png')
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
        .subtopbg1 .subtoptit1{
            position: absolute;
            width: 326px;
            height: 37px;
            left: 10px;
            bottom: 10px;
                    
            background: url(.png);

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

            background: url('../images/sub_aside_bg_lnb.png');

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
        .hello > article > p {
            position: absolute;
            width: 95.2px;
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

            color: #111111;
            white-space: nowrap;


        }
        .hello > article .cart{
            box-sizing: border-box;

            position: absolute;
            width: 762px;
            height: 332px;
            left: 40px;
            right: 0px;
            top: 139px;

            border-width: 1px 0px;
            border-style: solid;
            border-color: #111111;
            overflow: hidden;

        }

        .hello > article .cart > .carthead{
            box-sizing: border-box;
                    
            position: absolute;
            width: 762px;
            height: 38px;
            left: 0px;
            top: calc(50% - 38px/2 - 146.5px);
                    
            border-bottom: 1px solid #EEEEEE;

        }
        .hello > article .cart > .cartbody{
            position: absolute;
            width: 762px;
            height: 293px;
            left: 0px;
            top: calc(50% - 293px/2 + 19px);
            
        }

        .hello > article .cart > .carthead > li:nth-child(1){
            box-sizing: border-box;

            position: absolute;
            width: 76.19px;
            height: 38px;
            left: 0px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(1) #selectAll{
            box-sizing: border-box;
                    
            position: absolute;
            width: 13px;
            height: 13px;
            left: 31.59px;
            top: 10.5px;
                    
            background: #FFFFFF;
            border: 1px solid #767676;
            border-radius: 2.5px;

        }
        .hello > article .cart > .carthead > li:nth-child(2){
            box-sizing: border-box;

            position: absolute;
            width: 80px;
            height: 38px;
            left: 76.19px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }

        .hello > article .cart > .carthead > li:nth-child(2) .image{
            position: absolute;
            width: 36.2px;
            height: 14px;
            left: 22px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;

        }
        .hello > article .cart > .carthead > li:nth-child(3){
            box-sizing: border-box;

            position: absolute;
            width: 76.19px;
            height: 38px;
            left: 156.19px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(3) .kind{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 26.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;


        }
        .hello > article .cart > .carthead > li:nth-child(4){
            box-sizing: border-box;

            position: absolute;
            width: 148.69px;
            height: 38px;
            left: 232.38px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(4) .Productname{
            position: absolute;
            width: 36.2px;
            height: 14px;
            left: 56.34px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;


        }
        .hello > article .cart > .carthead > li:nth-child(5){
            box-sizing: border-box;

            position: absolute;
            width: 76.19px;
            height: 38px;
            left: 381.06px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(5) .quantity{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 26.1px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;


        }
        .hello > article .cart > .carthead > li:nth-child(6){
            box-sizing: border-box;

            position: absolute;
            width: 76.19px;
            height: 38px;
            left: 457.25px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(6) .discount{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 26.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;

        }
        .hello > article .cart > .carthead > li:nth-child(7){
            box-sizing: border-box;

            position: absolute;
            width: 76.19px;
            height: 38px;
            left: 533.44px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(7) .point{
            position: absolute;
            width: 36.2px;
            height: 14px;
            left: 20.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;


        }
        .hello > article .cart > .carthead > li:nth-child(8){
            box-sizing: border-box;

            position: absolute;
            width: 76.19px;
            height: 38px;
            left: 609.63px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(8) .price{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 26.09px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;


        }
        .hello > article .cart > .carthead > li:nth-child(9){
            box-sizing: border-box;

            position: absolute;
            width: 76.19px;
            height: 38px;
            left: 685.81px;
            top: calc(50% - 38px/2);

            background: #E5ECEF;
            border-bottom: 1px solid #D1DEE2;

        }
        .hello > article .cart > .carthead > li:nth-child(9) .subtotal{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 26.1px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #000000;

        }

        .hello > article .cart .cartbody > .cartbody1{
            box-sizing: border-box;

            position: absolute;
            width: 762px;
            height: 38px;
            left: 0px;
            top: calc(50% - 38px/2 - 127.5px);

            border-bottom: 1px solid #EEEEEE;

        }

        .hello > article .cart .cartbody > .cartbody1 > p{
            position: absolute;
            width: 153.2px;
            height: 14px;
            left: 304.5px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;


        }

        .hello > article .cart .cartbody2{
            box-sizing: border-box;
            position: absolute;
            width: 762px;
            height: 85px;
            left: 0px;
            top: calc(50% - 85px/2 - 66px);
            

            border-bottom: 1px solid #EEEEEE;

        }

        .hello > article .cart .cartbody2 > #select1{
            box-sizing: border-box;

            position: absolute;
            width: 13px;
            height: 13px;
            left: 31.59px;
            top: 34px;

            background: #FFFFFF;
            border: 1px solid #767676;
            border-radius: 2.5px;

        }
        .hello > article .cart .cartbody2 >.image1{
            position: absolute;
            width: 60px;
            height: 60px;
            left: 86.19px;
            top: 10.5px;

            background: url(.jpg);

        }
        .hello > article .cart .cartbody2 > .kind1{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 182.28px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;


        }
        .hello > article .cart .cartbody2 > .Productname1{
            position: absolute;
            width: 51.2px;
            height: 14px;
            left: 281.22px;
            top: 35px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.0625px;
            line-height: 13px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;


        }
        .hello > article .cart .cartbody2 > .quantity1{
            position: absolute;
            width: 6.2px;
            height: 14px;
            left: 416.16px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;


        }
        .hello > article .cart .cartbody2 > .discount1{
            position: absolute;
            width: 22.2px;
            height: 14px;
            left: 484.34px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.625px;
            line-height: 14px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;
        }
        .hello > article .cart .cartbody2 > .point1{
            position: absolute;
            width: 18.89px;
            height: 14px;
            left: 562.19px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;

        }
        .hello > article .cart .cartbody2 > .price1{
            position: absolute;
            width: 27.2px;
            height: 14px;
            left: 634.22px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;             
        }
        .hello > article .cart .cartbody2 > .subtotal1{
            position: absolute;
            height: 85px;
            left: 90%;
            right: 0%;
            top: calc(50% - 85px/2);

        }

        .hello > article .cart .cartbody2 > .subtotal1 > .subtotal1_1{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 18.6px;
            top: 35px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.125px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
                    
            color: #111111;

        }
        .hello > article .cart .cartbody3{

            box-sizing: border-box;
                    
            position: absolute;
            width: 762px;
            height: 85px;
            left: 0px;
            top: calc(50% - 85px/2 + 19px);
                    
            border-bottom: 1px solid #EEEEEE;


        }
        

        .hello > article .cart .cartbody3 > #select2{
            box-sizing: border-box;

            position: absolute;
            width: 13px;
            height: 13px;
            left: 31.59px;
            top: 34px;

            background: #FFFFFF;
            border: 1px solid #767676;
            border-radius: 2.5px;

        }
        .hello > article .cart .cartbody3 >.image2{
            position: absolute;
            width: 60px;
            height: 60px;
            left: 86.19px;
            top: 10.5px;

            background: url(.jpg);

        }
        .hello > article .cart .cartbody3 > .kind2{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 182.28px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;


        }
        .hello > article .cart .cartbody3 > .Productname2{
            position: absolute;
            width: 51.2px;
            height: 14px;
            left: 281.22px;
            top: 35px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.0625px;
            line-height: 13px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;


        }
        .hello > article .cart .cartbody3 > .quantity2{
            position: absolute;
            width: 6.2px;
            height: 14px;
            left: 416.16px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;


        }
        .hello > article .cart .cartbody3 > .discount2{
            position: absolute;
            width: 22.2px;
            height: 14px;
            left: 484.34px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.625px;
            line-height: 14px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;
        }
        .hello > article .cart .cartbody3 > .point2{
            position: absolute;
            width: 18.89px;
            height: 14px;
            left: 562.19px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;

        }
        .hello > article .cart .cartbody3 > .price2{
            position: absolute;
            width: 27.2px;
            height: 14px;
            left: 634.22px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;             
        }
        .hello > article .cart .cartbody3 > .subtotal2{
            position: absolute;
            height: 85px;
            left: 90%;
            right: 0%;
            top: calc(50% - 85px/2);

        }

        .hello > article .cart .cartbody3 > .subtotal2 > .subtotal2_1{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 18.6px;
            top: 35px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.125px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
                    
            color: #111111;

        }

          .hello > article .cart .cartbody4{

            box-sizing: border-box;

            position: absolute;
            width: 762px;
            height: 85px;
            left: 0px;
            top: calc(50% - 85px/2 + 104px);

            border-bottom: 1px solid #EEEEEE;

        }
        

        .hello > article .cart .cartbody4 > #select3{
            box-sizing: border-box;

            position: absolute;
            width: 13px;
            height: 13px;
            left: 31.59px;
            top: 34px;

            background: #FFFFFF;
            border: 1px solid #767676;
            border-radius: 2.5px;

        }
        .hello > article .cart .cartbody4 >.image3{
            position: absolute;
            width: 60px;
            height: 60px;
            left: 86.19px;
            top: 10.5px;

            background: url(.jpg);

        }
        .hello > article .cart .cartbody4 > .kind3{
            position: absolute;
            width: 24.2px;
            height: 14px;
            left: 182.28px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;


        }
        .hello > article .cart .cartbody4 > .Productname3{
            position: absolute;
            width: 51.2px;
            height: 14px;
            left: 281.22px;
            top: 35px;

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.0625px;
            line-height: 13px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #111111;


        }
        .hello > article .cart .cartbody4 > .quantity3{
            position: absolute;
            width: 6.2px;
            height: 14px;
            left: 416.16px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 15px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;


        }
        .hello > article .cart .cartbody4 > .discount3{
            position: absolute;
            width: 22.2px;
            height: 14px;
            left: 484.34px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 11.625px;
            line-height: 14px;
            /* identical to box height */
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;
        }
        .hello > article .cart .cartbody4 > .point3{
            position: absolute;
            width: 18.89px;
            height: 14px;
            left: 562.19px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;

        }
        .hello > article .cart .cartbody4 > .price3{
            position: absolute;
            width: 27.2px;
            height: 14px;
            left: 634.22px;
            top: calc(50% - 14px/2 - 0.5px);

            font-family: 'Inter';
            font-style: normal;
            font-weight: 400;
            font-size: 9.75px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;

            color: #777777;             
        }
        .hello > article .cart .cartbody4 > .subtotal3{
            position: absolute;
            height: 85px;
            left: 90%;
            right: 0%;
            top: calc(50% - 85px/2);

        }

        .hello > article .cart .cartbody4 > .subtotal3 > .subtotal3_1{
            position: absolute;
            width: 39.2px;
            height: 14px;
            left: 18.6px;
            top: 35px;
                    
            font-family: 'Inter';
            font-style: normal;
            font-weight: 700;
            font-size: 10.125px;
            line-height: 12px;
            display: flex;
            align-items: center;
            text-align: center;
                    
            color: #111111;

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
            top: 1069px;
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
        background: url('../images/footer_top_line.png');
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
</style>

  
</head>
<body>
    <div id = "wrapper">
    <header>
        <div>
            <div class="htop"></div>
            <div class="top">
               
            </div>
            <div class ="logospace">
                <a href="#" class="logo"> <img src="../images/logo.png" alt="logo" class = "headlog"></a>
                <a href="#" class="sale"><img src="../images/head_txt_img.png" alt="htxt" class = "headlog2"></a>
                <p>
                    <a href="#">HOME | </a>
                    <a href="#">로그인 | </a>
                    <a href="#"> 회원가입 | </a>
                    <a href="#"> 고객센터 </a>
                </p>
            </div>
        </div>
        <div>
            <nav>
                <ul class = "navfont">
            <div><img src="../images/head_menu_badge.png" class = "badge"></div>          
                 
                    <li><a href="#">팜스토리소개</a></li>
                    <li><a href="#">장보기</a></li>
                    <li><a href="#">농작물이야기</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">커뮤니티</a></li>
                </ul>
            </nav>
        </div>
    </header>
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
  
      <footer>
          <div>
              <div class="fline"></div>
              <img src="../images/footer_logo.png" class="logo" alt="farmstoryfootlogo">
              <div id="Paragraph">
                  <p class="info1">
                      (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호
                      등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br>
                      대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
                  </p>
                  <p class="info2">
                      copyrightⓒ 김철학(개발에반하다.) All rights reserved.
                  </p>
                  <p class="info3">
                      farmstory ver1.0.1
                  </p>
              </div>
          </div>
        
      </footer>
  </div>
  </body>
  </html>
  