<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="/Farmstory_JSP/js/postcode.js"></script>
  <script src="/Farmstory_JSP/js/validation.js"></script>
  <head>
    <meta charset="UTF-8" />
    <title>팜스토리::회원가입</title>
    <link rel="stylesheet" href="../css/style.css" />
    <style>
      #user {
        display: flex;
        justify-content: center;
      }
      #user > img {
        display: block;
        justify-content: center;
      }
      .cap_1 {
        text-align: left;
      }
      .cap_2 {
        text-align: left;
      }

      table {
        border: 2px solid black;
        border-collapse: collapse;
        margin-bottom: 30px;
      }

      input[type="text"],
      input[type="password"],
      input[type="email"] {
        width: 164px;
        padding: 5px;
        background-color: #f7f7f7;
        border: 1px solid #e4eaec;
      }

      input[type="button"] {
        width: 45px;
        height: 35px;
        padding: 5px 10px;
        border: 1px solid #bebebe;
        background-color: white;
      }
      input[type="submit"] {
        background-color: #efefef;
        border: 1px solid #bebebe;
        width: 66px;
        height: 35px;
      }

      td {
        box-sizing: border-box;
        width: 300px;
      }
    </style>
  </head>
  <body>
    <div id="container">
      <jsp:include page="/WEB-INF/layout/header.jsp" />

      <div id="user">
        <form action="/Farmstory_JSP/member/register.do" method="post">
          <table border="1">
            <caption class="cap_1">
              사이트 이용정보 입력
            </caption>
            <tr>
              <td>아이디</td>
              <td>
                <input type="text" name="uid" placeholder="아이디 입력" />
                <button type="button" id="btnCheckUid">
                  <img src="../images/chk_id.gif" alt="중복확인" />
                </button>
                <span class="resultId"></span>
              </td>
            </tr>
            <tr>
              <td>비밀번호</td>
              <td>
                <input
                  type="password"
                  name="pass1"
                  placeholder="비밀번호 입력"
                />
              </td>
            </tr>
            <tr>
              <td>비밀번호 확인</td>
              <td>
                <input
                  type="password"
                  name="pass2"
                  placeholder="비밀번호 확인 입력"
                />
                <span class="resultPass"></span>
              </td>
            </tr>
          </table>
          <table border="1">
            <caption class="cap_2">
              개인정보 입력
            </caption>
            <tr>
              <td>이름</td>
              <td>
                <input type="text" name="name" placeholder="이름 입력" />
                <span class="resultName"></span>
              </td>
            </tr>
            <tr>
              <td>별명</td>
              <td>
                <p>공백없이 한글, 영문, 숫자만 입력가능</p>
                <input type="text" name="nick" placeholder="별명 입력" />
                <span class="resultNick"></span>
              </td>
            </tr>
            <tr>
              <td>E-Mail</td>
              <td>
                <input type="email" name="email" placeholder="이메일 입력" />
                <button type="button" id="btnSendEmail">
                  <img src="../images/chk_auth.gif" alt="인증번호 받기" />
                </button>
                <span class="resultEmail"></span>
                <div class="auth">
                  <input type="text" name="auth" placeholder="인증번호 입력" />
                  <button type="button" id="btnAuthEmail">
                    <img src="../images/chk_confirm.gif" alt="확인" />
                  </button>
                </div>
              </td>
            </tr>
            <tr>
              <td>휴대폰</td>
              <td>
                <input
                  type="text"
                  name="hp"
                  placeholder="- 포함 13자리 입력"
                  minlength="13"
                  maxlength="13"
                />
                <span class="resultHp"></span>
              </td>
            </tr>
            <tr>
              <td>주소</td>
              <td>
                <div>
                  <input
                    type="text"
                    name="zip"
                    id="zip"
                    placeholder="우편번호"
                    readonly
                  />
                  <button type="button" class="btnZip" onclick="postcode()">
                    <img src="../images/btn_post_search.gif" alt="" />
                  </button>
                </div>
                <div>
                  <input
                    type="text"
                    name="addr1"
                    id="addr1"
                    placeholder="주소를 검색하세요."
                    readonly
                  />
                </div>
                <div>
                  <input
                    type="text"
                    name="addr2"
                    id="addr2"
                    placeholder="상세주소를 입력하세요."
                  />
                </div>
              </td>
            </tr>
          </table>
          <div style="text-align: right">
            <a href="./login.do" class="btnCancel">취소</a>
            <input type="submit" class="btnSubmit" value="회원가입" />
          </div>
        </form>
      </div>
      <footer>
        <img src="../images/footer_logo.png" alt="로고" />
        <p>
          (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제
          2013-팜스토리구-123호 / 벤처기업확인 서울지방중소기업청 제
          012345678-9-01234호<br />
          등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동<br />
          대표 : 홍길동 / 이메일 : email@mail.mail / 전화 : 01) 234-5678 /
          경기도 성남시 잘한다구 신난다동 345<br />
          <em>Copyright(C)홍길동 All rights reserved.</em>
        </p>
      </footer>
    </div>
  </body>
</html>
