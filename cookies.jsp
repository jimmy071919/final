<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- 其他 head 內容... -->
    <script>
        // JavaScript 函數，用於在2秒後將頁面導向到指定的 URL
        function redirectToIndex() {
            setTimeout(function(){
                window.location.href = 'http://localhost:8080/final/index.jsp';
            }, 1000); // 2000 毫秒等於 2 秒
        }

        // 調用函數
        redirectToIndex();
    </script>
</head>
<body>

    <%
    Class.forName("com.mysql.cj.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con = DriverManager.getConnection(url, "root", "");
    con.setAutoCommit(true);
    con.createStatement().execute("USE webDB");

    // 从表单获取参数值
    String strname = request.getParameter("username");
    strname = URLEncoder.encode(strname, "UTF-8");
    String strpassword = request.getParameter("password");

    // 检查是否已存在相同的主键值
    String checkQuery_name = "SELECT COUNT(*) FROM member WHERE member_id = '" + strname + "'";
    String checkQuery_password = "SELECT COUNT(*) FROM member WHERE password = '" + strpassword + "'";
    ResultSet resultSet = con.createStatement().executeQuery(checkQuery_name);
    ResultSet resultSet2 = con.createStatement().executeQuery(checkQuery_password);


    int sum = 0;

    if (resultSet.next() && resultSet2.next()) {
        int count = resultSet.getInt(1);
        int count2 = resultSet2.getInt(1);
        sum = count + count2;
    }

    if (sum == 0) {
        response.sendRedirect("register.jsp");
        session.setAttribute("message", "未進行註冊");
        
    } 
    else if(sum == 1)
    {
        response.sendRedirect("register.jsp");
        session.setAttribute("message", "帳號或密碼錯誤");
    }
    else if (sum == 2)
    {
        if (strname == null) {
        strname = ""; // 或者其他默認值
        }

        strname = URLEncoder.encode(strname, "UTF-8"); // Cookie中文編碼

        Cookie nameCookie = new Cookie("name", strname);
        Cookie passwordCookie = new Cookie("password", strpassword);

        response.addCookie(nameCookie);
        response.addCookie(passwordCookie);
        }

    con.close();
%>
</body>
</html>
