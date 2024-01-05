<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con = DriverManager.getConnection(url, "root", "");
    con.setAutoCommit(true);
    con.createStatement().execute("USE webDB");

    // 从表单获取参数值
    String product_id = request.getParameter("product_id");
    String product_name = request.getParameter("product_name");
    int amount = Integer.parseInt(request.getParameter("amount"));
    String category = request.getParameter("category");
    int price = Integer.parseInt(request.getParameter("price"));
    
    // 将 category 的值转换为中文
    if (category.equals("s")) {
        category = "蒸餾酒";
    } else if (category.equals("b")) {
        category = "釀造酒";
    } else if (category.equals("c")) {
        category = "合成酒";
    }


    // 检查是否已存在相同的主键值
    String checkQuery = "SELECT COUNT(*) FROM product WHERE product_id = '" + product_id + "'";
    ResultSet resultSet = con.createStatement().executeQuery(checkQuery);
    resultSet.next();
    int count = resultSet.getInt(1);

    if (count == 0) {
        // 不存在相同的主键值，可以执行插入操作
        String insertQuery = "INSERT INTO product (product_id, product_name, amount, category, price) VALUES ('" + product_id + "', '" + product_name + "', " + amount + ", '" + category + "', " + price + ")";
        boolean no = con.createStatement().execute(insertQuery);
        if (!no) {
            out.println("新增成功");
        } else {
            out.println("新增失敗");
        }
    } else {
        // 主键值已存在，根据需要进行处理
        out.println("主键值已经存在，无法执行插入操作");
    }
    
    // 資料表查詢
    Statement statement = con.createStatement();
    ResultSet resultSet_re = statement.executeQuery("SELECT * FROM product");

    while (resultSet_re.next()) {
        // 取得資料行的值
        String productId = resultSet_re.getString("product_id");
        String productName = resultSet_re.getString("product_name");
        int  amount_int = Integer.parseInt(resultSet_re.getString("amount"));
        String category_str = resultSet_re.getString("category");
        int  price_int = Integer.parseInt(resultSet_re.getString("price"));
    
        if (product_name.equals(productName)) {
            amount_int = amount_int + amount;
            String sql = "UPDATE `product` SET `amount` = " + amount_int + " WHERE `product_id` = '" + productId + "'";
            int no=con.createStatement().executeUpdate(sql); //可回傳異動數
            if (no > 0){
            out.println("修改成功");
            }

            sql = "DELETE FROM `product` WHERE `product_id` = '" + product_id + "'";
        
            int rec = con.createStatement().executeUpdate(sql);
            if (rec>0)
                out.println("刪除成功");
            else
                out.println("刪除失敗");
        }
    }
    response.sendRedirect("addnew.jsp");
    con.close();
%>
</body>
</html>
