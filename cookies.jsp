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
    Connection con = DriverManager.getConnection(url, "root", "mysql123");
    con.setAutoCommit(true);
    con.createStatement().execute("USE webDB");

    // 使用 PreparedStatement 防止 SQL 注入
    String checkQuery_name = "SELECT COUNT(*) FROM member WHERE member_id = ?";
    String checkQuery_password = "SELECT COUNT(*) FROM member WHERE password = ?";
    
    try (PreparedStatement pstmt_name = con.prepareStatement(checkQuery_name);
         PreparedStatement pstmt_password = con.prepareStatement(checkQuery_password)) {

        // 从表单获取参数值
        String strname = request.getParameter("member_id");
        String strpassword = request.getParameter("password");

        // 设置 PreparedStatement 参数
        pstmt_name.setString(1, strname);
        pstmt_password.setString(1, strpassword);

        // 执行查询
        ResultSet resultSet_name = pstmt_name.executeQuery();
        ResultSet resultSet_password = pstmt_password.executeQuery();

        int count_name = 0;
        int count_password = 0;

        if (resultSet_name.next() && resultSet_password.next()) {
            count_name = resultSet_name.getInt(1);
            count_password = resultSet_password.getInt(1);
        }

        int sum = count_name + count_password;

        if (sum == 0) {
            response.sendRedirect("register.jsp");
            session.setAttribute("message", "未進行註冊");
        } else if (sum == 1) {
            response.sendRedirect("register.jsp");
            session.setAttribute("message", "帳號或密碼錯誤");
        } else if (sum == 2) {
            if (strname == null) {
                strname = ""; // 或者其他默認值
            }

            strname = URLEncoder.encode(strname, "UTF-8"); // Cookie中文編碼

            Cookie nameCookie = new Cookie("name", strname);
            Cookie passwordCookie = new Cookie("password", strpassword);

            response.addCookie(nameCookie);
            response.addCookie(passwordCookie);
        }
    } catch (SQLException e) {
        e.printStackTrace(); // Handle SQLException appropriately in a production environment
    } finally {
        con.close();
    }
%>
</body>
</html>
