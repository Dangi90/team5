<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::약관</title>    
    <link rel="stylesheet" href="../css/style.css"/>
    <style>
        .terms  {
			display: grid;
			justify-content: center;
			justify-item: center; 
			text-align: center;
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
           	</ul>
        </header>
        <!-- 기존 이미지 태그 제거 -->
        <main>
            <section class="terms">
                <table>
                    <caption>사이트 이용약관</caption>
                    <tr>
                        <td>
                            <textarea readonly>${termsDto.term_content1}</textarea>
                            <p>
                                <label><input type="checkbox" name="chk1"/> 동의합니다.</label>
                            </p>
                        </td>
                    </tr>
                </table>
                <table>
                    <caption>개인정보 취급방침</caption>
                    <tr>
                        <td>
                            <textarea readonly>${termsDto.content2}</textarea>
                            <p>
                                <label><input type="checkbox" name="chk2"/> 동의합니다.</label>
                            </p>
                        </td>
                    </tr>
                </table>
                <div>
                    <a href="/Farmstory_JSP/member/login.do" class="btnCancel">취소</a>
                    <a href="/Farmstory_JSP/member/register.do" class="btnNext">다음</a>
                </div>
            </section>
        </main>
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
