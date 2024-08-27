<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::글 수정하기</title>
    <link rel="stylesheet" href="/farmstory/css/style.css"/>
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
            <div><img src="/farmstory/images/sub_top_tit3.png" alt="CROP TALK"></div>
            <section class="croptalk">
                <aside>
                    <img src="/farmstory/images/sub_aside_cate3_tit.png" alt="농작물이야기"/>

                    <ul class="lnb">
                        <li class="on"><a href="list.jsp?group=${param.group}&cate=${param.cate}">농작물이야기</a></li>
                        <li><a href="grow.jsp?group=${param.group}&cate=grow">텃밭가꾸기</a></li>
                        <li><a href="school.jsp?group=${param.group}&cate=school">귀농학교</a></li>
                    </ul>
                </aside>
                <article>
                    <nav>
                        <img src="/farmstory/images/sub_nav_tit_cate3_tit1.png" alt="농작물이야기"/>
                        <p>
                            HOME > 농작물이야기 > <em>글 수정하기</em>
                        </p>
                    </nav>

                    <!-- 글 수정하기 시작 -->
                    <h2>수정</h2>
                    <form action="modify.do?group=${param.group}&cate=${param.cate}" method="post">
                        <input type="hidden" name="id" value="${article.id}">
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
