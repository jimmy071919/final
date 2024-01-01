<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>卡拉雞尾酒🍸</title>
    <link rel="stylesheet" href="assets/CSS/discount.css"> 
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</head>
<body>
<%@include file = "header.jsp" %>
    <div class="title">
        <h1 >建立優惠券</h1>
        </div>

    <!-- 優惠券設定 -->
    <form method="post" action="">
        <div class="container">
            <div class="info">
                <h2>基本資訊</h2>
                <div class="info2">
                    優惠類型 <input type="radio" name="discount_type" value="discount" checked >賣場優惠券
                    <br>
                    優惠券名稱 <input type="text" name="discount_name" value=" " size="30" maxlength="30">
                    <br>
                    優惠代碼 <input type="text" name="discount_num" value=" " size="30" maxlength="30">
                </div>
            </div>
            <div class="discount_setup">
                <h2>折扣設定</h2>
                <div class="setup">
                    折扣額度限制
                    <select name="limit">
                        <option>折扣折數</option>
                        <option>折扣金額</option>
                    </select>
                    <input type="number" name="ntd" size="15" maxlength="10" placeholder="NT/折" min="0">
                    <br>
                    最低消費金額
                    <input type="number" name="money" size="15" maxlength="20" min="0" placeholder="NT">
                </div>
            </div>
            <div>
                <input type="submit" value="送出">
                <a href="backend.jsp" class="a">取消</a>
            </div>
        </div>
    </form>

        
    
<%@include file = "footer.jsp" %>
</body>
</html>