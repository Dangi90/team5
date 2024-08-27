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
            <section id="productRegister">
                <nav>
                    <h3>ìíë±ë¡</h3>
                </nav>

                <article>
                    <form action="#" method="post">
                        <table border="0">
                            <tr>
                                <td>ìíëª</td>
                                <td><input type="text" name="productName"/></td>
                            </tr>
                            <tr>
                                <td>êµ¬ë¶</td>
                                <td>
                                    <select name="type">
                                        <option>êµ¬ë¶</option>
                                        <option>ê³¼ì¼</option>
                                        <option>ì¼ì±</option>
                                        <option>ê³¡ë¥</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>ê°ê²©</td>
                                <td><input type="text" name="price"/></td>
                            </tr>
                            <tr>
                                <td>ë°°ì¡ë¹</td>
                                <td>
                                    <label><input type="radio" name="delivery">2,000ì</label>                                    
                                    <label><input type="radio" name="delivery">3,000ì</label>
                                    <label><input type="radio" name="delivery">5,000ì</label>
                                    <label><input type="radio" name="delivery">ë¬´ë£</label>
                                </td>
                            </tr>
                            <tr>
                                <td>ì¬ê³ </td>
                                <td><input type="text" name="stock"/></td>
                            </tr>
                            <tr>
                                <td>ìíì´ë¯¸ì§</td>
                                <td>
                                    <p>
                                        <span>ìíëª©ë¡ ì´ë¯¸ì§(ì½ 120 x 120)</span>
                                        <input type="file" name="thumb120"/>
                                    </p>
                                    <p>
                                        <span>ê¸°ë³¸ì ë³´ ì´ë¯¸ì§(ì½ 240 x 240)</span>
                                        <input type="file" name="thumb240"/>
                                    </p>
                                    <p>
                                        <span>ìíì¤ëª ì´ë¯¸ì§(ì½ 750 x Auto)</span>
                                        <input type="file" name="thumb750"/>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td>ê¸°í</td>
                                <td>
                                    <textarea name="etc"></textarea>
                                </td>
                            </tr>
                        </table>

                        <p>
                            <a href="../productList.html" class="btnCancel">ì·¨ì</a>
                            <input type="submit" value="ìíë±ë¡"/>
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