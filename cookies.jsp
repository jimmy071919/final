<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
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
    String strname = request.getParameter("username");
    String strpassword = request.getParameter("password");

    // 檢查使用者名稱是否為 null，如果是，給予一個默認值
    if (strname == null) {
        strname = ""; // 或者其他默認值
    }

    strname = URLEncoder.encode(strname, "UTF-8"); // Cookie中文編碼

    Cookie nameCookie = new Cookie("name", strname);
    Cookie passwordCookie = new Cookie("password", strpassword);

    response.addCookie(nameCookie);
    response.addCookie(passwordCookie);
    %>

    <!-- 其他 body 內容... -->
</body>
</html>
