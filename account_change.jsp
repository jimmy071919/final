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
    String memberid = request.getParameter("memberid");
    String password = request.getParameter("password1");

    // 检查是否已存在相同的主键值
    String checkQuery_name = "SELECT COUNT(*) FROM member WHERE member_id = '" + memberid + "'";
    String checkQuery_password = "SELECT COUNT(*) FROM member WHERE password = '" + password + "'";
    ResultSet resultSet = con.createStatement().executeQuery(checkQuery_name);
    ResultSet resultSet2 = con.createStatement().executeQuery(checkQuery_password);


    int sum = 0;

    if (resultSet.next() && resultSet2.next()) {
        int count = resultSet.getInt(1);
        int count2 = resultSet2.getInt(1);
        sum = count + count2;
    }

    if (sum == 0) {
        response.sendRedirect("account.jsp");
        session.setAttribute("message", "未進行註冊");
        
    } 
    else if(sum == 1)
    {
        response.sendRedirect("account.jsp");
        session.setAttribute("message", "帳號或密碼錯誤");
    }
    else if (sum == 2)
    {
        if (memberid == null) {
        memberid = ""; // 或者其他默認值
        }
        String sql = "UPDATE member SET member_id = '" + memberid + "', password = '" + password + "'";
        int no=con.createStatement().executeUpdate(sql); //可回傳異動數
        if (no > 0){
        out.println("修改成功");
        }
    }

    con.close();
%>
</body>
</html>
