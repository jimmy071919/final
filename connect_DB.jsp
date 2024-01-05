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

} catch (SQLException | ClassNotFoundException e) {
    e.printStackTrace();
}

%>      
    </body>
</html>
 