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
    <style></style>
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
            <section id="productRegister">
                <nav>
                    <h3>상품등록</h3>
                </nav>

                <article>
                    <form action="/Farmstory_JSP/admin/productRegister.do" method="post">
                        <table border="0">
                            <tr>
                                <td>상품명</td>
                                <td><input type="text" name="name"/></td>
                            </tr>
                            <tr>
                                <td>구분</td>
                                <td>
                                    <select name="type">
                                        <option >구분</option>
                                        <option value="fruit">과일</option>
                                        <option value="vegetable">야채</option>
                                        <option value="grains">곡류</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>가격</td>
                                <td><input type="text" name="price"/></td>
                            </tr>
                            <tr>
                                <td>배송비</td>
                                <td>
                                    <label><input type="radio" name="delivery_fee" value="2000">2,000원</label>                                    
                                    <label><input type="radio" name="delivery_fee" value="3000">3,000원</label>
                                    <label><input type="radio" name="delivery_fee" value="5000">5,000원</label>
                                    <label><input type="radio" name="delivery_fee" value="0">무료</label>
                                </td>
                            </tr>
                            <tr>
                                <td>재고</td>
                                <td><input type="text" name="stack"/></td>
                            </tr>
                            <tr>
                                <td>상품이미지</td>
                                <td>
                                    <p>
                                        <span>상품목록 이미지(약 120 x 120)</span>
                                        <input type="file" name="thumb_img"/>
                                    </p>
                                    <p>
                                        <span>기본정보 이미지(약 240 x 240)</span>
                                        <input type="file" name="info_img"/>
                                    </p>
                                    <p>
                                        <span>상품설명 이미지(약 750 x Auto)</span>
                                        <input type="file" name="explain_img"/>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td>기타</td>
                                <td>
                                    <textarea name="etc"></textarea>
                                </td>
                            </tr>
                        </table>

                        <p>
                            <a href="./productList.do" class="btnCancel">취소</a>
                            <input type="submit" value="상품등록"/>
                        </p>
                    </form>
                </article>                
            </section>
        </main>
        <footer>            
            <p>                
                Copyright(C)Farmstory All rights reserved. FARMSTORY ADMINISTRATOR Version 1.0.1
            </p>
        </footer>
    </div>
    
</body>
</html>