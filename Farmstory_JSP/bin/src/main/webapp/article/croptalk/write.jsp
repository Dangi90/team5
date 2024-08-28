<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::글 쓰기</title>
    <link rel="stylesheet" href="/farmstory/css/style.css"/>
    <style>
        form {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 0;
            border: none;
            position: relative;
        }

        h2 {
            text-align: left;
            margin-bottom: 20px;
            font-size: 22px;
            font-weight: bold;
            color: #333;
        }

        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            color: #333;
            font-size: 16px;
            width: 80px; /* 라벨 너비 설정 */
            margin-right: 10px;
        }

        input[type="text"],
        textarea {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
            min-height: 200px;
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
                            HOME > 농작물이야기 > <em>글 쓰기</em>
                        </p>
                    </nav>

                    <!-- 글 작성 시작 -->
                    <h2>글쓰기</h2>
                    <form action="write.do?group=${param.group}&cate=${param.cate}" method="post">
                        <div class="form-group">
                            <label for="title">제목</label>
                            <input type="text" id="title" name="title" required>
                        </div>
                        <div class="form-group">
                            <!-- 내용 텍스트 없이 바로 텍스트 영역을 배치 -->
                            <textarea id="content" name="content" rows="10" required></textarea>
                        </div>
                        <div class="form-buttons">
                            <input type="button" value="취소" onclick="history.back(); this.form.reset();">
                            <input type="submit" value="등록">
                        </div>
                    </form>
                    <!-- 글 작성 끝 -->

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
