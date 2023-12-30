<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>關於我們</title>
    <link rel="icon" href="image/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="assets/CSS/header.css">
    <link rel="stylesheet" href="assets/CSS/about.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Handlee&family=Shadows+Into+Light&display=swap" >
</head>
<body>
    <%@include file = "header.jsp" %>
    
    
    <section class="aboutus">
        <div class="image_container">
            <div class="flipper">
                <!--侯-->
                <div class="front">
                    <img class="front_hou" src="image/hou_photo.jpg" alt="侯有容照片">
                </div>
            
                <div class="back"> 
                    <p>
                        "咖啡是一種豆漿<br>茶是一種菜湯"
                    </p>
                    <img src="image/logo.png" width="70px">
                </div>
            </div>
            <h2>侯有容 | 10944161</h2>
            <div class="txt">
                <h4>資管四甲</h4>
            </div>
        </div>

        <div class="image_container">
            <div class="flipper">
                <!--朱-->
                <div class="front">
                    <img class="front_tzu" src="image/tzu_photo.jpg" alt="朱品慈照片">
                </div>
            
                <div class="back"> 
                    <p>"他們叫我朱媽媽"</p>
                    <img src="image/logo.png" width="70px">
                </div>
            </div>
            <h2>朱品慈 | 10944160</h2>
            <div class="txt">
                <h4>資管四甲</h4>
            </div>
        </div>

        <div class="image_container">
            <div class="flipper">
                <!--毛-->
                <div class="front">
                    <img class="front_mao" src="image/mao_photo.jpg" alt="陳冠豪照片">
                </div>
            
                <div class="back"> 
                    <p>"WHAT'S AFTER LIKE"</p>
                    <img src="image/logo.png" width="70px">
                </div>
            </div>
            <h2>陳冠豪 | 10914203</h2>
            <div class="txt">
                <h4>心理四乙</h4>
            </div>
        </div>

        
        </div>
    </section>

    <section class="visitus">
        <h2>---VISIT US---</h2>
        <pre>Business Hour:9:00A.M ~ 5:00 P.M.</pre>
    </section>

    <section class="mapcontainer">
        <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3164.372750445703!2d127.04631711027625!3d37.52270962652533!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca3fb12d9a8ff%3A0x2ad651283d3c7bce!2sStarship%20Entertainment!5e0!3m2!1sen!2stw!4v1685908618921!5m2!1sen!2stw" 
        width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>  
    </section>
    
    <section class="feedback">
        <h2>---CONTACT US---</h2>
        <div class="contactinfo">
            <img class="contactinfoimg" src="image/mail.jpg" width="20px">
            <pre class="contactinfotxt">starship-ent@hanmail.net</pre>
            
            <img class="contactinfoimg" src="image/phone.png" width="20px">
            <pre class="contactinfotxt"> +82-2-592-4000</pre>
        </div>
        
        <form action>
            <input type="text" id="name" class="typetxt" placeholder="Name">
            <input type="text" id="Email" class="typetxt" placeholder="Email">
            <textarea name="content" id="content" cols="30" rows="10" placeholder="Type your message here..."></textarea>
            <input type="submit" class="bottonto" value="SUBMIT">
            <span></span>
            <input type="reset" class="bottonto" value="CANCEL">
        </form>
    </section>
    
    <%@include file = "footer.jsp" %>
</body>
</html>
