<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員介面</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/header.css">
    <link rel="stylesheet" href="assets/CSS/acccar.css">
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

  <div class="member-info">
    <div class="member-in">
      <h2>會員資料<img src="image/haewon.jpg" class="haewon"></h2>  
        <div class="info">
          姓名:&nbsp;<br><br>
          帳號:&nbsp; <br><br>
          生日:&nbsp;<br><br>
          Email:&nbsp;<br><br>
        </div>
    </div>
  
    <div class="profile">
      <h2>修改資料</h2>
      <form action="">
        <label for="name">姓名</label>
        <input type="text" id="name" placeholder="請輸入入姓名">
        
        <label for="email">密碼</label>
        <input type="password" id="password1" placeholder="請輸入密碼">
        
        <label for="phone">確認新密碼</label>
        <input type="password" id="password2" placeholder="再確認一次密碼">
        
        <button type="submit">保存</button>
      </form>
    </div>

      
    <div class="purchase-history">
      <h2>購買紀錄</h2>
      <table>
        <thead>
          <tr>
            <th>訂單編號</th>
            <th>商品名稱</th>
            <th>購買日期</th>
            <th>金額</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>001</td>
            <td>liz酒</td>
            <td>2023-02-14</td>
            <td>$850</td>
          </tr>
          <tr>
            <td>002</td>
            <td>女巫酒</td>
            <td>2023-04-06</td>
            <td>$1245</td>
          </tr>
          <tr>
            <td>003</td>
            <td>內格羅尼</td>
            <td>2023-05-22</td>
            <td>$350</td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
    
  <%@include file = "footer.jsp" %>

</body>
</html>