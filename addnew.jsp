<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> 
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
    <div class="title">
        <h1 >新增商品</h1>
        </div>
    <div class="container1">
            <div class="info">
                <h2>商品名稱</h2>
                <!-- 上傳圖片 -->
                <Form class="picture">
                    <div>
                        <input type="file" id="image_uploads" name="image_uploads" accept=".jpg, .jpeg, .png"   style="position:absolute;height:25px;width:200px;">
                    </div>
                    <br>
                    <div> </div>
                </Form>
            
                <!-- 新增商品 -->
                <form method="post" action="addDB.jsp">
                <div class="info2">
                    類別 
                    <select name="category" id="">
                        <option value="s">蒸餾酒</option>
                        <option value="b">釀造酒</option>
                        <option value="c">合成酒</option>
                    </select>
                    <br>
                    商品代碼 <input type="text"name="product_id"   size="30" maxlength="5">
                    <br>
                    商品名稱 <input type="text" name="product_name" size="30" maxlength="10">
                    數量 <input type="number" name="amount" min="1" placeholder="個" style="width: 5em;">
                    <br>
                    價錢 <input type="number" name="price" size="15" maxlength="20" min="1" placeholder="NT">
                    <br>
                    商品描述 
                    <br>
                    <textarea  name="product_description" rows="20" cols="100" placeholder="請輸入商品描述" ></textarea>
                         
                    </div>
            </div>
            <div>
                <input type="submit" value="儲存">
                <a href="backend.jsp" class="a">取消</a>
            </div>
        </form>
    </div>
    
    <br>
    <!-- <a href="footer.jsp"></a> -->
    <%@include file = "cookies_backend_verify.jsp" %>
    <%@include file = "footer.jsp" %>

</body>
</html>