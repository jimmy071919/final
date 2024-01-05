<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page import="java.util.regex.Pattern" %>
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
    <script src="assets/JS/shop2.js"></script>
    <title>卡拉雞尾酒🍸</title>
</head>
<body>
    <!-- header部分 -->
    <%@include file="header.jsp" %>
    <!-- ---------------------------------------------------------- -->
    <%
    try {
        // Step 1: 載入資料庫驅動程式 
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Step 2: 建立資料庫連線
        String url = "jdbc:mysql://localhost/webDB?serverTimezone=UTC";
        Connection con = DriverManager.getConnection(url, "root", "");

        // Step 3: 選擇資料庫           
        con.createStatement().execute("USE webDB");
        Statement statement = con.createStatement();

        // 獲取 URL 中的參數值
        String idParameter = request.getQueryString();

        // 使用正規表達式提取數字部分
        Pattern pattern = Pattern.compile("\\d+");
        Matcher matcher = pattern.matcher(idParameter);
    
        // 如果找到數字，將其存儲在 id 變數中
        String id = "";
        if (matcher.find()) {
            id = matcher.group();
        }
        
        //out.println("id = " + id);

        ResultSet resultSet = statement.executeQuery("SELECT * FROM product WHERE `product_id` =  "+ id);

        // 打印查询结果
        while (resultSet.next()) {
            String productId = resultSet.getString("product_id");
            String productName = resultSet.getString("product_name");
            double price = resultSet.getDouble("price");
            String productdescribe = resultSet.getString("product_describe");
            int  amount = Integer.parseInt(resultSet.getString("amount"));
            String imageUrl = resultSet.getString("image_path");
            
            
    %>
    <!-- ------------------------------------------------------------------------- -->
    <div id="shop2">
        <div class="gotobuy">
            <img id="productionimg" src="<%=imageUrl%>">
            <div id="productionname"><%=productName%></div><br>
            <div id="productionprice">價格 : <%=price%></div>
            <div id="productionamount">庫存 : <%=amount%></div>
        
            <br><br>
            <form method="get" class="function" action="car_recode.jsp">
                <input type="hidden" name="productcart" value=<%=id%>>
                <input type="button" name="addcart" id="addcart" value="加入購物車" onclick="submitForm()">
            </form>
            
            <script>
                function submitForm() {
                    document.forms[0].submit();
                }
            </script>

            <div id="productiondescription">
                <%= productdescribe %>
            </div>
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
                <input class="sub" type="submit" value="送出" width="10px">
                <input class="res" type="reset" value="取消" width="10px">
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
        </div>
        <!-- --------------------------------------------------------- -->
        <% 
        }
        // 關閉連接
        resultSet.close();
        statement.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>

    <%@include file="footer.jsp" %>
</body>
</html>
