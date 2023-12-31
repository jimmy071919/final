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
 
    <div class="container">
        
        <div class="button"> <a href="addnew.jsp">add</a> </div>
 
        <div  class="button">  <a href="modify.jsp"> 修改</a> </div>
   
        <div  class="button"> <a href="order.jsp">訂單 </a>  </div>
       
        <div  class="button"><a href="onshelf.jsp">上架</a> </div>
        
        <div  class="button"> <a href="discount.jsp">優惠</a> </div>

    </div>
    <%@include file = "footer.jsp" %>
</body>
</html>