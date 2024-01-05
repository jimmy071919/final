<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>卡拉雞尾酒🍸</title>
    <link rel="stylesheet" href="assets/CSS/backend.css"> 
    <link rel="stylesheet" href="assets/CSS/fill_order.css">
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
</head>
<body>
    <%@include file = "header.jsp" %>

    <%@include file = "cookies_verify.jsp" %>

    <div class="order">
        <p>寄件資料</p>
        <form action=" order_build.jsp ">
            姓名:<input type="text" name="name" >
            <br>
            地址:<input type="text" name="address" >
            <br>
            電話號碼:<input type="text" name="number" >
            <br>
            電子郵件:<input type="email" name="email" >
            <br>
            <input type="submit" value="送出">
            <input type="reset" value="重填">
        </form>
    </div>
    <%@include file = "footer.jsp" %>

</body>
</html>