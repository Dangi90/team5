<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::글 보기</title>
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

        <div id="sub">
            <div><img src="/farmstory/images/sub_top_tit3.png" alt="CROP TALK"></div>
            <section class="croptalk">
                <aside>
                    <img src="/farmstory/images/sub_aside_cate3_tit.png" alt="농작물이야기"/>

                    <ul class="lnb">
					    <li><a href="list.jsp?group=${param.group}&cate=list">농작물이야기</a></li>
					    <li class="on"><a href="grow.jsp?group=${param.group}&cate=list">텃밭가꾸기</a></li>
					    <li><a href="school.jsp?group=${param.group}&cate=school">귀농학교</a></li>
					</ul>
					
                </aside>
                <article>
                    <nav>
                        <img src="/Farmstory_JSP/images/sub_nav_tit_cate3_grow.png" alt="텃밭가꾸기"/>
                        <p>
                            HOME > 농작물이야기 > 텃밭가꾸기 <em>글 보기</em>
                        </p>
                    </nav>

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
                            <td>${article.writer}</td>
                            <th>작성시간</th>
                            <td>${article.createdAt}</td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td colspan="3">${article.content}</td>
                        </tr>
                    </table>

                    <!-- 버튼 그룹 -->
                    <div class="button-group">
                        <button type="button" class="btn-secondary" onclick="location.href='list.jsp'">목록으로</button>
                        <button type="button" onclick="location.href='modify.jsp?id=${article.id}'">수정하기</button>
                    </div>
                    <!-- 글 보기 끝 -->

                </article>
            </section>
        </div>

        <jsp:include page="/WEB-INF/layout/footer.jsp" />
    </div>    
</body>
</html>
