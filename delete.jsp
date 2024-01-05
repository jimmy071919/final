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
    <%@include file = "header.jsp" %>

    <form name="onshelf" method="post" action="" accept-charset="UTF-8">
        <%
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
            Connection con = DriverManager.getConnection(url, "root", "");
            //con.setAutoCommit(true);
            con.createStatement().execute("USE webDB");

            // 資料表查詢
            Statement statement = con.createStatement();
            ResultSet resultSet_re = statement.executeQuery("SELECT * FROM product");
    
            // 顯示表格
            out.println("<table border='1'>");
            out.println("<tr><th>Product ID</th><th>Product Name</th><th>Amount</th><th>Category</th><th>Price</th><th>delete</th></tr>");
            

            while (resultSet_re.next()) {
                // 取得資料行的值
                String productId = resultSet_re.getString("product_id");
                String productName = resultSet_re.getString("product_name");
                int amount = resultSet_re.getInt("amount");
                String category_str = resultSet_re.getString("category");
                int price = resultSet_re.getInt("price");
    
                out.println("<tr><td>" + productId + "</td><td>" + productName + "</td><td>" + amount + "</td><td>" + category_str + "</td><td>" + price + "</td><td><input type='checkbox' name='delProducts' value='" + productId + "'></td></tr>");

            }
    
            out.println("</table>");
        %>
        <input type="submit" name="delete" value="刪除產品" style="display: flex; align-items: center; margin-top: 20px; margin-bottom: 20px;">
    </form>
    
    <%
    String[] delProducts = request.getParameterValues("delProducts");
if (delProducts != null && delProducts.length > 0) {
    try {
        // Assuming only one product is selected for deletion
        String productId = delProducts[0];

        // Use a parameterized query to avoid SQL injection
        String sql = "DELETE FROM product WHERE product_id = ?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, productId);

        int del = pstmt.executeUpdate();

        if (del > 0) {
            out.println("選中的產品資料已成功刪除！");
        } else {
            out.println("刪除失敗，找不到對應的產品。");
        }
    } catch (SQLException e) {
        e.printStackTrace();
        out.println("刪除產品時發生錯誤：" + e.getMessage());
    }
} else {
    out.println("未選中任何產品，無法刪除資料。");
}

   

    // Step 6: 關閉資源        
    con.close();
%>

    
    <% //@include file = "cookies_backend_verify.jsp" %>
    <%@include file = "footer.jsp" %>

</body>
</html>