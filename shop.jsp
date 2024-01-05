<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
            <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/webDB?serverTimezone=UTC";
            Connection con = DriverManager.getConnection(url, "root", "");
            con.createStatement().execute("USE webDB");
            Statement statement = con.createStatement();
            
            for (int i = 1; i <= 5; i++) {
                ResultSet resultSet = statement.executeQuery("SELECT * FROM product WHERE `product_id` = " + i);
                while (resultSet.next()) {
                    String productId = resultSet.getString("product_id");
                    String productName = resultSet.getString("product_name");
                    double price = resultSet.getDouble("price");
                    String productDescribe = resultSet.getString("product_describe");
                    String imageUrl = resultSet.getString("image_path");

                    // 這裡使用了實際的資料庫字段
                    out.println("<div>");
                    out.println("<div class=\"production\"><img src=\"" + imageUrl + "\"></img>");
                    out.println("<div class=\"name\">" + productName + "</div>");
                    out.println("<p><a class=\"moreinfo\"  href=\"./shop2.2.jsp?id=" + productId + "\">查看詳情</a></div></p>");
                    out.println("</div>");
                }
            }
            %>
                
            </div>
            <!--  -->
            <h1 class="shoptitle" id="title2">釀造酒</h1>
            <div class="shoplist" id="list2">
                <%
                for (int i = 6; i <= 10; i++) {
                    ResultSet resultSet = statement.executeQuery("SELECT * FROM product WHERE `product_id` = " + i);
                    while (resultSet.next()) {
                        String productId = resultSet.getString("product_id");
                        String productName = resultSet.getString("product_name");
                        double price = resultSet.getDouble("price");
                        String productDescribe = resultSet.getString("product_describe");
                        String imageUrl = resultSet.getString("image_path");
    
                        // 這裡使用了實際的資料庫字段
                        out.println("<div>");
                        out.println("<div class=\"production\"><img src=\"" + imageUrl + "\"></img>");
                        out.println("<div class=\"name\">" + productName + "</div>");
                        out.println("<p><a class=\"moreinfo\"  href=\"./shop2.2.jsp?id=" + productId + "\">查看詳情</a></div></p>");
                        out.println("</div>");
                    }
                }
                %>
            </div>
            <!--  -->
            <h1 class="shoptitle" id="title3">合成酒</h1>
            <div class="shoplist" id="list3">
                <%
                for (int i = 11; i <= 16; i++) {
                    ResultSet resultSet = statement.executeQuery("SELECT * FROM product WHERE `product_id` = " + i);
                    while (resultSet.next()) {
                        String productId = resultSet.getString("product_id");
                        String productName = resultSet.getString("product_name");
                        double price = resultSet.getDouble("price");
                        String productDescribe = resultSet.getString("product_describe");
                        String imageUrl = resultSet.getString("image_path");
    
                        // 這裡使用了實際的資料庫字段
                        out.println("<div>");
                        out.println("<div class=\"production\"><img src=\"" + imageUrl + "\"></img>");
                        out.println("<div class=\"name\">" + productName + "</div>");
                        out.println("<p><a class=\"moreinfo\"  href=\"./shop2.2.jsp?id=" + productId + "\">查看詳情</a></div></p>");
                        out.println("</div>");
                    }
                }
                %>
            </div>
            <!-- ----------------- -->
                
        </div>
    </article>
    <%

    request.setCharacterEncoding("UTF-8");
    String[] selectedProductIds = request.getParameterValues("selectedProducts");
        if (selectedProductIds != null) {
            for (String productName : selectedProductIds) {
                out.println("已選中的產品：" + productName);
            }
        } else {
            out.println("未選擇任何產品。");
        }

    // Step 6: 關閉資源        
    con.close();

    %>
    
    <%@include file = "footer.jsp" %>
</body>
</html> 