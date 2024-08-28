<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::로그인</title>    
    <link rel="stylesheet" href="../css/style.css"/>
    <style>
    #user {
        display: flex;
        justify-content: center;
        width: auto;
    }
    .btnLogin {
    	height: 40px;
    	text-align: right;
    }
       .box{
    border: 1px solid #BEBEBE;  
    margin: 0 auto;
    width: 372px;
    height: 240px;
	}

    .contain {
        width: 100%;
        height: 100%;
        box-sizing: border-box;
        background-color: white;
    }

    .section-login .input-container {
        display: flex;
        align-items: flex-start;
        margin-left: 50px;
        margin-right: 50px;
        padding-top: 30px;
        padding-bottom: 30px;
    }

    .section-login .input-group {
        display: flex;
        width: 190px;
        height: 28px;
        align-items: center;
        margin-bottom: 10px;
        width: 100%;
    }

    .section-login img {
        margin-right: 10px;
    }

    .section-login input[type="text"], .section-login input[type="password"] {
        flex: 1;
        height: 30px; /*고정값*/
        padding: 0 10px;
        border: 1px solid #BEBEBE;
        box-sizing: border-box;
    }

    .section-login input[type="button"] {
        width: 60px;  /*고정값*/
        height: 67px; /*고정값*/
        background: #FDFDFD;
        border: 1px solid #BEBEBE;
        cursor: pointer;
        box-sizing: border-box;
        align-self: flex-start;
        margin-left: 10px;
    }

    .selction-info {
        display: block;
        color: #666;
        height: 104px;
        box-sizing: border-box;
        background-color: #F5F6FA;
        padding: 5px;
        font-size: 12px;
        font-weight: bold;
    }

    .selction-info p {
        padding-top: 10px;
        margin-left: 10px;
        margin-bottom: 5px;
    }

    .selction-info__link {
        text-align: right; 
        margin-right: 10px;
    }


    .selction-info a {
        color: #007BFF;
    }
    </style>
</head>
<body>
    <div id="container">
        <header>
               <a href="/Farmstory_JSP/index.do" class="logo"><img src="../images/logo.png" alt="로고"/></a>
            <p>
                <a href="../index.jsp">HOME |</a>
                <a href="./login.do">로그인 |</a>
                <a href="./register.do">회원가입 |</a>
                <!-- <a href="../admin/index.do">관리자 |</a>  -->
                <a href="#">고객센터</a>
            </p>
            <img src="../images/head_txt_img.png" alt="3만원 이상 무료배송"/>
            
            <ul class="gnb">
                <li><a href="../introduction/hello.do">팜스토리소개</a></li>
                <li><a href="../market/list.do"><img src="../images/head_menu_badge.png" alt="30%"/>장보기</a></li>
                <li><a href="../croptalk/story.do">농작물이야기</a></li>
                <li><a href="../event/info.do">이벤트</a></li>
                <li><a href="../community/notice.do">커뮤니티</a></li>
            </ul>
        </header>
        <div id="user">
		      <div class="box">
		        <main>
		            <form action="./login.do" method="post">
		                <section>
		                    <div class="section-login">
		                        <div class="input-container">
		                            <div>
		                                <div class="input-group">
		                                    <img src="../images/login_ico_id.png" alt="아이디 아이콘">
		                                    <input type="text" name = "uid" placeholder="아이디 입력">
		                                </div>
		                                <div class="input-group">
		                                    <img src="../images/login_ico_pw.png" alt="비밀번호 아이콘">
		                                    <input type="password" name = "pass" placeholder="비밀번호 입력">
		                                </div>
		                            </div>
		                            <button type="submit" >로그인</button>
		                        </div>
		                    </div>
		                </section>
		                <section>
		                    <div class="selction-info">
		                        <div>
		                            <p>회원 로그인 안내</p>
		                            <p>아직 회원이 아니시면 회원으로 가입하세요.</p>
		                        </div>
		                        <div>
		                            <p class="selction-info__link">
		                                <a href="./terms.do">회원가입</a>
		                            </p>
		                        </div>
		                    </div>
		                </section>
		            </form>
		        </main>
		    </div>
        </div>
        <footer>
            <img src="../images/footer_logo.png" alt="로고"/>
            <p>
                (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-팜스토리구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호<br />
                등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br />
                대표 : 홍길동 / 이메일 : email@mail.mail / 전화 : 01) 234-5678 / 경기도 성남시 잘한다구 신난다동 345<br />
                <em>Copyright(C)홍길동 All rights reserved.</em>
            </p>
        </footer>
    </div>
    
</body>
</html>