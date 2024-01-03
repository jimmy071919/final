<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>卡拉雞尾酒🍸</title>
    <link rel="stylesheet" href="assets/CSS/backend.css"> 
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
</head>
<body>
    <%@include file = "header.jsp" %>

    <%
        boolean foundNameB = false;

        if(cookies != null){
            for(int i = 0; i < cookies.length; i++){
                if(cookies[i].getName().equals("name")){
                    foundNameB = true;
                    break;
                }
            }
        }

        if (!foundNameB) {
            response.sendRedirect("login.jsp");
        }
    %>
    <form action="">
        姓名:<input type="text" name="name" >
        <br>
        地址:<input type="text" name="address" >
        <br>
        電話號碼:<input type="text" name="number" >
        <br>
        電子郵件:<input type="email" name="email" >

    </form>
    <%@include file = "footer.jsp" %>

</body>
</html>