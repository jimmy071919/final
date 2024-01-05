<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>卡拉雞尾酒🍸</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/index.css">
    <!-- <link rel="stylesheet" href="assets/CSS/header.css">  -->
    <script src="assets/JS/index.js"></script>
</head>
<body>
    <%@include file = "header.jsp" %>
    <%
    // Step 1: 載入資料庫驅動程式 
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Step 2: 建立資料庫連線
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con = DriverManager.getConnection(url, "root", "mysql123");

    // Step 3: 選擇資料庫        
    con.setAutoCommit(true);  
    con.createStatement().execute("USE webDB");
    Statement statement = con.createStatement();

   //ResultSet resultSet = statement.executeQuery("SELECT *,  product_name, price, product_describe FROM product WHERE product_id in (2,3,6,8,10,12,13,14)");

    //String productname = request.getParameter("product_name");
   // int productPrice = Integer.parseInt(request.getParameter("price"));
    //String description = resultSet.getString("product_describe");
/*
        String productId = resultSet.getString("product_Id");
        String productName = resultSet.getString("product_name");
        int productPrice = resultSet.getInt("price");
        String description = resultSet.getString("product_describe");*/
        %>

        <div class="slide_container">
            <div class="carousel">
              <img class="slide" src="image/wine1.jpg" alt="Image 1">
              <img class="slide" src="image/wine2.jpg" alt="Image 2">
              <img class="slide" src="image/wine3.jpg" alt="Image 3">
              <img class="slide" src="image/wine4.jpg" alt="Image 4">
            </div>
            <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
            <a class="next" onclick="changeSlide(1)">&#10095;</a>
          </div>
        
          
        </div>
        <div class="DB">
            <div class="container">
                <div class="button">
                    <input type="radio" name="tab" value="0" title="Best Seller" checked>
                    <input type="radio" name="tab" value="1" title="New Products">
                </div>
            </div>
            <div id="BestSeller" class="Products">
                <!-- 熱銷品項 -->
                <div class="BestPic">
                    <!-- 熱銷一 -->
                    <%
                        ResultSet resultSet = statement.executeQuery("SELECT *,  product_name, price, product_describe,image_path FROM product WHERE product_id = 14 ");
                        if (resultSet.next()) {
                        String productId = resultSet.getString("product_Id");
                        String productName = resultSet.getString("product_name");
                        int productPrice = resultSet.getInt("price");
                        String description = resultSet.getString("product_describe");
                        String imageUrl = resultSet.getString("image_path");
                    %>
                    <div class="BestWineBlock">
                        <img class="BasePic" src="<%=imageUrl%>" alt="">
                        <div class="BestText">龍舌蘭</div>
                        <div class="QuickView">
                    <!-- 商品簡介 -->
                    <button class="btn" data-introduce="introduce1" >快速瀏覽</button>
                        <div id="introduce1" class="introduce">
                            <div class="IntroContent">
                                <div class="content">
                                    <span id='close' class="close">&times;</span>
                                    <img class="IntroPic" src="<%=imageUrl%>" >
                                    <div class="IntroText">
                                        <div class="title">
                                            <h1>【<%=productName%>】</h1>
                                        </div>
                                        <div class="price" >
                                            <h2>$<%=productPrice%></h2>
                                        </div>
                                        <div class="con2">
                                            <h4>【簡介】</h4>
                                            <p>
                                                <%=description%>
                                            </p>
                                            <h4>【口感】</h4>
                                            <p>
                                                口感上來說，龍舌蘭富含草本清香，
                                                年輕的龍舌蘭有柑橘、咖啡的香氣，
                                                陳年後的龍舌蘭則口感更為溫潤，
                                                有與威士忌相似的木桶風味。
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                                 } 
                                %>
                     </div>
                    </div>
                    <!-- 熱銷二 -->
                    <%
                    ResultSet resultSet2 = statement.executeQuery("SELECT *,  product_name, price, product_describe,image_path FROM product WHERE product_id = 12 ");
                    if (resultSet2.next()) {
                    String productId2 = resultSet2.getString("product_Id");
                    String productName2 = resultSet2.getString("product_name");
                    int productPrice2 = resultSet2.getInt("price");
                    String description2 = resultSet2.getString("product_describe");
                    String imageUrl2 = resultSet2.getString("image_path");
                    %>
                    <div class="BestWineBlock">
                        <img class="BasePic" src="<%=imageUrl2%>" alt="">
                        <div class="BestText">伏特加</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce2">快速瀏覽</button>
                            <div id="introduce2" class="introduce" style="display: none;">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close' class="close">&times;</span>
                                        <img class="IntroPic" src="<%=imageUrl2%>" >
                                        <div class="IntroText">
                                            <div class="title">
                                                <h1>【<%=productName2%>】</h1>
                                            </div>
                                            <div class="price" >
                                                <h2>$<%=productPrice2%></h2>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    <%=description2%>
                                                </p>
                                                <h4>【口感】</h4>
                                                <p>
                                                    一瓶口感像水一樣的伏特加，那可是高品質的酒沒錯哦！
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        %>
                    <!-- 熱銷三 -->
                    <%
                        ResultSet resultSet3 = statement.executeQuery("SELECT *, product_name, price, product_describe,image_path FROM product WHERE product_id = 13 ");
                        if (resultSet3.next()) {
                            String productId3 = resultSet3.getString("product_Id");
                            String productName3 = resultSet3.getString("product_name");
                            int productPrice3 = resultSet3.getInt("price");
                            String description3 = resultSet3.getString("product_describe");
                            String imageUrl3 = resultSet3.getString("image_path");
                    %>
                    <div class="BestWineBlock">
                        <img class="BasePic" src="<%=imageUrl3%>" alt="">
                        <div class="BestText">琴酒</div>
                        <div class="QuickView">
                            <button  class="btn" data-introduce="introduce3">快速瀏覽</button>
                            <div id="introduce3" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic" src="<%=imageUrl3%>" >
                                        <div class="IntroText">
                                            <div class="title">
                                                <h1>【<%=productName3%>】</h1>
                                            </div>
                                            <div class="price" >
                                                <h2>$<%=productPrice3%></h2>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                    <p>
                                                        <%=description3%>
                                                    </p>
                                                <h4>【氣味】</h4>
                                                <p>
                                                    琴酒氣味如同香水般擁有前調（Top Notes）、
                                                    中調（Heart Notes）、後調（Base Notes）；
                                                    前調大多是清新柑橘氣味，中調有著花果香氣，
                                                    後調則是辛香料、植物根部、木質感或麝香。
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <!-- 熱銷四 -->
                    <%
                        ResultSet resultSet4 = statement.executeQuery("SELECT *, product_name, price, product_describe,image_path FROM product WHERE product_id = 10 ");
                        if (resultSet4.next()) {
                            String productId4 = resultSet4.getString("product_Id");
                            String productName4 = resultSet4.getString("product_name");
                            int productPrice4 = resultSet4.getInt("price");
                            String description4 = resultSet4.getString("product_describe");
                            String imageUrl4 = resultSet4.getString("image_path");
                    %>
                    <div class="BestWineBlock">
                        <img class="BasePic" src="<%=imageUrl4%>" alt="">
                        <div class="BestText">白蘭地</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce4">快速瀏覽</button>
                            <div id="introduce4" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic" src="<%=imageUrl4%>" >
                                        <div class="IntroText">
                                            <div class="title">
                                                <h1>【<%=productName4%>】</h1>
                                            </div>
                                            <div class="price" >
                                                <h2>$<%=productPrice4%></h2>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    <%=description4%>
                                                </p>
                                                <h4>【氣味】</h4>
                                                <p>
                                                    口感都是，白蘭地是由葡萄釀成稍，尾韻稍有水果味，
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <div id="NewProducts" class="Products">
                <!-- 新品項 -->
                <div class="BestPic">
                    <!-- 新品項一 -->
                    <%
                        ResultSet resultSet5 = statement.executeQuery("SELECT *, product_name, price, product_describe,image_path FROM product WHERE product_id = 2 ");
                        if (resultSet5.next()) {
                            String productId5 = resultSet5.getString("product_Id");
                            String productName5 = resultSet5.getString("product_name");
                            int productPrice5 = resultSet5.getInt("price");
                            String description5 = resultSet5.getString("product_describe");
                            String imageUrl5 = resultSet5.getString("image_path");
                            
                    %>
                    <div class="BestWineBlock">
                        <img class="RWinePic" src="<%=imageUrl5%>" alt=""> 
                        <div class="BestText">紅葡萄酒</div>
                        <div class="QuickView">
                             <button class="btn" data-introduce="introduce5">快速瀏覽</button>
                             <div id="introduce5" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="RIntroPic2" src="<%=imageUrl5%>">
                                        <div class="IntroText2">
                                            <div class="title">
                                                <h1>【<%=productName5%>】</h1>
                                            </div>
                                            <div class="price" >
                                                <h2>$<%=productPrice5%></h2>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    <%=description5%>
                                                </p>
                                                <h4>【氣味】</h4>
                                                <p>
                                                    紫羅蘭、黑莓藍莓等漿果、以及巧克力、咖啡、黑胡
                                                    椒，都是常在席拉中常見的香氣。
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <!-- 新品項二 -->
                    <%
                        ResultSet resultSet6 = statement.executeQuery("SELECT *, product_name, price, product_describe,image_path FROM product WHERE product_id = 8 ");
                        if (resultSet6.next()) {
                            String productId6 = resultSet6.getString("product_Id");
                            String productName6 = resultSet6.getString("product_name");
                            int productPrice6 = resultSet6.getInt("price");
                            String description6 = resultSet6.getString("product_describe");
                            String imageUrl6 = resultSet6.getString("image_path");
                    %>
                    <div class="BestWineBlock">
                        <img class="WinePic" src="<%=imageUrl6%>" alt="">
                        <div class="BestText">玫瑰酒</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce6">快速瀏覽</button>
                            <div id="introduce6" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic2" src="<%=imageUrl6%>" >
                                        <div class="IntroText2">
                                            <div class="title">
                                                <h1>【<%=productName6%>】</h1>
                                            </div>
                                            <div class="price" >
                                                <h3>$<%=productPrice6%></h3>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    <%=description6%>
                                                </p>
                                                <h4>【氣味】</h4>
                                                <p>
                                                    口感輕盈、清新、優雅劃上等號，淺淺的玫瑰酒色配上宜人的紅果香絕對是視覺、嗅覺和味覺的三重享受。
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <!-- 新品三 -->
                    <%
                        ResultSet resultSet7 = statement.executeQuery("SELECT *, product_name, price, product_describe,image_path FROM product WHERE product_id = 3 ");
                        if (resultSet7.next()) {
                            String productId7 = resultSet7.getString("product_Id");
                            String productName7 = resultSet7.getString("product_name");
                            int productPrice7 = resultSet7.getInt("price");
                            String description7 = resultSet7.getString("product_describe");
                            String imageUrl7 = resultSet7.getString("image_path");
                    %>
                    <div class="BestWineBlock">
                        <img class="WinePic" src="<%=imageUrl7%>" alt="">
                        <div class="BestText">白酒</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce7">快速瀏覽</button>
                            <div id="introduce7" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic2" src="<%=imageUrl7%>" >
                                        <div class="IntroText2">
                                            <div class="title">
                                                <h1>【<%=productName7%>】</h1>
                                            </div>
                                            <div class="price" >
                                                <h3>$<%=productPrice7%> </h3>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    <%=description7%> </p>
                                                <h4>【氣味】</h4>
                                                <p>
                                                    檸檬，蘋果，杏桃，鳳梨，百香果，桃子，柑桔和李子都是夏多內中可能出現的氣息。
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <!-- 新品四 -->
                    <%
                        ResultSet resultSet8 = statement.executeQuery("SELECT *, product_name, price, product_describe,image_path FROM product WHERE product_id = 6 ");
                        if (resultSet8.next()) {
                            String productId8 = resultSet8.getString("product_Id");
                            String productName8 = resultSet8.getString("product_name");
                            int productPrice8 = resultSet8.getInt("price");
                            String description8 = resultSet8.getString("product_describe");
                            String imageUrl8 = resultSet8.getString("image_path");
                    %>
                    <div class="BestWineBlock">
                        <img class="CWinePic" src="<%=imageUrl8%>" alt="">
                        <div class="BestText">香檳</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce8">快速瀏覽</button>
                            <div id="introduce8" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic2" src="<%=imageUrl8%>" >
                                        <div class="IntroText2">
                                            <div class="title">
                                                <h1>【<%=productName8%>】</h1>
                                            </div>
                                            <div class="price" >
                                                <h3>$<%=productPrice8%></h3>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    <%=description8%>
                                                </p>
                                                <h4>【氣味】</h4>
                                                <p>
                                                    香氣結合了梨子、桃子、蘋果的白果香、柑橘果香、淡淡的花香，
                                                    優雅的奶油餅乾及堅果香。口感濃郁滑順，最後帶有清新爽口的感覺，
                                                    達到香檳最完美的境界。
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
    <%
        resultSet.close();
        con.close();
    %>


    <img class='kala' src="image/mmm2.png" id="burger">
    <img src="image/BeerCat.png" id="Beer">
   

    <%@include file = "footer.jsp" %>
</body>
</html>