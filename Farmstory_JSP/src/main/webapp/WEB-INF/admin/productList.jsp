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
    <style></style>
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
                    <li class="on"><a href="#">ìíê´ë¦¬</a></li>
                    <li><a href="#">ì£¼ë¬¸ê´ë¦¬</a></li>
                    <li><a href="#">íìê´ë¦¬</a></li>                    
                </ul>
            </aside>
            <section id="productList">
                <nav>
                    <h3>ìíëª©ë¡</h3>
                </nav>

                <article>

                    <table border="0">
                        <tr>
                            <th><input type="checkbox" name="all"/></th>
                            <th>ì¬ì§</th>
                            <th>ìíë²í¸</th>
                            <th>ìíëª</th>
                            <th>êµ¬ë¶</th>
                            <th>ê°ê²©</th>
                            <th>ì¬ê³ </th>
                            <th>ë±ë¡ì¼</th>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name=""/></td>
                            <td><img src="../images/sample_item1.jpg" class="thumb" alt="ìí1"></td>
                            <td>1011</td>
                            <td>ì¬ê³¼ 500g</td>
                            <td>ê³¼ì¼</td>
                            <td>4,000ì</td>
                            <td>100</td>
                            <td>2023-01-01</td>
                        </tr>
                    </table>

                    <p>
                        <a href="#" class="productDelete">ì íì­ì </a>
                        <a href="./productRegister.html" class="productRegister">ìíë±ë¡</a>
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
    </div>
    
</body>
</html>