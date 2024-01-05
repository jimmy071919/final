<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登入</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/header.css"> 
    <link rel="stylesheet" href="assets/CSS/acccar.css">
</head>
<body>
    <%@include file = "header.jsp" %>

    <div class="container">
        <h2>會員登入</h2>
        <form  action="cookies.jsp" method="post">
          <label for="username">帳號</label>
          <input type="text" id="username" name="username" required>
          
          <label for="password">密碼</label>
          <input type="password" id="password" name="password" required>
          
          <input type="submit" value="登入">
        </form>
        <p>還沒有帳號?<a href="register.jsp" class="push">點擊這裡註冊</a></p>
    </div>


    <%@include file = "footer.jsp" %>
</body>
</html>