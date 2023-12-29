<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customized🍸</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/header.css"> 
    <link rel="stylesheet" href="assets/CSS/customized.css"> 
</head>
<body>
    <%@include file = "header.jsp" %>

    <article class="customized">
        <section class="cust">
            <div class="custname">
                <h1>CUSTOMIZED</h1>
            </div>
        </section>
        <div class="custpt">
            <img src="image/customized_2.jpg" style="width: 1300px;height: 800px">
        </div>
        <div class="six">
            <h1>六大基底酒</h1>
        </div>
        <div class="wine">
            <div class="item">
                <a href="./te.html" class="te">
                    <img src="image/tequila.jpg">
                    <div class="text">
                    瀏覽更多
                    </div>
                </a>
                <div class="winename">
                    龍舌蘭 Tequila
                </div>
            </div>
            <div class="item">
                <a href="./vod.html" class="vod">
                    <img src="image/vodka.jpg">
                    <div class="votext">
                    瀏覽更多
                    </div>
                </a>
                <div class="winename">
                    伏特加 Vodka
                </div>
            </div>
            <div class="item">
                <a href="./gin.html" class="gin">
                    <img src="image/gin.jpg">
                    <div class="gintext">
                        瀏覽更多
                    </div>
                </a>
                <div class="winename">
                    琴酒 Gin
                </div>
            </div>
            <div class="item">
                <a href="./bran.html" class="bran">
                    <img src="image/brandy.jpg">
                    <div class="brantext">
                        瀏覽更多
                    </div>
                </a>
                <div class="winename">
                    白蘭地 Brandy
                </div>
            </div>
            <div class="item">
                <a href="./whisk.html" class="whisk">
                    <img src="image/whisky.jpg">
                    <div class="whistext">
                        瀏覽更多
                    </div>
                </a>
                <div class="winename">
                    威士忌 Whisky
                </div>
            </div>
            <div class="item">
                <a href="./rum.html" class="rum">
                    <img src="image/rum.jpg">
                    <div class="rumtext">
                        瀏覽更多
                    </div>
                </a>
                <div class="winename">
                    蘭姆酒 Rum
                </div>
            </div>
        </div>
    </article>

    <footer>
        Copyright
        <sup>©</sup>
        2023 by 卡拉雞尾酒🍸
    </footer>
</body>
</html>