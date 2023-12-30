<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>卡拉雞尾酒🍸</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <!-- 加上外面的css檔案 -->
    <link rel="stylesheet" href="assets/CSS/shop.css">
    <link rel="stylesheet" href="assets/CSS/header.css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="assets/JS/shop.js"></script>
</head>
<body>
    <%@include file = "header.jsp" %>
<!-- -------------------------------------------------------------------- -->
    <article>
        <div class="header"></div>
        <div class="imgslider"><img src="image/winetitle.jpg" alt=""></div>
        <div class="contain"> 
            <h1 class="shoptitle" id="title1">蒸餾酒</h1>
            <div class="shoplist" id="list">
                <!-- 在shop.js中 -->
            </div>
            <!--  -->
            <h1 class="shoptitle" id="title2">釀造酒</h1>
            <div class="shoplist" id="list2">
                <!-- 在shop.js中 -->
            </div>
            <!--  -->
            <h1 class="shoptitle" id="title3">合成酒</h1>
            <div class="shoplist" id="list3">
                <!-- 在shop2.js中 -->
            </div>
            <!-- ----------------- -->
                
        </div>
    </article>

    <%@include file = "footer.jsp" %>
</body>
</html> 