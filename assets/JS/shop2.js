const searchcontent = window.location.search;
// 取得當前網址的查詢字串部分，並將它儲存在變數中。
const urlParams = new URLSearchParams(searchcontent);
// 以URLSearchParams解析URL 並存在urlParams中

let items;

window.onload = function () {
    addListener();
    items = shopitem1;

    let tmp = urlParams.get('id');

    // 使用 AJAX 發送 id 參數到 JSP 頁面
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            // 處理從 JSP 頁面收到的回應的回撥函數
            setItem(JSON.parse(this.responseText));
            change_title(JSON.parse(this.responseText).product_id);
        }
    };
    
    // 發送 GET 請求到 JSP 頁面並帶上 id 參數
    xhttp.open("GET", "your_jsp_page.jsp?id=" + tmp, true);
    xhttp.send();
}
function addListener() {
    let num = document.getElementById("num");
    document.getElementById("up").addEventListener("click", function() {
        num.value = parseInt(num.value)+1;
    });
    document.getElementById("down").addEventListener("click", function() {
        if(num.value <= 0) {
            num.value = 0;
        }else {
            num.value = parseInt(num.value)-1;
        }
    });
}
