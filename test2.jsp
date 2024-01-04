<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
        // Step 1: 載入資料庫驅動程式 
        Class.forName("com.mysql.cj.jdbc.Driver");
    
        // Step 2: 建立資料庫連線
        String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con = DriverManager.getConnection(url, "root", "mysql123");
    
        con.setAutoCommit(true);
        // Step 3: 選擇資料庫           
        con.createStatement().execute("USE webDB");


        // 讀取表單內容
        /*
        String product_id = request.getParameter("product_id");
        String product_name = request.getParameter("product_name");
        int amount = Integer.parseInt(request.getParameter("amount")); 
        String category = request.getParameter("category");  
        int price = Integer.parseInt(request.getParameter("price"));*/

        // 將表單內容寫入資料庫
        String insertQuery = "INSERT INTO product (product_id, product_name,amount,category,price) VALUES ('s011','hi',12,'ˋ蒸餾酒',123)";
        try (PreparedStatement pstmt = con.prepareStatement(insertQuery)) {
        
            
            out.print("成功！");

             }catch (SQLException e) {
                        e.printStackTrace();
                        out.print("失敗哈哈");
                        // 處理例外
                    }finally {
                        // 關閉資料庫連接
                        if (con != null) {
                            try {
                                con.close();
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                        }
                    }
    %>

    
</body>
</html>