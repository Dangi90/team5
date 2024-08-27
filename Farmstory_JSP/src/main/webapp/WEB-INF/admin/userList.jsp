<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>íì¤í ë¦¬</title>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="../css/style.css">
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
            <a href="./index.html" class="logo"><img src="../images/admin_logo.jpg" alt="ë¡ê³ "/></a>
            <p>
                <a href="#">HOME |</a>
                <a href="#">ë¡ê·¸ìì |</a>
                <a href="#">ê³ ê°ì¼í°</a>
            </p>
        </header>
        <main>
            <aside>
                <h3>ì£¼ìê¸°ë¥</h3>
                <ul>
                    <li><a href="#">ìíê´ë¦¬</a></li>
                    <li><a href="#">ì£¼ë¬¸ê´ë¦¬</a></li>
                    <li class="on"><a href="#">íìê´ë¦¬</a></li>                    
                </ul>
            </aside>
            <section id="orderList">
                <nav>
                    <h3>íìëª©ë¡</h3>
                </nav>

                <article>

                    <table border="0">
                        <tr>
                            <th><input type="checkbox" name="all"/></th>
                            <th>ìì´ë</th>
                            <th>ì´ë¦</th>
                            <th>ë³ëª</th>
                            <th>ì´ë©ì¼</th>
                            <th>í´ëí°</th>
                            <th>ë±ê¸</th>
                            <th>ê°ìì¼</th>
                            <th>íì¸</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name=""/></td>
                            <td>a101</td>
                            <td>ê¹ì ì </td>                            
                            <td>ì ì 101</td>
                            <td>yusin101@naver.com</td>
                            <td>010-1234-1001</td>
                            <td>
                                <select name="grade">
                                    <option>1</option>
                                    <option selected>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </td>
                            <td>2023-01-01 13:06:14</td>
                            <td><a href="#" class="showPopup">[ìì¸íì¸]</a></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name=""/></td>
                            <td>a102</td>
                            <td>ê¹ì¶ì¶</td>                            
                            <td>ì¶ì¶102</td>
                            <td>chunchu102@naver.com</td>
                            <td>010-1234-1002</td>
                            <td>
                                <select name="grade">
                                    <option>1</option>
                                    <option selected>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </td>
                            <td>2023-01-02 13:06:14</td>
                            <td><a href="#" class="showPopup">[ìì¸íì¸]</a></td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name=""/></td>
                            <td>a103</td>
                            <td>ì¥ë³´ê³ </td>                            
                            <td>ë³´ê³ 103</td>
                            <td>bogo103@naver.com</td>
                            <td>010-1234-1003</td>
                            <td>
                                <select name="grade">
                                    <option>1</option>
                                    <option selected>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </td>
                            <td>2023-01-03 13:06:14</td>
                            <td><a href="#" class="showPopup">[ìì¸íì¸]</a></td>
                        </tr>
                    </table>

                    <p>
                        <a href="#" class="orderDelete">ì íìì </a>                        
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
                    <h1>ì¬ì©ì ìì¸ì ë³´</h1>
                    <button class="btnClose">ë«ê¸°</button>
                </nav>

                <article>  
                    <h3>ê¸°ë³¸ì ë³´</h3>
                    <table border="0">
                        <tr>
                            <td>ìì´ë</td>
                            <td>a101</td>
                        </tr>
                        <tr>
                            <td>ì´ë¦</td>
                            <td>ê¹ì ì </td>
                        </tr>
                        <tr>
                            <td>ë³ëª</td>
                            <td>ì ì 101</td>
                        </tr>
                        <tr>
                            <td>ì´ë©ì¼</td>
                            <td>yusin101@naver.com</td>
                        </tr>
                        <tr>
                            <td>í´ëí°</td>
                            <td>010-1234-1001</td>
                        </tr>
                        <tr>
                            <td>ë±ê¸</td>
                            <td>2ë±ê¸(ì¤íì)</td>
                        </tr>
                        <tr>
                            <td>ì£¼ì</td>
                            <td>
                                <p>
                                    ë¶ì°ê´ì­ì ë¶ì°ì§êµ¬ ëì°ë 120
                                </p>
                                <p>
                                    íë¹ë¹ë© 10ì¸µ
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>ìì´í¼</td>
                            <td>192.168.10.112</td>
                        </tr>
                        <tr>
                            <td>íìê°ìì¼</td>
                            <td>2023-01-01 13:06:14</td>
                        </tr>
                    </table>
                </article>
            </section>
        </div>
    </div>
</body>
</html>