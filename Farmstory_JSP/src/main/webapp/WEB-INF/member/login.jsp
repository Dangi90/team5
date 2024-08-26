<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::로그인</title>    
    <link rel="stylesheet" href="../css/style.css"/>
    <style>
        #user > img {
            display: block;
            margin: 20px auto;
        }
    </style>
</head>
<body>
    <div id="container">
        <header>
            <a href="../index.do" class="logo"><img src="../images/logo.png" alt="로고"/></a>
             <p>
                <a href="../index.do">HOME |</a>
                <a href="./login.do">로그인 |</a>
                <a href="./register.do">회원가입 |</a>
                <a href="./admin/index.do">관리자 |</a>
                <a href="#">고객센터</a>
            </p>
            <img src="../images/head_txt_img.png" alt="3만원 이상 무료배송"/>
            
            <ul class="gnb">
                <li><a href="/Farmstory_JSP/introduction/hello.do">팜스토리소개</a></li>
                <li><a href="/Farmstory_JSP/market/list.do"><img src="../images/head_menu_badge.png" alt="30%"/>장보기</a></li>
                <li><a href="/Farmstory_JSP/croptalk/story.do">농작물이야기</a></li>
                <li><a href="/Farmstory_JSP/event/info.do">이벤트</a></li>
                <li><a href="/Farmstory_JSP/community/notice.do">커뮤니티</a></li>
           	</ul>
        </header>
        <div id="user">
      <section class="login" style="display: flex; justify-content: center;">
        <form action="/Farmstory_JSP/member/login.do" method="post">
            <table border="1">
                <tr>
                    <td><img src="/jboard/images/login_ico_id.png" alt="아이디"></td>
                    <td><input type="text" name="uid" placeholder="아이디 입력"></td>
                </tr>
                <tr>
                    <td><img src="/jboard/images/login_ico_pw.png" alt="비밀번호"></td>
                    <td><input type="password" name="pass" placeholder="비밀번호 입력"></td>
                </tr>
            </table>
            <input type="submit" value="로그인" class="btnLogin">
        </form>
        <div>
            <h3>회원 로그인 안내</h3>
            <p>
                아직 회원이 아니시면 회원으로 가입하세요.
            </p>
            <a href="/Farmstory_JSP/member/terms.do">회원가입</a>
        </div>
    </section>
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