<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>註冊</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/header.css"> 
    <link rel="stylesheet" href="assets/CSS/acccar.css">
</head>
<body>

    <%@include file = "header.jsp" %>
    <div class="container">
        <h2>註冊</h2>
        <%
        if (session.getAttribute("message") != null) {
            out.println("<div style='color: red'>");
            out.println(session.getAttribute("message"));
            out.println("</div>");
            session.removeAttribute("message");
        }
    %>
        <form action="register_DB.jsp" method="post">
        <label for="member_id">帳號</label>
        <input type="text" id="member_id" name="member_id" required>

        <label for="username">姓名</label>
        <input type="text" id="username" name="username" required>

        <label for="email">電子郵件</label>
        <input type="email" id="email" name="email" required>

        <label for="tel">手機號碼</label>
        <input type="tel" id="tel" name="tel" maxlength="10" required>
        
        <label for="birth">生日</label>
        <input type="date" id="birth" name="birth" required>

        <label for="gender">性別</label>
        <select name="gender" id="">
            <option value="M">男</option>
            <option value="F">女</option>
        </select>

        <label for="username">輸入密碼</label>
        <input type="password" id="password" name="password" required>
        
        <label for="confirm-password">確認密碼</label>
        <input type="password" id="confirm-password" name="confirm-password" required>
          <%

            String password = request.getParameter("password");
            String confirm_password = request.getParameter("confirm-password");
            
            if (password != null && confirm_password != null ) {

                if (password.equals(confirm_password)) {
                    out.print("<div class= 'pw' style='color: green'>");
                    out.println("密碼正確");
                    response.sendRedirect("index.jsp");
                } else {
                    out.print("<div style='color: brown'>");
                    out.println("確認密碼與密碼不同");
                    out.print("</div>");
                }
            } else {
                out.println("請提供密碼和確認密碼");
            }
          
          %>
          
          <input type="submit" value="註冊">
        </form>
        <p>已有帳號?<a href="login.jsp" class="push">點擊這裡登入</a></p>
    </div>

    <%@include file = "footer.jsp" %> 
</body>
</html>