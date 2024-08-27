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
            font: normal 12px 'ê³ ë';
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
        
        /*logospace ë ë¡ê³ , ì¬ì´ëë¡ê³ , ë¡ê·¸ì¸| ë´ê³ ìì*/
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
        /*ìì ê¸ì aë¤ì ì¤ìì¼ë¡ ë°°ì¹íë ë°©ë²*/
        position : flex;
        text-align: center;
        }
        /*ì¥ë³´ê¸° ë±ì§*/
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

            font-family: Arial, Helvetica, sans-serif; /* í°í¸ í¨ë°ë¦¬ */
            font-style: normal; /* í°í¸ ì¤íì¼ */
            font-weight: 400; /* í°í¸ êµµê¸° */
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
            background-color: #F8F9FA; /* ë°°ê²½ì ì¶ê° */
            
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
      /*info3ê° ë¤ì*/
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
                    <a href="#">ë¡ê·¸ì¸ | </a>
                    <a href="#"> íìê°ì | </a>
                    <a href="#"> ê³ ê°ì¼í° </a>
                </p>
            </div>
        </div>
        <div>
            <nav>
                <ul class = "navfont">
            <div><img src="../images/head_menu_badge.png" class = "badge"></div>          
                 
                    <li><a href="#">íì¤í ë¦¬ìê°</a></li>
                    <li><a href="#">ì¥ë³´ê¸°</a></li>
                    <li><a href="#">ëìë¬¼ì´ì¼ê¸°</a></li>
                    <li><a href="#">ì´ë²¤í¸</a></li>
                    <li><a href="#">ì»¤ë®¤ëí°</a></li>
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
                          HOME > ì¥ë³´ê¸° >&nbsp;<span class="highlight">ì¥ë³´ê¸°</span>
                       </div>
                    </div>
                </nav>
                <p>ì¥ë°êµ¬ë ì ì²´(10)</p>
                <section class="cart">
                    <ul class="carthead">
                        <li>
                            <input type="checkbox" id="selectAll">
                        </li>
                        <li><p class="image">ì´ë¯¸ì§</p></li>
                        <li><p class="kind">ì¢ë¥</p></li>
                        <li><p class="Productname">ìíëª</p></li>
                        <li><p class="quantity">ìë</p></li>
                        <li><p class="discount">í ì¸</p></li>
                        <li><p class="point">í¬ì¸í¸</p></li>
                        <li><p class="price">ê°ê²©</p></li>
                        <li><p class="subtotal">ìê³</p></li>
                    </ul>
                    <div class="cartbody">
                        <div class="cartbody1">
                            <p>ì¥ë°êµ¬ëì ìíì´ ììµëë¤</p>
                        </div>
                        <div class="cartbody2">
                            <input type="checkbox" id="select1">
                            <img src="../images/market_item1.jpg" class="image1" alt="apple">
                            <p class="kind1">ê³¼ì¼</p>
                            <p class="Productname1">ì¬ê³¼ 500g</p>
                            <p class="quantity1">1</p>
                            <p class="discount1">10%</p>
                            <p class="point1">40p</p>
                            <p class="price1">4,000</p>
                            <div class="subtotal1"><p class="subtotal1_1">3,600ì</p></div>
                        </div>
                        <div class="cartbody3">
                            <input type="checkbox" id="select2">
                            <img src="../images/market_item1.jpg" class="image2" alt="apple">
                            <p class="kind2">ê³¼ì¼</p>
                            <p class="Productname2">ì¬ê³¼ 500g</p>
                            <p class="quantity2">1</p>
                            <p class="discount2">10%</p>
                            <p class="point2">40p</p>
                            <p class="price2">4,000</p>
                            <div class="subtotal2"><p class="subtotal2_1">3,600ì</p></div>
                        </div>
                        <div class="cartbody4">
                            <input type="checkbox" id="select3">
                            <img src="../images/market_item1.jpg" class="image3" alt="apple">
                            <p class="kind3">ê³¼ì¼</p>
                            <p class="Productname3">ì¬ê³¼ 500g</p>
                            <p class="quantity3">1</p>
                            <p class="discount3">10%</p>
                            <p class="point3">40p</p>
                            <p class="price3">4,000</p>
                            <div class="subtotal3"><p class="subtotal3_1">3,600ì</p></div>
                        </div>

                        
                  
                </section>
                <div class="button">
                    <button class="deleteselect"><p>ì íì­ì </p></button>
                </div>
                <div class="boarder">
                    <div class="table">
                        <p class="allcount">ì ì²´í©ê³</p>
                        <div class="bdquantity">
                            <p class="bdquantity1_1">ìíì</p>
                            <p class="bdquantity1_2">1</p>
                        </div>
                        <div class="bdprice">
                            <p class="bdprice1_1">ìíê¸ì¡</p>
                            <p class="bdprice1_2">27,000</p>
                        </div>
                        <div class="bddcprice">
                            <p class="bddcprice1_1">í ì¸ê¸ì¡</p>
                            <p class="bddcprice1_2">5,000ì</p>
                        </div>
                        <div class="bddelfee">
                            <p class="bddelfee1_1">ë°°ì¡ë¹</p>
                            <p class="bddelfee1_2">5,000ì</p>
                        </div>
                        <div class="bdpoint">
                            <p class="bdpoint1_1">í¬ì¸í¸</p>
                            <p class="bdpoint1_2">4,000ì</p>
                        </div>
                        <div class="bdallcount">
                            <p class="bdallcount1_1">ì ì²´ì£¼ë¬¸ê¸ì¡</p>
                            <p class="bdallcount1_2">23,000</p>
                        </div>
                    </div>
                    <div class="button2">
                        <button class="btnorder"><p>ì£¼ë¬¸íê¸°</p></button>
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
                      (ì£¼)íì¤í ë¦¬ / ì¬ììë±ë¡ë²í¸ 123-45-67890 / íµì íë§¤ìì ê³  ì  2013-ë¶ì°ì§êµ¬-123í¸ / ë²¤ì²ê¸°ìíì¸ ìì¸ì§ë°©ì¤ìê¸°ìì²­ ì  012345678-9-01234í¸
                      ë±ë¡ë²í¸ íì¤í ë¦¬01234 (2013.04.01) / ë°íì¸ : íê¸¸ë<br>
                      ëí : ê¹ì² í / ì´ë©ì¼ : chhak0503@gmail.com / ì í : 01) 234-5678 / ë¶ì°ê´ì­ì ë¶ì°ì§êµ¬ ë¶ì ë 123
                  </p>
                  <p class="info2">
                      copyrightâ ê¹ì² í(ê°ë°ìë°íë¤.) All rights reserved.
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
  