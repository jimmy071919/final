<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title> 
    <link rel="stylesheet" href="assets/CSS/header.css">
</head>
<body>
    <header>
        <div id="Top"></div>
        <div class="logo">
            <img src="image/logo.png" style="width:120px;height:150px" >
        </div> 
        <%
        Cookie cookies[] = request.getCookies();
        int count = 0;
        if (cookies != null)
        {
            count = cookies.length;
        }
        String name = "" ; 

        if (count > 0 )
        {
            for( int i=0 ; i < count ; i++)
            {
                if(cookies[i].getName().equals("name"))
                {   
                    name = cookies[i].getValue();
                    out.print("<a class='username'>");
                    out.print("歡迎" + name);
                    out.print("</a>");
                }
            }
            if (name.equals(""))
                {
                    out.print("<div class='login'><a href='./login.jsp'><img src='image/login.png' style='width:60px;height:60px'></a></div> ");
                }
        }
        else 
        {
            out.print("<div class='login'><a href='./login.jsp'><img src='image/login.png' style='width:60px;height:60px'></a></div> ");
        }
        %>
        <div class="accpic">
            <a href="./account.jsp"><img src="image/account.png" style="width:50px;height:50px"></a>
        </div>
        <div class="car">
            <a href="./car.jsp"><img src="image/shop.png" style="width:50px;height:50px" ></a>
        </div>`
    </header>
    <div class="backtotop">
        <a href="#Top" title="回到最上方">
            <img src="image/top.png">
        </a>
    </div>
        <nav>
            <a class="bar" href="./index.jsp">HOME</a>&emsp;
            <a class="bar" href="./shop.jsp">SHOP</a>&emsp;
            <a class="bar" href="./customized.jsp">CUSTOMIZED</a>&emsp;
            <a class="bar" href="./about.jsp">ABOUT US</a>


            
            <%
                Integer num_c_obj = (Integer) application.getAttribute("guestnum");
                int num_c = (num_c_obj != null) ? num_c_obj.intValue() : 0;
            %>

            <%

                if(session.isNew()) {
                    num_c++;
                    application.setAttribute("guestnum", num_c);
                }
            %>
            <div class="bar_s">
                <a class="backend" href="backend_login.jsp">後臺管理</a>
                <div class="num">你是第<%= num_c %>個拜訪網站的人</div>
            </div>
            


            

        </nav>
</body>
</html>