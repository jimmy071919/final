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
                if(cookies[i].getName().equals("name_b")){
                    foundNameB = true;
                    break;
                }
            }
        }

        if (!foundNameB) {
            response.sendRedirect("backend_login.jsp");
        }
    %>
    <div class="container">
        <div class="button1" > <a href="addnew.jsp" target="_blank" name="tab"> 新增</a> </div>
        <div  class="button2"> <a href="modify.jsp" target="_blank"  name="tab"> 修改</a> </div>
   
        <div  class="button3"> <a href="order.jsp"  target="_blank" name="tab">訂單 </a>  </div>
       
        <div  class="button4"><a href="onshelf.jsp" target="_blank" name="tab">上架</a> </div>
        
        <div  class="button5"> <a href="discount.jsp" target="_blank" name="tab">優惠</a> </div>

    </div>
    <%@include file = "footer.jsp" %>
</body>
</html>