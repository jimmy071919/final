<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <div class="digcon"></div>
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
        <div>
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
                    <div class="BestWineBlock">
                        <img class="BasePic" src="image/tequila.jpg" alt="">
                        <div class="BestText">龍舌蘭</div>
                        <div class="QuickView">
                    <!-- 商品簡介 -->
                    <button class="btn" data-introduce="introduce1" >快速瀏覽</button>
                        <div id="introduce1" class="introduce">
                            <div class="IntroContent">
                                <div class="content">
                                    <span id='close' class="close">&times;</span>
                                    <img class="IntroPic" src="image/tequila.jpg" >
                                    <div class="IntroText">
                                        <div class="title">
                                            <h1>【龍舌蘭】</h1>
                                        </div>
                                        <div class="price" >
                                            <h2>$99000</h2>
                                        </div>
                                        <div class="con2">
                                            <h4>【簡介】</h4>
                                            <p>
                                                以其材料命名，使用龍舌蘭草的莖為原料而製成的蒸餾酒，
                                                是墨西哥原生的酒品。龍舌蘭屬於多肉植物的一種，
                                                外觀長得像巨大的鳳梨，而龍舌蘭的莖又稱為龍舌蘭心（Piña），
                                                含有大量的糖份，非常適合釀酒。
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
                     </div>
                    </div>
            
                    <!-- 熱銷二 -->
                    <div class="BestWineBlock">
                        <img class="BasePic" src="image/vodka.jpg" alt="">
                        <div class="BestText">伏特加</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce2">快速瀏覽</button>
                            <div id="introduce2" class="introduce" style="display: none;">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close' class="close">&times;</span>
                                        <img class="IntroPic" src="image/vodka.jpg" >
                                        <div class="IntroText">
                                            <div class="title">
                                                <h1>【伏特加】</h1>
                                            </div>
                                            <div class="price" >
                                                <h2>$1389</h2>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    伏特加是由澱粉類穀物或根莖類作物（馬鈴薯、黑麥、小麥等）作為原料，
                                                    經過至少三重蒸餾處理的酒種。經過多重蒸餾會讓伏特加更純淨美味，
                                                    但也因為伏特加像水一樣無色無味的特性，常常被戲稱為「沒有個性的酒」。
                                                    這樣無個性的他，不僅可以說是重度酒精愛好者的最愛（可以純飲、凍飲、加冰塊），
                                                    更可以看手邊有什麼飲料就配什麼喝，讓不太習慣酒精味的人也能找到適合自己的喝法。
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
                    <!-- 熱銷三 -->
                    <div class="BestWineBlock">
                        <img class="BasePic" src="image/gin.jpg" alt="">
                        <div class="BestText">琴酒</div>
                        <div class="QuickView">
                            <button  class="btn" data-introduce="introduce3">快速瀏覽</button>
                            <div id="introduce3" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic" src="image/gin.jpg" >
                                        <div class="IntroText">
                                            <div class="title">
                                                <h1>【琴酒】</h1>
                                            </div>
                                            <div class="price" >
                                                <h2>$1500</h2>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    琴酒透過蒸餾將原料風味封存調和於酒液之中，
                                                    不同原料的香氣分子揮發的順序殊異，也讓琴酒氣味如同香水。
                                                    每款琴酒因為添加原枓、使用基酒、酒精濃度各自不同，品飲變化度也相當多樣，這正是琴酒迷人之處。
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
                    <!-- 熱銷四 -->
                    <div class="BestWineBlock">
                        <img class="BasePic" src="image/brandy.jpg" alt="">
                        <div class="BestText">白蘭地</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce4">快速瀏覽</button>
                            <div id="introduce4" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic" src="image/brandy.jpg" >
                                        <div class="IntroText">
                                            <div class="title">
                                                <h1>【白蘭地】</h1>
                                            </div>
                                            <div class="price" >
                                                <h2>$1200</h2>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    於白蘭地於廣義上，
                                                    是任何以水果作基酒蒸餾製成的，
                                                    再經蒸餾，酒精濃度達35%-60%的烈酒，
                                                    都可以叫作白蘭地，除了常見以葡萄釀製的白蘭地，
                                                    還有蘋果白蘭地(Calvados)及櫻桃白蘭地(Kirsch)等
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
            </div>
            <div id="NewProducts" class="Products">
                <!-- 新品項 -->
                <div class="BestPic">
                    <!-- 新品項一 -->
                    <div class="BestWineBlock">
                        <img class="RWinePic" src="image/red.jpg" alt="">
                        <div class="BestText">紅葡萄酒</div>
                        <div class="QuickView">
                             <button class="btn" data-introduce="introduce5">快速瀏覽</button>
                             <div id="introduce5" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="RIntroPic2" src="image/red.jpg" >
                                        <div class="IntroText2">
                                            <div class="title">
                                                <h1>【希哈 紅葡萄酒】</h1>
                                            </div>
                                            <div class="price" >
                                                <h2>$1900</h2>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    最為出名的葡萄酒品種，在品酒會上，
                                                    往往是壓軸的葡萄酒款。
                                                    就連號稱紅葡萄之王的卡本內蘇維濃都要閃邊站。
                                                    奔放的水果香氣伴隨濃濃的香料味，加上厚重的酒體，
                                                    你很難忽略它的存在。
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
                    <!-- 新品項二 -->
                    <div class="BestWineBlock">
                        <img class="WinePic" src="image/rose.jpg" alt="">
                        <div class="BestText">玫瑰酒</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce6">快速瀏覽</button>
                            <div id="introduce6" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic2" src="image/rose.jpg" >
                                        <div class="IntroText2">
                                            <div class="title">
                                                <h1>【Provence Rose】</h1>
                                            </div>
                                            <div class="price" >
                                                <h3>$9000</h3>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    炎炎夏日配上一杯冰涼的玫瑰酒不再只是潮流，
                                                    更加是愛酒之人夏日必備之選。玫瑰酒在任何場合都有出色表現，
                                                    因為它可以輕易配搭不同食物，能喝上一杯果香宜人、清新冰涼的玫瑰酒，
                                                    絕對可以令您的夏日更添愜意。
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
                    <!-- 新品三 -->
                    <div class="BestWineBlock">
                        <img class="WinePic" src="image/white.jpg" alt="">
                        <div class="BestText">白酒</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce7">快速瀏覽</button>
                            <div id="introduce7" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic2" src="image/white.jpg" >
                                        <div class="IntroText2">
                                            <div class="title">
                                                <h1>【夏多內 白葡萄酒】</h1>
                                            </div>
                                            <div class="price" >
                                                <h3>$9000</h3>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    世界上最受歡迎的白葡萄品種之一，
                                                    其對氣候強大的適應力，世界各地都可以看到它的蹤影。
                                                    隨著風土條件與釀造師風格的不同，夏多內釀造的白酒可說是千變萬化，
                                                    從法國香檳區的白中白香檳，到夏布利
                                                    那帶有礦石味與檸檬氣,息的清爽滋味，又或是美國釀造，浸泡橡木桶後圓潤豐滿的奶油味，
                                                    夏多內在每個地方都有不同的際遇。
            
                                                </p>
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
                    <!-- 新品四 -->
                    <div class="BestWineBlock">
                        <img class="CWinePic" src="image/spsp.jpg" alt="">
                        <div class="BestText">香檳</div>
                        <div class="QuickView">
                            <button class="btn" data-introduce="introduce8">快速瀏覽</button>
                            <div id="introduce8" class="introduce">
                                <div class="IntroContent">
                                    <div class="content">
                                        <span id='close2' class="close">&times;</span>
                                        <img class="IntroPic2" src="image/spsp.jpg" >
                                        <div class="IntroText2">
                                            <div class="title">
                                                <h1>【Moet & Chandon Brut Impérial】</h1>
                                            </div>
                                            <div class="price" >
                                                <h3>$2000</h3>
                                            </div>
                                            <div class="con2">
                                                <h4>【簡介】</h4>
                                                <p>
                                                    Moet & Chandon Brut Impérial是酩悅香檳酒廠的旗艦商品，
                                                    最具代表性的特徵是它活潑生動的果香，在味蕾上的表現又相當的優雅細膩。
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
                </div>
            </div>
        </div>
    </div>
    <img class='kala' src="image/mmm2.png" id="burger">
    <img src="image/BeerCat.png" id="Beer">
    <%@include file = "footer.jsp" %>
</body>
</html>