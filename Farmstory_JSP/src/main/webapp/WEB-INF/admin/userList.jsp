<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>팜스토리</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="/Farmstory_JSP/css/styleAdmin.css">
    <script>
        $(function(){

            $('.showPopup').click(function(e){
                e.preventDefault();
                $('#userPopup').show();
            });

            $('#userPopup .btnClose').click(function(){
                $('#userPopup').hide();
            });

        });
    </script>
</head>

<body>
    <div id="container">
        <header>
            <a href="./index.do" class="logo"><img src="../images/admin_logo.jpg" alt="로고"/></a>
            <p>
                <a href="../index.do">HOME |</a>
                <a href="./index.do">관리페이지 |</a>
                <a href="../member/logout.do">로그아웃 |</a>
                <a href="../community/qna.do">고객센터</a>
            </p>
        </header>
        <main>
            <aside>
			    <h3>주요기능</h3>
			    <ul>
			        <li>상품관리
			            <ul>
			                <li><a href="./productList.do">상품목록</a></li>
			                <li><a href="./productRegister.do">상품등록</a></li>
			            </ul>
			        </li>
			        <li>주문관리
			            <ul>
			                <li><a href="./orderList.do">주문목록</a></li>
			            </ul>
			        </li>
			        <li>회원관리
			            <ul>
			                <li><a href="./userList.do">회원목록</a></li>
			            </ul>
			        </li>                  
			    </ul>
			</aside>
            <section id="orderList">
                <nav>
                    <h3>회원목록</h3>
                </nav>

                <article>

                    <table border="0">
                        <tr>
                            <th><input type="checkbox" name="all"/></th>
                            <th>아이디</th>
                            <th>이름</th>
                            <th>별명</th>
                            <th>이메일</th>
                            <th>휴대폰</th>
                            <th>등급</th>
                            <th>가입일</th>
                            <th>확인</th>
                        </tr>
                        <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td><input type="checkbox" name="uid" value="${user.uid}"/></td>
                                    <td>${user.uid}</td>
                                    <td>${user.name}</td>
                                    <td>${user.nick}</td>
                                    <td>${user.email}</td>
                                    <td>${user.hp}</td>
                                    <td>
                                    	<select name="grade" value="${user.grade}">
	                                    	<option>1</option>
		                                    <option>2</option>
		                                    <option>3</option>
		                                    <option>4</option>
		                                    <option>5</option>
                                    	</select>
                                   	</td>
                                    <td>${user.regdate}</td>
                                    <td><a href="#" class="showPopup">[상세확인]</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                            <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td><input type="checkbox" name="uid" value="${user.uid}"/></td>
                                    <td>${user.uid}</td>
                                    <td>${user.name}</td>
                                    <td>${user.nick}</td>
                                    <td>${user.email}</td>
                                    <td>${user.hp}</td>
                                    <td>
                                    	<select name="grade" value="${user.grade}">
	                                    	<option>1</option>
		                                    <option>2</option>
		                                    <option>3</option>
		                                    <option>4</option>
		                                    <option>5</option>
                                    	</select>
                                   	</td>
                                    <td>${user.regdate}</td>
                                    <td><a href="#" class="showPopup">[상세확인]</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td><input type="checkbox" name="uid" value="${user.uid}"/></td>
                                    <td>${user.uid}</td>
                                    <td>${user.name}</td>
                                    <td>${user.nick}</td>
                                    <td>${user.email}</td>
                                    <td>${user.hp}</td>
                                    <td>
                                    	<select name="grade" value="${user.grade}">
	                                    	<option>1</option>
		                                    <option>2</option>
		                                    <option>3</option>
		                                    <option>4</option>
		                                    <option>5</option>
                                    	</select>
                                   	</td>
                                    <td>${user.regdate}</td>
                                    <td><a href="#" class="showPopup">[상세확인]</a></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <p>
                        <a href="#" class="orderDelete">선택수정</a>                        
                    </p>
                    
                    <p class="paging">
                        <a href="#"><</a>
                        <a href="#" class="on">[1]</a>
                        <a href="#">[2]</a>
                        <a href="#">[3]</a>
                        <a href="#">[4]</a>
                        <a href="#">[5]</a>
                        <a href="#">></a>
                    </p>
                </article>
            </section>
        </main>
        <footer>            
            <p>                
                Copyright(C)Farmstory All rights reserved. FARMSTORY ADMINISTRATOR Version 1.0.1
            </p>
        </footer>

        <div id="userPopup">
            <section>
                <nav>
                    <h1>사용자 상세정보</h1>
                    <button class="btnClose">닫기</button>
                </nav>

                <article>  
                    <h3>기본정보</h3>
                    <table border="0">
                        
                        <tr>
                            <td>아이디</td>
                            <td>${user.uid}</td>
                        </tr>
                        <tr>
                            <td>이름</td>
                            <td>${user.name}</td>
                        </tr>
                        <tr>
                            <td>별명</td>
                            <td>${user.nick}</td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td>${user.email}</td>
                        </tr>
                        <tr>
                            <td>휴대폰</td>
                            <td>${user.hp}</td>
                        </tr>
                        <tr>
                            <td>등급</td>
                            <td>${user.grade}</td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td>${user.addr}</td>
                        </tr>
                        <tr>
                            <td>아이피</td>
                            <td>${user.regip}</td>
                        </tr>
                        <tr>
                            <td>회원가입일</td>
                            <td>${user.regdate}</td>
                        </tr>
                    </table>
                </article>
            </section>
        </div>
    </div>
</body>
</html>