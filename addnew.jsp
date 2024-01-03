<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>卡拉雞尾酒🍸</title>
    <link rel="stylesheet" href="assets/CSS/addnew.css"> 
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
    <div class="title">
        <h1 >新增商品</h1>
        </div>
        <!-- 優惠券設定 -->
    <form method="post" action="">
        <div class="container">
            <div class="info">
                <h2>商品名稱</h2>
                <div class="info2">
                    類別 
                    <select name="product_type" id="">
                        <option value="1">蒸餾酒</option>
                        <option value="2">釀造酒</option>
                        <option value="3">合成酒</option>
                    </select>


                    <br>
                    商品代碼 <input type="number">
                    商品描述 <input type="text" name="product_name" value=" " size="30" maxlength="30">
                    <br>
                </div>
            </div>
            <div>
                <input type="submit" value="儲存">
                <a href="backend.jsp" class="a">取消</a>
            </div>
        </div>
    </form>


    <!-- <a href="footer.jsp"></a> -->
    <%@include file = "footer.jsp" %>

</body>
</html>