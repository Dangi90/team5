<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::이벤트 안내</title>
    <link rel="stylesheet" href="/farmstory/css/style.css"/>
</head>
<body>
    <div id="container">
        <header>
            <a href="/farmstory/index.html" class="logo"><img src="/farmstory/images/logo.png" alt="로고"/></a>
            <p>
                <a href="#">HOME |</a>
                <a href="#">로그인 |</a>
                <a href="#">회원가입 |</a>
                <a href="#">고객센터</a>
            </p>
            <img src="/farmstory/images/head_txt_img.png" alt="3만원 이상 무료배송"/>
            
            <ul class="gnb">
                <li><a href="#">팜스토리소개</a></li>
                <li><a href="#"><img src="/farmstory/images/head_menu_badge.png" alt="30%"/>장바구니</a></li>
                <li><a href="#">농작물이야기</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">커뮤니티</a></li>
            </ul>
        </header>

        <div id="sub">
            <div><img src="/farmstory/images/sub_top_tit4.png" alt="EVENT"></div>
            <section class="event">
                <aside>
                    <img src="/farmstory/images/sub_aside_cate4_tit.png" alt="이벤트"/>

                    <ul class="lnb">
                        <li class="on"><a href="list.jsp">이벤트</a></li>
                    </ul>

                </aside>
                <article>
                    <nav>
                        <img src="/farmstory/images/sub_nav_tit_cate4_tit1.png" alt="이벤트"/>
                        <p>
                            HOME > 이벤트 > <em>이벤트</em>
                        </p>
                    </nav>

                    <!-- 게시판 목록 시작 -->
                    <h2>이벤트 안내</h2>
                    <table>
                        <thead>
                            <tr>
                                <th>No.</th>
                                <th>제목</th>
                                <th>글쓴이</th>
                                <th>날짜</th>
                                <th>조회</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="article" items="${articles}">
                                <tr>
                                    <td>${article.id}</td>
                                    <td><a href="view.jsp?id=${article.id}">${article.title}</a></td>
                                    <td>${article.writer}</td>
                                    <td>${article.createdAt}</td>
                                    <td>${article.views}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <!-- 게시판 목록 끝 -->

                    <!-- 검색 창 -->
                    <div class="search-bar">
                        <form action="search.jsp" method="get">
                            <select name="searchField">
                                <option value="title">제목</option>
                                <option value="writer">글쓴이</option>
                            </select>
                            <input type="text" name="searchQuery" placeholder="검색어 입력">
                            <input type="submit" value="검색">
                            <input type="radio" name="searchOption" value="and" checked> and
                            <input type="radio" name="searchOption" value="or"> or
                        </form>
                    </div>

                </article>
            </section>

        </div>

        <footer>
            <img src="/farmstory/images/footer_logo.png" alt="로고"/>
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
