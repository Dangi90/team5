<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::회원가입</title>    
    <link rel="stylesheet" href="../css/style.css"/>
    <style>
        #user{
        	display: flex;
        	justify-content: center;
        	width: auto;
        }
        .div-table__caption1 {
        	text-align: left
        }
        .div-table__caption2{
        	text-align: left
        }
        .form-div{
        text-align: right;
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
            <form action="/Farmstory_JSP/user/register.do" method="post">
            <table border="1">
                <caption class="div-table__caption1">사이트 이용정보 입력</caption>
                <tr>
                    <td>아이디</td>
                    <td>
                        <input type="text" name="uid" placeholder="아이디 입력"/>
                        <button type="button" id="btnCheckUid"><img src="../images/chk_id.gif" alt=""></button>
                        <span class="resultId"></span>
                    </td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td>
                        <input type="password" name="pass1" placeholder="비밀번호 입력"/>                            
                    </td>
                </tr>
                <tr>
                    <td>비밀번호 확인</td>
                    <td>
                        <input type="password" name="pass2" placeholder="비밀번호 확인 입력"/>
                        <span class="resultPass"></span>
                    </td>
                </tr>
            </table>
            <table border="1">
                <caption class="div-table__caption2">개인정보 입력</caption>
                <tr>
                    <td>이름</td>
                    <td>
                        <input type="text" name="name" placeholder="이름 입력"/>
						<span class="resultName"></span>
                    </td>
                </tr>
                <tr>
                    <td>별명</td>
                    <td>
                        <p>공백없이 한글, 영문, 숫자만 입력가능</p>
                        <input type="text" name="nick" placeholder="별명 입력"/>
                        <span class="resultNick"></span>                            
                    </td>
                </tr>
                <tr>
                    <td>E-Mail</td>
                    <td>
                       <input type="email" name="email" placeholder="이메일 입력"/>
                       <button type="button" id="btnSendEmail"><img src="../images/chk_auth.gif" alt="인증번호 받기"/></button>
                       <span class="resultEmail"></span>
                       <div class="auth">
                           <input type="text" name="auth" placeholder="인증번호 입력"/>
                           <button type="button" id="btnAuthEmail"><img src="../images/chk_confirm.gif" alt="확인"/></button>
                       </div>
                   </td>
                </tr>
                <tr>
                    <td>휴대폰</td>
                    <td>
                        <input type="text" name="hp" placeholder="- 포함 13자리 입력" minlength="13" maxlength="13" />
                        <span class="resultHp"></span>
                    </td>
                </tr>
                <tr>
                    <td>주소</td>
                    <td>
                        <div>
                            <input type="text" name="zip" id="zip" placeholder="우편번호" readonly/>                                
                            <button type="button" class="btnZip" onclick="postcode()"><img src="../images/chk_post.gif" alt=""></button>
                        </div>                            
                        <div>
                            <input type="text" name="addr1" id="addr1" placeholder="주소를 검색하세요." readonly/>
                        </div>
                        <div>
                            <input type="text" name="addr2" id="addr2" placeholder="상세주소를 입력하세요."/>
                        </div>
                    </td>
                </tr>
            </table>
            <div class="form-div">
                <a href="/jboard/user/login.do" class="btnCancel">취소</a>
                <input type="submit"   class="btnSubmit" value="회원가입"/>
            </div>    
        </form>
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