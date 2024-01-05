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
                        <br>
                        <br>
                        "這學期的期末專題是我大學生涯中一個難忘的經歷。
                        透過與團隊成員的密切合作，我們成功完成了這個具有挑戰性的期末專題，
                        也讓我對於html、jsp、資料庫之間的關聯有更深的了解。
                        除此之外也學到了如何有效地溝通和協作，並培養了解決問題的耐心。
                        最後成功做出一個完整的網站，讓我感到十分有成就感，這是一次充滿成長和收獲的學習體驗。"
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
                    <p>
                        <br>
                        <br>
                        "這學期的期末專題讓我深刻體驗到專業領域的複雜性，
                        同時也讓我學會了團隊協作的重要性。
                        我們在專題的過程中碰到了許多難題，但透過不斷的討論和努力，
                        我們成功克服了一切困難，呈現出一個令人驚艷的成果。
                        這次的專題讓我更加堅信，合作和努力是取得成功的不二法門。"</p>
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
                    <p>
                        <br>
                        <br>
                        "這學期的期末專題充滿了挑戰，但同時也是一個豐富的學習經驗。
                        在團隊合作中，我們克服了各種困難，在不斷地失敗和成功中做出最讓自己滿意的成果，
                        這次的期末專題我更深入的了解了jsp、html和資料庫間的關聯，以及其是如何運作的，
                        同時透過這次的團隊合作，我們共同克服了挑戰，獲得了寶貴的成果，也培養了解決問題的能力。
                        
                    </p>
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
