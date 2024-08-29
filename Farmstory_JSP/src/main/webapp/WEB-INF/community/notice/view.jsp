<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::커뮤니티 글 보기</title>
    <link rel="stylesheet" href="/farmstory/css/style.css"/>
    <style>
       /* 테이블 스타일 */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            font-size: 14px;
            border-top: 2px solid #333; /* 위쪽 검은 줄 */
            border-bottom: 1px solid #ccc; /* 아래쪽 회색 줄 */
        }

        table th, table td {
            padding: 10px;
            text-align: left;
            vertical-align: middle;
            border: 1px solid #e0e0e0; /* 경계선을 흐릿하게 설정 */
        }

        table th {
            background-color: #f7f7f7;
            font-weight: bold;
            color: #333;
            text-align: center;
            width: 150px; /* 회색 칸의 가로 너비 조정 */
        }

        table td {
            background-color: #fff;
        }

        /* 버튼 스타일 */
        .button-group {
            text-align: right;
            margin-top: 20px;
        }

        .button-group button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            margin-left: 10px;
        }

        .button-group button:hover {
            background-color: #0056b3;
        }

        .button-group .btn-secondary {
            background-color: #6c757d;
        }

        .button-group .btn-secondary:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <div id="container">
        <jsp:include page="/WEB-INF/layout/header.jsp" />

      <div id="container">
                <jsp:include page="/WEB-INF/layout/header.jsp" />

        <div id="sub">
            <div><img src="/Farmstory_JSP/images/sub_top_tit5.png" alt="COMMUNITY"></div>
            <section class="community">
                <aside>
                    <img src="/Farmstory_JSP/images/sub_aside_cate5_tit.png" alt="커뮤니티"/>

                   <ul class="lnb">
 				 	  <li class="on"><a href="./notice.do?group=${param.group}&cate=notice">공지사항</a></li>
   					 <li><a href="./menu.do?group=${param.group}&cate=menu">오늘의식단</a></li>
   					 <li><a href="./chef.do?group=${param.group}&cate=chef">나도요리사</a></li>
   					 <li><a href="./qna.do?group=${param.group}&cate=qna">1:1고객문의</a></li>
   					 <li><a href="./faq.do?group=${param.group}&cate=faq">자주묻는질문</a></li>
					</ul>

                </aside>
                <article>
                    <nav>
                        <img src="/Farmstory_JSP/images/sub_nav_tit_cate5_notice.png" alt="공지사항"/>
                        <p>
                            HOME > 커뮤니티 > <em>공지사항</em>
                        </p>
                    </nav>
>

                   <!-- 글 보기 시작 -->
                    <h2>상세보기</h2>
                    <table>
                        <tr>
                            <th>제목</th>
                            <td>${article.title}</td>
                            <th>조회수</th>
                            <td>${article.views}</td>
                        </tr>
                        <tr>
                            <th>작성자</th>
                            <td>${article.nick}</td>
                            <th>작성시간</th>
                            <td>${article.regdate}</td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td colspan="3">${article.content}</td>
                        </tr>
                    </table>

                    <!-- 버튼 그룹 -->
                    <div class="button-group">
                        <button type="button" class="btn-secondary" onclick="location.href='/Farmstory_JSP/article/list.do?group=${group}&cate=${cate}'">목록으로</button>
                        <button type="button" onclick="location.href='/Farmstory_JSP/article/modify.do?group=${group}&cate=${cate}&no=${no}'">수정하기</button>
                    </div>
                    <!-- 글 보기 끝 -->

                </article>
            </section>
        </div>

        <jsp:include page="/WEB-INF/layout/footer.jsp" />
    </div>    
</body>
</html>
