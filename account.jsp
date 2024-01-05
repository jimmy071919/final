<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
  
  <%@include file = "cookies_verify.jsp" %>
  <!-- ------------------------------------------ -->

  <%
  // Step 1: 載入資料庫驅動程式 
  Class.forName("com.mysql.cj.jdbc.Driver");

  // Step 2: 建立資料庫連線
  String url = "jdbc:mysql://localhost/webDB?serverTimezone=UTC";
  Connection con = DriverManager.getConnection(url, "root", "");

  // Step 3: 選擇資料庫           
  con.createStatement().execute("USE webDB");
  Statement statement = con.createStatement();
  
  Cookie[] cookies_account = request.getCookies();
  String cookieValue = null;

    if (cookies_account != null) {
        for (Cookie cookie : cookies_account) {
            if (cookie.getName().equals("name")) {
                cookieValue = URLDecoder.decode(cookie.getValue(), "UTF-8");
                // Process cookieValue as needed
            }
        }
    }

  ResultSet resultSet = statement.executeQuery("SELECT * FROM member WHERE `member_id` =  "+ cookieValue);
  
      

  // 打印查询结果
  while (resultSet.next()) {
      String memberid = resultSet.getString("member_id");
      String username = resultSet.getString("username");
      String password = resultSet.getString("password");
      String birthday = resultSet.getString("birth");
      String email = resultSet.getString("email");
      String tel = resultSet.getString("tel");
  %>

  <!-- ------------------------------------------ -->

  <div class="member-info">
    <div class="member-in">
      <h2>會員資料</h2>  
        <div class="info">
          姓名:<%= username %><br><br>
          帳號:<%= memberid %> <br><br>
          生日:<%= birthday %><br><br>
          Email:<%= email %><br><br>
          電話 : <%= tel%><br><br>
        </div>
    </div>

    <%
      if (session.getAttribute("message") != null) {
        out.println("<div style='color: red'>");
        out.println(session.getAttribute("message"));
        out.println("</div>");
        session.removeAttribute("message");
    }
      %>

    <div class="profile">
      <h2>修改資料</h2>
      <form action="account_change.jsp">
        <label for="name">帳號名稱</label>
        <input type="text" name="memberid" id="name" placeholder="請輸入姓名">
        
        <label for="email">請輸入目前密碼</label>
        <input type="password"  name="password" id="password1" placeholder="請輸入目前密碼">
        
        <label for="phone">確認新密碼</label>
        <input type="password" name="confirm_password" id="password2" placeholder="再確認一次密碼">
        
        <button type="submit">保存</button>
      </form>
    </div>

  </div>
  <%
  }
  %>
    
  <%@include file = "footer.jsp" %>

</body>
</html>