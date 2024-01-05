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
    String member_id = request.getParameter("member_id");
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String birth = request.getParameter("birth");
    String tel = request.getParameter("tel");
    String gender = request.getParameter("gender");
    String password = request.getParameter("password");

    // 检查是否已存在相同的主键值
    String checkQuery = "SELECT COUNT(*) FROM member WHERE member_id = '" + member_id + "'";
    ResultSet resultSet = con.createStatement().executeQuery(checkQuery);
    resultSet.next();
    int count = resultSet.getInt(1);

    if (count == 0) {
        // 不存在相同的主键值，可以执行插入操作
        String insertQuery = "INSERT INTO member (member_id, username,password, email, tel, gender, birth) VALUES ('" + member_id + "', '" + username + "', '" + password + "', '" + email + "', '" + tel + "', '" + gender + "', '" + birth + "')";
        boolean no = con.createStatement().execute(insertQuery);
        if (!no) {
            out.println("新增成功");
            response.sendRedirect("register.jsp");
        } else {
            out.println("新增失敗");
        }
    } else {
        // 主键值已存在，根据需要进行处理
        response.sendRedirect("register.jsp");
        session.setAttribute("message", "帳號已存在");
    }

    con.close();
%>
</body>
</html>
