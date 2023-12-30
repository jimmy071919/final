<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/header.css"> 
    <link rel="stylesheet" href="assets/CSS/acccar.css">
    <script src="assets/JS/cust.js"></script> 
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
    <%@include file = "header.jsp" %>
    <%

        if(cookies != null){
            for(int i = 0; i < cookies.length; i++){
                if(cookies[i].getName().equals("name")){
                    break ; 
                }
                else
                {
                    response.sendRedirect("login.jsp");
                }
            }
        }
    %>
    <article class="gocar">
        <section class="carleft">
            <div class="order">
                <label>我的購物車</label>
            </div>
            <hr>
            <div class="pdt">
                <div class="inside">
                    <div class="pdtname">
                        <div class="pdtimg">
                            <img src="image/cosmo.jpg" width="150px" height="150px">
                        </div>
                        <div class="pdtspan">
                            <div class="pdttt">
                                <label>柯夢波丹</label>
                            </div>
                            <div>
                                <p>$350</p>
                            </div>
                        </div>
                    </div>
                    <div class="pdtspan1">
                        <div class="quantity">
                            <div class="qty">
                                <form action>
                                    <input type="button" id="reduce" value="-" />
                                    <input type="text" id="num" value="1" />
                                    <input type="button" id="add" value="+" />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="pdt">
                <div class="inside">
                    <div class="pdtname">
                        <div class="pdtimg1">
                            <img src="image/moji.jpg" width="150px" height="150px">
                        </div>
                        <div class="pdtspann">
                            <div class="pdttt">
                                <label>莫西多</label>
                            </div>
                            <div>
                                
                                <p>$350</p>
                            </div>
                        </div>
                    </div>
                    <div class="pdtspan1">
                        <div class="quantity">
                            <div class="qty">
                                <form action>
                                    <input type="button" id="down" value="-" />
                                    <input type="text" id="number" value="1" />
                                    <input type="button" id="up" value="+" />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="pdt">
                <div class="inside">
                    <div class="pdtname">
                        <div class="pdtimg2">
                            <img src="image/screw.jpg" width="150px" height="150px">
                        </div>
                        <div class="pdtspannn">
                            <div class="pdttt">
                                <label>螺絲起子</label>
                            </div>
                            <div>
                                <p>$300</p>
                            </div>
                        </div>
                    </div>
                    <div class="pdtspan1">
                        <div class="quantity">
                            <div class="qty">
                                <form action>
                                    <input type="button" id="downn" value="-" />
                                    <input type="text" id="numberr" value="1" />
                                    <input type="button" id="upp" value="+" />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        </section>

        <section class="carright">
            <div class="detail">
                <label>訂單摘要</label>
            </div>
            <hr>
            <form>
                <div class="allpay">
                    <div class="all">
                        <p><div>小計</div>&emsp;<div>$1000</div></p>
                    </div>
                    <div class="all1">
                        <p><div>運費</div>&emsp;<div>$60</div></p>
                    </div>
                </div>
                <hr>
                <div class="all">
                    <p><div>總計</div>&emsp;<div>$1060</div></p>
                </div>
                <div class="pay">
                    <input type="submit" value="結帳">
                </div>
            </form>

        </section>

    </article>

    <%@include file = "footer.jsp" %>
</body>
</html>