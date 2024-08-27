<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::커뮤니티</title>
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
    <div id="container">
        <header>
           <a href="../index.jsp" class="logo"><img src="../images/logo.png" alt="로고"/></a>
             <p>
                <a href="../index.jsp">HOME |</a>
                 <a href="/Farmstory_JSP/member/login.do">로그인 |</a>
                <a href="/Farmstory_JSP/member/register.do">회원가입 |</a>
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

        <div id="sub">
            <div><img src="../images/sub_top_tit5.png" alt="COMMUNITY"></div>
            <section class="community">
                <aside>
                    <img src="../images/sub_aside_cate5_tit.png" alt="커뮤니티"/>

                    <ul class="lnb">
                        <li><a href="./notice.do">공지사항</a></li>
                        <li class="on"><a href="./menu.do">오늘의식단</a></li>
                        <li><a href="./chef.do">나도요리사</a></li>
                        <li><a href="./qna.do">1:1고객문의</a></li>
                        <li><a href="./faq.do">자주묻는질문</a></li>
                    </ul>

                </aside>
                <article>
                    <nav>
                        <img src="../images/sub_nav_tit_cate5_menu.png" alt="오늘의식단"/>
                        <p>
                            HOME > 커뮤니티 > <em>오늘의식단</em>
                        </p>
                    </nav>

                    <!-- 내용 시작 -->
                    <p>게시판 글목록/글쓰기/글보기/글수정 화면 출력</p>

                    <!-- 내용 끝 -->

                </article>
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