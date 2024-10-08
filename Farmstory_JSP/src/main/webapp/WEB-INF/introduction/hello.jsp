<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::인사말</title>
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
    <div id="container">
        <jsp:include page="/WEB-INF/layout/header.jsp" />
        
        <div id="sub">
            <div><img src="../images/sub_top_tit1.png" alt="INTRODUCTION"></div>
            <section class="introduction">
                <aside>
                    <img src="../images/sub_aside_cate1_tit.png" alt="팜스토리 소개"/>

                    <ul class="lnb">
                        <li class="on"><a href="./hello.do">인사말</a></li>
                        <li><a href="./direction.do">찾아오시는 길</a></li>
                    </ul>

                </aside>
                <article>
                    <nav>
                        <img src="../images/sub_nav_tit_cate1_tit1.png" alt="인사말"/>
                        <p>
                            HOME > 팜스토리소개 > <em>인사말</em>
                        </p>
                    </nav>

                    <!-- 내용 시작 -->
                    <img src="../images/sub_page1_article_txt.png" alt="건강한 먹거리를 위해 노력합니다.">

                    <p>
                        항상 저희 팜스토리를 성원해 주시고 관심을 가져주시는 모든 분들께 감사의 인사를 드리며<br/>
                        가정에 건강과 행복이 가득하시길 기원합니다.<br/><br/>
                        
                        팜스토리는 신선하고 안전한 먹거리로 건강한 삶 만들기에 기여합니다.<br/>
                        보다 좋은 농산품을 공급하기 위해 화학비료를 쓰지 않는 건강한 흙에서 유기농업으로 정성을 다해 지은 농사를 통해 믿고 먹을 수 있는 먹거리 제공에 앞장서겠습니다.<br/><br/>
                        
                        <strong>친환경 농장</strong><br/>
                        팜스토리는 경기도 이천에 위치한 10만평 규모의 유기농 제배단지입니다.<br/><br/>
                        
                        <strong>친환경 캠페인</strong><br/>
                        팜스토리는 2차 포장재 사용을 줄임으로써 친환경적인 포장과, 친환경적인 소비문화 정착을 위해 노력합니다.<br/>
                    </p>
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