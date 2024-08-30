<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::커뮤니티 글 수정</title>
    <link rel="stylesheet" href="/Farmstory_JSP/css/style.css"/>
    <style>
         form {
            width: 100%;
            max-width: 700px; /* 폼의 최대 가로 너비를 700px로 설정 */
            margin: 0 auto;
            padding: 20px;
        }

        h2 {
            text-align: left;
            margin-bottom: 20px;
            font-size: 20px;
            font-weight: bold;
            color: #333;
        }

        .form-table {
            width: 100%;
            border-collapse: collapse;
        }

        .form-table th,
        .form-table td {
            padding: 10px;
            border: 1px solid #ccc;
            vertical-align: middle;
        }

        .form-table th {
            width: 140px; /* 왼쪽 라벨의 넓이를 조정 */
            background-color: #f7f7f7;
            text-align: center;
            font-weight: bold;
            color: #333;
        }

        .form-table td {
            width: calc(100% - 140px);
            background-color: #fff;
        }

        input[type="text"],
        textarea {
            width: 100%; /* 입력 필드의 가로폭을 100%로 설정 */
            padding: 8px;
            border: 1px solid #ccc;
            font-size: 14px;
            box-sizing: border-box;
        }

        textarea {
            height: 150px;
            resize: vertical;
        }

        .form-buttons {
            text-align: right;
            margin-top: 20px;
        }

        input[type="submit"],
        input[type="button"] {
            padding: 8px 16px;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
            margin-left: 10px;
        }

        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: #d9534f;
        }

        input[type="button"] {
            background-color: #777;
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
 				 	  <li class="on"><a href="./list.do?group=${param.group}&cate=notice">공지사항</a></li>
   					 <li><a href="./list.do?group=${param.group}&cate=menu">오늘의식단</a></li>
   					 <li><a href="./list.do?group=${param.group}&cate=chef">나도요리사</a></li>
   					 <li><a href="./list.do?group=${param.group}&cate=qna">1:1고객문의</a></li>
   					 <li><a href="./list.do?group=${param.group}&cate=faq">자주묻는질문</a></li>
					</ul>

                </aside>
                <article>
                    <nav>
                        <img src="/Farmstory_JSP/images/sub_nav_tit_cate5_notice.png" alt="공지사항"/>
                        <p>
                            HOME > 커뮤니티 > <em>공지사항</em>
                        </p>
                    </nav>


                    <!-- 글 수정하기 시작 -->
                    <h2>수정</h2>
                    <form action="modify.do?group=${param.group}&cate=${param.cate}" method="post">
                        <input type="hidden" name="no" value="${article.no}">
                        <table class="form-table">
                            <tr>
                                <th><label for="title">제목</label></th>
                                <td><input type="text" id="title" name="title" value="${article.title}" required></td>
                            </tr>
                            <tr>
                                <th><label for="content">내용</label></th>
                                <td><textarea id="content" name="content" required>${article.content}</textarea></td>
                            </tr>
                        </table>
                        <div class="form-buttons">
                            <input type="button" value="취소" onclick="history.back(); this.form.reset();">
                            <input type="submit" value="수정하기">
                        </div>
                    </form>
                    <!-- 글 수정하기 끝 -->
                </article>
            </section>
        </div>

         <jsp:include page="/WEB-INF/layout/footer.jsp" />
    </div>    
</body>
</html>
