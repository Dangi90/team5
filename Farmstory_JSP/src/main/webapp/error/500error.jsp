<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>500 - 서버 오류</title>
    <style>
      body {
        font-family: "Arial", sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        padding: 50px;
      }

      h1 {
        font-size: 100px;
        color: #e74c3c;
      }

      p {
        font-size: 20px;
      }

      a {
        text-decoration: none;
        color: #3498db;
      }
    </style>
    <script>
      function goBack() {
        history.back();
      }
    </script>
  </head>
  <body>
    <h1>500</h1>
    <p>서버에서 오류가 발생했습니다. 잠시 후 다시 시도해 주세요.</p>
    <p>
      <%=exception != null ? exception.getMessage() : "알 수 없는 오류가
      발생했습니다."%>
    </p>
    <a href="javascript:void(0);" onclick="goBack();">이전 페이지로 돌아가기</a>
  </body>
</html>
