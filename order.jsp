<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>卡拉雞尾酒🍸</title>
    <link rel="stylesheet" href="assets/CSS/backend.css"> 
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
</head>
<body>
    <%@include file="header.jsp" %>

    <%@include file="cookies_backend_verify.jsp" %>

    <h1 class="order">訂單管理</h1>

    <%
    try {
        // Step 1: 載入資料庫驅動程式 
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Step 2: 建立資料庫連線
        String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con = DriverManager.getConnection(url, "root", "");

        // Step 3: 選擇資料庫           
        con.createStatement().execute("USE webDB");

        // Step 4: 執行 SQL 指令

        // 資料表查詢
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM order_form");

        // Step 5: 處理查詢結果
        out.println("<table border='1' class='order_form'>");
        out.println("<tr><th>訂單代碼</th><th>商品編號</th><th>會員ID</th><th>總金額</th><th>數量</th><th>付款方式</th><th>收件者姓名</th><th>收件地址</th><th>收件者電話號碼</th></tr>");

        while (resultSet.next()) {
            // 取得資料行的值
            String order_id = resultSet.getString("order_id");
            String product_id = resultSet.getString("product_id");
            String member_id = resultSet.getString("member_id");
            String price = resultSet.getString("price");
            String quan = resultSet.getString("quan");
            String pay_way = resultSet.getString("pay_way");
            String receiver_name = resultSet.getString("receiver_name");
            String receiver_address = resultSet.getString("receiver_address");
            String receiver_tel = resultSet.getString("receiver_tel");

            // 在此處進行適當的處理，例如輸出到控制台或其他操作
            out.println("<tr class='order_content' ><td>" + order_id + "</td><td>" + product_id + "</td><td>" + member_id + "</td><td>" + price + "</td><td>" + quan + "</td><td>" + pay_way + "</td><td>" + receiver_name + "</td><td>" + receiver_address + "</td><td>" + receiver_tel + "</td></tr>");
        }
        out.println("</table>");

        // Step 6: 關閉資源        
        resultSet.close();
        statement.close();
        con.close();
    } catch (SQLException | ClassNotFoundException e) {
        e.printStackTrace();
    }
    %>     
    
    <%@include file="footer.jsp" %>

</body>
</html>
