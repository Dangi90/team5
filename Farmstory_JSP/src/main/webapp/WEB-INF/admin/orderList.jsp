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
                $('#orderPopup').show();
            });

            $('#orderPopup .btnClose').click(function(){
                $('#orderPopup').hide();
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
                    <li class="on"><a href="#">ì£¼ë¬¸ê´ë¦¬</a></li>
                    <li><a href="#">íìê´ë¦¬</a></li>                    
                </ul>
            </aside>
            <section id="orderList">
                <nav>
                    <h3>ì£¼ë¬¸ëª©ë¡</h3>
                </nav>

                <article>

                    <table border="0">
                        <tr>
                            <th><input type="checkbox" name="all"/></th>
                            <th>ì£¼ë¬¸ë²í¸</th>
                            <th>ìíëª</th>
                            <th>íë§¤ê°ê²©</th>
                            <th>ìë</th>
                            <th>ë°°ì¡ë¹</th>
                            <th>í©ê³</th>
                            <th>ì£¼ë¬¸ì</th>
                            <th>ì£¼ë¬¸ì¼</th>
                            <th>íì¸</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name=""/></td>
                            <td>1001</td>
                            <td>ì¬ê³¼ 500g</td>                            
                            <td>4,000ì</td>
                            <td>2</td>
                            <td>3,000ì</td>
                            <td>11,000ì</td>
                            <td>ê¹ì ì </td>
                            <td>2023-01-01 13:06:14</td>
                            <td><a href="#" class="showPopup">[ìì¸íì¸]</a></td>
                        </tr>
                    </table>

                    <p>
                        <a href="#" class="orderDelete">ì íì­ì </a>                        
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

        <div id="orderPopup">
            <section>
                <nav>
                    <h1>ìì¸ì£¼ë¬¸ë´ì­</h1>
                    <button class="btnClose">ë«ê¸°</button>
                </nav>

                <article>  
                    <h3>ê¸°ë³¸ì ë³´</h3>
                    <table border="0">
                        <tr>
                            <td rowspan="7" class="thumb"><img src="../images//sample_item1.jpg" alt="ì¬ê³¼ 500g"></td>
                            <td>ìíë²í¸</td>
                            <td>1011</td>
                        </tr>
                        <tr>
                            <td>ìíëª</td>
                            <td>ì¬ê³¼ 500g</td>
                        </tr>
                        <tr>
                            <td>íë§¤ê°ê²©</td>
                            <td>4,000ì</td>
                        </tr>
                        <tr>
                            <td>ìë</td>
                            <td>2ê°</td>
                        </tr>
                        <tr>
                            <td>ë°°ì¡ë¹</td>
                            <td>3,000ì</td>
                        </tr>
                        <tr>
                            <td>í©ê³</td>
                            <td>11,000ì</td>
                        </tr>
                        <tr>
                            <td>ì£¼ë¬¸ì</td>
                            <td>íê¸¸ë</td>
                        </tr>                        
                    </table>

                    <h3>ë°°ì¡ì§ ì ë³´</h3>
                    <table border="0">
                        <tr>
                            <td>ë°ëë¶</td>
                            <td>íê¸¸ë</td>
                        </tr>
                        <tr>
                            <td>ë°°ì¡ì§</td>
                            <td>ë¶ì°ê´ì­ì ë¶ì°ì§êµ¬ ëì°ë 120 ë£¨ë¯¸ëì¤ 10ì¸µ</td>
                        </tr>
                    </table>
                </article>
            </section>
        </div>
    </div>
</body>
</html>