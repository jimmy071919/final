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
        <form>
          <label for="username">帳號</label>
          <input type="text" id="username" name="username" required>
          
          <label for="confirm-password">確認密碼</label>
          <input type="password" id="confirm-password" name="confirm-password" required>
          
          <input type="submit" value="註冊">
        </form>
        <p>已有帳號?<a href="login.jsp" class="push">點擊這裡登入</a></p>
    </div>

    <footer>
        Copyright
        <sup>©</sup>
        2023 by 卡拉雞尾酒🍸
    </footer>  
</body>
</html>