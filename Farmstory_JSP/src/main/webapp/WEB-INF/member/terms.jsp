<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>팜스토리::약관</title>    
    <link rel="stylesheet" href="../css/style.css"/>
    <style>
        #user > img {
            display: block;
            margin: 20px auto;
        }
        
		main {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  background-color: white;
		  padding: 20px;
		}
		textarea{
		
		     box-sizing: border-box;
		     resize: none;
		     width: 600px;
		     height: 237px;
		     padding: 12px;
		            
		}
		section > div {
		text-align: right;
		}
	    
        
    </style>
</head>
<body>
    <div id="container">
    <jsp:include page="/WEB-INF/layout/header.jsp" />
        
        <main>
            <section class="terms">
                <table>
                    <caption>사이트 이용약관</caption>
                    <tr>
                        <td>
                            <textarea readonly>${termsDto.term_content1}</textarea>
                            <p style="text-align: right;">
                                <label><input type="checkbox" name="chk1"/> 동의합니다.</label>
                            </p>
                        </td>
                    </tr>
                </table>
                <table>
                    <caption>개인정보 취급방침</caption>
                    <tr>
                        <td>
                            <textarea readonly>${termsDto.term_content2}</textarea>
                            <p style="text-align: right;">
                                <label><input type="checkbox" name="chk2"/> 동의합니다.</label>
                            </p>
                        </td>
                    </tr>
                </table>
                <div>
                    <a href="/Farmstory_JSP/member/login.do" class="btnCancel">취소</a>
                    <a href="/Farmstory_JSP/member/register.do" class="btnNext">다음</a>
                </div>
            </section>
        </main>
        <footer>
            <img src="../images/footer_logo.png" alt="로고"/>
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
