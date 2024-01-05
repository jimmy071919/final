<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
    <%@include file = "header.jsp" %>

    <form name="onshelf" method="post" action="shop.jsp" accept-charset="UTF-8">
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
            Connection con = DriverManager.getConnection(url, "root", "mysql123");
            con.setAutoCommit(true);
            con.createStatement().execute("USE webDB");

            // 資料表查詢
            Statement statement = con.createStatement();
            ResultSet resultSet_re = statement.executeQuery("SELECT * FROM product");
    
            // 顯示表格標頭
            out.println("<table border='1'>");
            out.println("<tr><th>Product ID</th><th>Product Name</th><th>Amount</th><th>Category</th><th>Price</th><th>Select</th></tr>");
            
            //List<String> selectedProductNames = new ArrayList<>();

            while (resultSet_re.next()) {
                // 取得資料行的值
                String productId = resultSet_re.getString("product_id");
                String productName = resultSet_re.getString("product_name");
                int amount = resultSet_re.getInt("amount");
                String category_str = resultSet_re.getString("category");
                int price = resultSet_re.getInt("price");
    
                // 在此處進行適當的處理，例如輸出到控制台或其他操作
                out.println("<tr><td>" + productId + "</td><td>" + productName + "</td><td>" + amount + "</td><td>" + category_str + "</td><td>" + price + "</td><td><input type='checkbox' name='selectedProducts' value='" + productName + "'></td></tr>");
                //selectedProductNames.add(productName);
            }
    
            out.println("</table>");
        %>
        <input type="submit" name="submit" value="更新上架產品" style="display: flex; align-items: center; margin-top: 20px;  margin-bottom: 20px;" >
    </form>

    
    <%@include file = "cookies_backend_verify.jsp" %>
    <%@include file = "footer.jsp" %>

</body>
</html>