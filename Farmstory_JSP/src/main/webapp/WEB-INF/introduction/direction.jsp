<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>íì¤í ë¦¬::ì°¾ìì¤ìëê¸¸</title>
    <link rel="stylesheet" href="../css/style.css"/>
</head>
<body>
    <div id="container">
        <header>
            <a href="../index.jsp" class="logo"><img src="../images/logo.png" alt="ë¡ê³ "/></a>
             <p>
                <a href="../index.jsp">HOME |</a>
            	<a href="/Farmstory_JSP/member/login.do">ë¡ê·¸ì¸ |</a>
                <a href="/Farmstory_JSP/member/register.do">íìê°ì |</a>
                <a href="./admin/index.do">ê´ë¦¬ì |</a>
                <a href="#">ê³ ê°ì¼í°</a>
            </p>
            <img src="../images/head_txt_img.png" alt="3ë§ì ì´ì ë¬´ë£ë°°ì¡"/>
            
            <ul class="gnb">
                <li><a href="/Farmstory_JSP/introduction/hello.do">íì¤í ë¦¬ìê°</a></li>
                <li><a href="/Farmstory_JSP/market/list.do"><img src="../images/head_menu_badge.png" alt="30%"/>ì¥ë³´ê¸°</a></li>
                <li><a href="/Farmstory_JSP/croptalk/story.do">ëìë¬¼ì´ì¼ê¸°</a></li>
                <li><a href="/Farmstory_JSP/event/info.do">ì´ë²¤í¸</a></li>
                <li><a href="/Farmstory_JSP/community/notice.do">ì»¤ë®¤ëí°</a></li>
           	</ul>
        </header>

        <div id="sub">
            <div><img src="../images/sub_top_tit1.png" alt="INTRODUCTION"></div>
            <section class="introduction">
                <aside>
                    <img src="../images/sub_aside_cate1_tit.png" alt="íì¤í ë¦¬ ìê°"/>

                    <ul class="lnb">
                        <li><a href="./hello.do">ì¸ì¬ë§</a></li>
                        <li class="on"><a href="./direction.do">ì°¾ìì¤ìë ê¸¸</a></li>
                    </ul>

                </aside>
                <article>
                    <nav>
                        <img src="../images/sub_nav_tit_cate1_tit2.png" alt="ì°¾ìì¤ìëê¸¸"/>
                        <p>
                            HOME > íì¤í ë¦¬ìê° > <em>ì°¾ìì¤ìëê¸¸</em>
                        </p>
                    </nav>

                    <!-- ë´ì© ìì -->
                    <p>
                        <strong>íì¤í ë¦¬</strong><br>
                        ì£¼ì: ê²½ê¸°ë ì´ì²ì ìíë¤êµ¬ ì ëë¤ë 123<br>
                        ì í: 01-234-5678<br>
                    </p>
                    <p>
                        <strong>ì°¾ìì¤ìëê¸¸</strong><br>
                        <!-- * ì¹´ì¹´ì¤ë§µ - ì§ëí¼ê°ê¸° -->
                        <!-- 1. ì§ë ë¸ë -->
                        <div id="daumRoughmapContainer1668214668575" class="root_daum_roughmap root_daum_roughmap_landing"></div>
                    </p>
                    <!--
                        2. ì¤ì¹ ì¤í¬ë¦½í¸
                        * ì§ë í¼ê°ê¸° ìë¹ì¤ë¥¼ 2ê° ì´ì ë£ì ê²½ì°, ì¤ì¹ ì¤í¬ë¦½í¸ë íëë§ ì½ìí©ëë¤.
                    -->
                    <script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>

                    <!-- 3. ì¤í ì¤í¬ë¦½í¸ -->
                    <script charset="UTF-8">
                        new daum.roughmap.Lander({
                            "timestamp" : "1668214668575",
                            "key" : "2ci7x",
                            "mapWidth" : "760",
                            "mapHeight" : "400"
                        }).render();
                    </script>
                    <!-- ë´ì© ë -->

                </article>
            </section>

        </div>
        
        
        <footer>
            <img src="../images/footer_logo.png" alt="ë¡ê³ "/>
            <p>
                (ì£¼)íì¤í ë¦¬ / ì¬ììë±ë¡ë²í¸ 123-45-67890 / íµì íë§¤ìì ê³  ì  2013-íì¤í ë¦¬êµ¬-123í¸ / ë²¤ì²ê¸°ìíì¸ ìì¸ì§ë°©ì¤ìê¸°ìì²­ ì  012345678-9-01234í¸<br />
                ë±ë¡ë²í¸ íì¤í ë¦¬01234 (2013.04.01) / ë°íì¸ : íê¸¸ë<br />
                ëí : íê¸¸ë / ì´ë©ì¼ : email@mail.mail / ì í : 01) 234-5678 / ê²½ê¸°ë ì±ë¨ì ìíë¤êµ¬ ì ëë¤ë 345<br />
                <em>Copyright(C)íê¸¸ë All rights reserved.</em>
            </p>
        </footer>
    </div>    
</body>
</html>