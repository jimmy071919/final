<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Step 0: import library --> 
<%@ page import = "java.sql.*" %> 
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body> 
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
    ResultSet resultSet = statement.executeQuery("SELECT * FROM product");

    // Step 5: 處理查詢結果
    out.println("<table border='1'>");
    out.println("<tr><th>Product ID</th><th>Product Name</th></tr>");

    while (resultSet.next()) {
        // 取得資料行的值
        String productId = resultSet.getString("product_id");
        String productName = resultSet.getString("product_name");
        String amount = resultSet.getString("amount");
        String category = resultSet.getString("category");
        String price = resultSet.getString("price");

        // 在此處進行適當的處理，例如輸出到控制台或其他操作
        out.println("<tr><td>" + productId + "</td><td>" + productName + "</td><td>"+amount+"</td><td>"+category+"</td><td>"+price+"</td></tr>");
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
    </body>
</html>
 