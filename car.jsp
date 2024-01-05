<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/header.css"> 
    <link rel="stylesheet" href="assets/CSS/acccar.css">
</head>
<body>
    <%@include file="header.jsp" %>
    <%@include file="cookies_verify.jsp" %>
    <%@ page import="java.util.List" %>
    <%
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost/webDB?serverTimezone=UTC";
        Connection con = DriverManager.getConnection(url, "root", "");
        con.createStatement().execute("USE webDB");
        Statement statement = con.createStatement();

        int sum = 0;    
        int count_num = 0;
        
        // 从 session 中检索 List
        List<String> productList = (List<String>) session.getAttribute("productList");
    %>
    <article class='gocar'>
        <section class='carleft'>
            <div class='order'>
                <label>我的購物車</label>
            </div>
            <hr>
            <%
                // 在这里使用 productList，例如遍历或执行其他操作
                for (String i : productList) {
                    ResultSet resultSet = statement.executeQuery("SELECT * FROM product WHERE `product_id` = " + i);
                    while (resultSet.next()) {
                        String productId = resultSet.getString("product_id");
                        String productName = resultSet.getString("product_name");
                        double price = resultSet.getDouble("price");
                        String productDescribe = resultSet.getString("product_describe");
                        String imageUrl = resultSet.getString("image_path");

                        sum = sum + (int)price;
                        count_num ++;
            %>
            <div class='pdt'>
                <div class='inside'>
                    <div class='pdtname'>
                        <div class='pdtimg'>
                            <img src="<%=imageUrl%>" width='150px' height='150px'>
                        </div>
                        <div class='pdtspan'>
                            <div class='pdttt'>
                                <label><%=productName%></label>
                            </div>
                            <div>
                                <p><%=price%></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
        }
    }
    con.close();
%>

        </section>

        <section class='carright'>
            <div class='detail'>
                <label>訂單摘要</label>
                <p>
                    <span>共<%= count_num  %></span>
                    <span>件商品</span>
                </p>
                <p>
                    <span>總金額</span>
                    <span><%= sum %></span>
                    <span>元</span>
                </p>
                
            </div>
            <hr>
            <form action="fill_order.jsp">
                <input type="hidden" name="productcart" value=<%=sum%>>
                <input type="submit" name="sum" value="確認ok 送出">
            </form>
        </section>
    </article>

    <%@include file="footer.jsp" %>
</body>
</html>
