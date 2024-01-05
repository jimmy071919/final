<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/CSS/shop.css">
    <link rel="stylesheet" href="assets/CSS/header.css">
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <!-- <script src="assets/JS/shop2.js"></script> -->
    <title>卡拉雞尾酒🍸</title>
</head>
<body>
    <!-- header部分 -->
    <%@include file = "header.jsp" %>
<!-- ---------------------------------------------------------- -->
<!-- ------------------------------------------------------------------------- -->
    <div id="shop2">
        <div class="gotobuy">
            <img id="productionimg">
            <div id="productionname"></div><br>
            <div id="productionprice"></div>
            <div class="number">
                <input type="button" id="down" value="-"></input>
                <input type="text" id="num" value="0" ></input>
                <input type="button" id="up" value="+"></input>
            </div>
            <br><br>
            <form  method="get" class="function" action="car_recode.jsp">
                <input type="button" id="buy" value="直接購買">
                <input type="button" id="addcart" value="加入購物車">
            </form>
            <div id="productiondescription"></div>
        </div>
        <!-- ---------------------------------------------------------- -->
        <p><h1 id="discussionid" class="discussion">---討論版---</h1></p><br>

        <div class="writeboard">
            <input type="text" id="inputaccount" placeholder="輸入使用者名稱">
            <input type="text" id="inputtitle" placeholder="輸入主旨">
            <div class="inputword">
                <textarea name="" id="" cols="50" rows="10" placeholder="撰寫內容"></textarea>
            </div>
            <div class="send">
                <input  class="sub" type="submit" value="送出" width="10px">
                <input  class="res" type="reset" value="取消" width="10px">
            </div>
            <div class="others">
                <table>
                    <tr><td>名稱: 板橋jisoo</td></tr>
                    <tr><td>發布時間: 2023/01/03</td></tr>
                    <tr><td>內容 : 高檔，非常合我的味道</td></tr>
                    <tr><td>_________________________________________</td></tr>
                    <tr><td>名稱: aespa_winter</td></tr>
                    <tr><td>發布時間: 2023/01/01</td></tr>
                    <tr><td>內容 : 有點太spicy了，不太喜歡</td></tr>
                    <tr><td>_________________________________________</td></tr>
                    <tr><td>名稱: ive_Liz</td></tr>
                    <tr><td>發布時間: 2023/11/21</td></tr>
                    <tr><td>內容 : 很喜歡，一點都不kitsch</td></tr>
                </table>
            </div>
            <img id="showimg">
        
        <!-- --------------------------------------------------------- -->
        </div>

        <%@include file = "footer.jsp" %>
</body>
</html>