<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>400 - 잘못된 요청</title>
    <style>
        body { font-family: 'Arial', sans-serif; background-color: #f4f4f4; text-align: center; padding: 50px; }
        h1 { font-size: 100px; color: #e74c3c; }
        p { font-size: 20px; }
        a { text-decoration: none; color: #3498db; }
    </style>
</head>
<body>
    <h1>400</h1>
    <p>잘못된 요청입니다.</p>
    <a href="<%= request.getContextPath() %>/">홈으로 돌아가기</a>
</body>
</html>
