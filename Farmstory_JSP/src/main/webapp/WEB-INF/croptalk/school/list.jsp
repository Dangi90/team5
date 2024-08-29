<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@
taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <title>팜스토리::농작물이야기</title>
    <link rel="stylesheet" href="/Farmstory_JSP/css/style.css" />
    <style>
      /* 테이블 스타일 */
      table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        font-size: 14px;
      }

      table th,
      table td {
        padding: 10px;
        text-align: left;
        vertical-align: middle;
      }

      table th {
        background-color: #f7f7f7;
        font-weight: bold;
        color: #333;
        border-bottom: 2px solid #e1e1e1;
        border-top: 3px solid #333; /* 위쪽에 검은색 선 추가 */
      }

      table th:first-child,
      table td:first-child {
        width: 50px;
        text-align: center;
      }

      table th:nth-child(2),
      table td:nth-child(2) {
        width: 60%;
      }

      table th:nth-child(3),
      table td:nth-child(3),
      table th:nth-child(4),
      table td:nth-child(4),
      table th:nth-child(5),
      table td:nth-child(5) {
        text-align: center;
      }

      table th + th,
      table td + td {
        border-left: 1px solid #ccc;
      }

      table tbody tr:hover {
        background-color: #f9f9f9;
      }

      table td a {
        text-decoration: none;
        color: #333;
      }

      table td a:hover {
        color: #d9534f;
      }

      /* 검색 바 스타일 */
      .search-bar {
        margin: 10px 0;
        padding: 10px;
        background-color: #f7f7f7;
        border: 1px solid #e1e1e1;
        text-align: center;
      }

      .search-bar form {
        display: inline-flex;
        align-items: center;
        justify-content: center;
      }

      .search-bar select {
        padding: 5px;
        border: 1px solid #ccc;
        margin-right: 5px;
        width: 100px; /* 가로 길이를 늘림 */
      }

      .search-bar input[type="text"] {
        padding: 5px;
        border: 1px solid #ccc;
        margin-right: 5px;
        width: 150px; /* 가로 길이를 늘림 */
      }

      .search-bar input[type="submit"] {
        padding: 5px 10px;
        background-color: #333;
        color: #fff;
        border: none;
        cursor: pointer;
      }

      .search-bar input[type="submit"]:hover {
        background-color: #d9534f;
      }

      .search-bar input[type="radio"] {
        margin-left: 10px;
      }

      /* Total 표시 스타일 */
      .total-count {
        text-align: right;
        margin-bottom: 10px;
        font-weight: bold;
        font-size: 14px;
      }
    </style>
  </head>
  <body>
    <div id="container">
      <jsp:include page="/WEB-INF/layout/header.jsp" />

      <div id="sub">
        <div>
          <img src="/Farmstory_JSP/images/sub_top_tit3.png" alt="CROP TALK" />
        </div>
        <section class="croptalk">
          <aside>
            <img
              src="/Farmstory_JSP/images/sub_aside_cate3_tit.png"
              alt="농작물이야기"
            />

            <ul class="lnb">
              <li >
                <a
                  href="/Farmstory_JSP/article/list.do?group=${param.group}&cate=story"
                  >농작물이야기</a
                >
              </li>
              <li>
                <a
                  href="/Farmstory_JSP/article/list.do?group=${param.group}&cate=grow"
                  >텃밭가꾸기</a
                >
              </li>
              <li class="on">
                <a
                  href="/Farmstory_JSP/article/list.do?group=${param.group}&cate=school"
                  >귀농학교</a
                >
              </li>
            </ul>
          </aside>
          <article>
            <nav>
              <img
                src="/Farmstory_JSP/images/sub_nav_tit_cate3_school.png"
                alt="농작물이야기"
              />
              <p>HOME > 농작물이야기 > <em>귀농학교</em></p>
            </nav>

            <!-- Total과 게시판 목록 시작 -->
            <div class="total-count">Total ${articles.size()}</div>
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
                  <tr
                    onclick="location.href='/Farmstory_JSP/article/view.do?group=${group}&cate=${cate}&no=${article.no}'"
                    style="cursor: pointer"
                  >
                    <td>${article.no}</td>
                    <td>${article.title}</td>
                    <td>${article.nick}</td>
                    <td>${article.regdate.substring(0, 10)}</td>
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
                <input
                  type="text"
                  name="searchQuery"
                  placeholder="검색어 입력"
                />
                <input type="submit" value="검색" />
                <input type="radio" name="searchOption" value="and" checked />
                and <input type="radio" name="searchOption" value="or" /> or
              </form>

              <button
                onclick="location.href='/Farmstory_JSP/article/write.do?group=${group}&cate=${cate}'"
                style="
                  padding: 5px 10px;
                  background-color: #333;
                  color: #fff;
                  border: none;
                  cursor: pointer;
                  margin-left: 10px;
                "
              >
                글쓰기
              </button>
            </div>
          </article>
        </section>
      </div>

      <jsp:include page="/WEB-INF/layout/footer.jsp" />
    </div>
  </body>
</html>
