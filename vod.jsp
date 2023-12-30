<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>威士忌🍸</title>
    <link rel="stylesheet" href="assets/CSS/header.css"> 
    <link rel="stylesheet" href="assets/CSS/customized.css">
    <link rel="icon" href="image/logo.ico" type="image/x-icon"> 
    <script src="assets/JS/cust.js"></script>  
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
    <%@include file = "header.jsp" %>

    <article class="customized">
        <div class="wine1">
            <div class="item1">
                <img src="image/screw.jpg">
            </div>
            <div class="pro">
                <div class="price">
                    螺絲起子 Screwdriver <br>
                    NT$300 <br>
                </div>
                <div class="cont">
                    是一款用橙汁和伏特加調製的高球雞尾酒，<br><br>
                    將所有材料加入冰塊六分滿的高球杯中，<br><br>
                    攪拌均勻即可，<br><br>
                    裝飾物可以使用柳橙做裝飾。
                </div>
                <div class="math">
                    數量: <br>
                </div>
                <div class="">
                    <div class="">
                        <div class="carrr">
                            <!-- 加減數量 -->
                            <form action>
                                <input type="button" id="reduce" value="-" />
                                <input type="text" id="num" value="0" />
                                <input type="button" id="add" value="+" />
                                <input type="submit" id="addcar" value="加入購物車">
                            </form>
                        </div>
                    </div>
                </div>
            </div>    
        </div>
        <div class="wine1">
            <div class="item1">
                <img src="image/cosmo.jpg">
            </div>
            <div class="pro">
                <div class="price">
                    柯夢波丹 Cosmopolitan <br>
                    NT$350 <br>
                </div>
                <div class="cont">
                    又稱大都會雞尾酒，<br><br>
                    最受女生喜愛的經典調酒，<br><br>
                    蔓越莓與檸檬混合而成的粉紅色，<br><br>
                    喝起來酸酸甜甜卻又不失酒味。
                </div>
                <div class="math">
                    數量: <br>
                </div>
                <div class="">
                    <div class="">
                        <div class="carrr">
                            <!-- 加減數量 -->
                            <form action>
                                <input type="button" id="down" value="-" />
                                <input type="text" id="number" value="0" />
                                <input type="button" id="up" value="+" />
                                <input type="submit" id="numcar" value="加入購物車">
                            </form>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
        <div class="com">
            <h1 class="diss">－ 討論版 －</h1><br>
            <div class="write">
                <form action="">
                    <input type="text" id="writeacc" class="typetext" placeholder="使用者名稱">
                    <textarea id="sub" cols="40" rows="10" class="typetext1" placeholder="撰寫內容"></textarea>
                    <div class="feedbackbutton">
                        <input type="submit" class="feedback1" value="提交">
                        <input type="reset" class="feedback2" value="取消">
                    </div>
                </form>
                <div class="others">
                    <table>
                        <tr><td>名稱: Kim Chaewon</td></tr>
                        <tr><td>發布時間: 2023/08/01</td></tr>
                        <tr><td>內容 : 好喝一直喝!😎</td></tr>
                        <tr><td>———————————————</td></tr>
                        <tr><td>名稱: An Yujin</td></tr>
                        <tr><td>發布時間: 2023/09/01</td></tr>
                        <tr><td>內容 : 辣到我的lips都腫起來了🥵</td></tr>
                        <tr><td>———————————————</td></tr>
                        <tr><td>名稱: Yuqi</td></tr>
                        <tr><td>發布時間: 2023/09/23</td></tr>
                        <tr><td>內容 : 喝完彷彿來到paradise🥴</td></tr>
                    </table>
                </div>
            </div>    
        </div>
    </article>
    
    <%@include file = "footer.jsp" %>
    
</body>
</html>