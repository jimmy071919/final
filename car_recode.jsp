<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body>
    <%
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con = DriverManager.getConnection(url, "root", "");
    con.setAutoCommit(true);
    con.createStatement().execute("USE webDB");

    // 从表单获取参数值
    String id = request.getParameter("productcart");

    // 检查是否已存在相同的主键值
    Statement statement = con.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT * FROM product WHERE `product_id` = " + id);

    while (resultSet.next()) {
        // 如果存在，取得商品詳細資訊
        String productId = resultSet.getString("product_id");
        String productName = resultSet.getString("product_name");
        double price = resultSet.getDouble("price");
        String productDescribe = resultSet.getString("product_describe");
        int amount = resultSet.getInt("amount");

        amount = amount - 1;
        
        String sql = "UPDATE product SET amount = '" + amount + "' WHERE product_id = '" + id + "'";
        int no=con.createStatement().executeUpdate(sql); //可回傳異動數
    }

    List<String> productList = (List<String>) session.getAttribute("productList");
    
        // 如果 product 的 List 不存在，创建一个新的 List
        if (productList == null) {
            productList = new ArrayList<>();
        }
        
        // 将当前的 id 添加到 List 中
        productList.add(id);
    
        // 将 List 存储到 session 中
        session.setAttribute("productList", productList);

    response.sendRedirect("shop.jsp");

    


    con.close();
    %>
</body>
</html>
