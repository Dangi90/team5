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
        <jsp:include page="/WEB-INF/layout/header.jsp" />
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
        <jsp:include page="/WEB-INF/layout/footer.jsp" />
    </div>
    
</body>
</html>