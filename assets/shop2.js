const shopitem1 = {
    0: {id:'0',name: '酒一', description: '樂事只選用當令新鮮馬鈴薯，鮮切成金黃香脆洋芋片。最好吃的樂事洋芋片，隨時享受簡單的快樂！', price: '25', img: 'wine.png'},
    1: {id:'1',name: '酒二', description: '維力炸醬麵，麵體Q、料香濃，乾麵附湯一包兩吃，道地家鄉口味是全家大小百吃不厭的好口味！', price: '20', img: 'wine.png'},
    2: {id:'2',name: '酒三', description: '遵循傳統焙炒工藝成就特有大麥風味溫潤茶韻與順滑奶香相互融合甜香不膩口的麥香奶茶。', price: '15', img: 'wine.png'},
    3: {id:'3',name: '酒四', description: '醇厚紅茶結合焙炒大麥，成就獨特大麥風味、暢銷全台灣的紅茶飲料。', price: '15', img: 'wine.png'},
    4: {id:'4',name: '酒五', description: '選用甜香特色的焙香綠茶葉，萃取醇厚甜香茶汁，搭配大麥焙炒甜香，呈現獨特大麥風味的綠茶。', price: '15', img: 'wine.png'},
    5: {id:'5',name: '酒六', description: '樂事只選用當令新鮮馬鈴薯，鮮切成金黃香脆洋芋片。最好吃的樂事洋芋片，隨時享受簡單的快樂！', price: '25', img: 'wine.png'},
    6: {id:'6',name: '酒七', description: '維力炸醬麵，麵體Q、料香濃，乾麵附湯一包兩吃，道地家鄉口味是全家大小百吃不厭的好口味！', price: '20', img: 'wine.png'},
    7: {id:'7',name: '酒八', description: '遵循傳統焙炒工藝成就特有大麥風味溫潤茶韻與順滑奶香相互融合甜香不膩口的麥香奶茶。', price: '15', img: 'wine.png'},
    8: {id:'8',name: '酒酒', description: '醇厚紅茶結合焙炒大麥，成就獨特大麥風味、暢銷全台灣的紅茶飲料。', price: '15', img: 'wine.png'},
    9: {id:'9',name: '酒十', description: '選用甜香特色的焙香綠茶葉，萃取醇厚甜香茶汁，搭配大麥焙炒甜香，呈現獨特大麥風味的綠茶。', price: '15', img: 'wine.png'},
};


const searchcontent = window.location.search;
// 取得當前網址的查詢字串部分，並將它儲存在變數中。
const urlParams = new URLSearchParams(searchcontent);
// 以URLSearchParams解析URL 並存在urlParams中

let items;

window.onload= function(){ //此可以讓網頁全部渲染完才顯示出來  
    addListener()
    items = shopitem1 ;
    // 將變數指配到上方物件
    let tmp = urlParams.get('id');
    // 將URL中所得的id拿下來 存在變數中
    setItem(items[tmp]);
    // 這邊讓他將參數帶進網址中，然後會依此變化顯示不一樣的網頁內容==>和下面的
}
function setItem(obj) {
    $('#productionimg').attr("src",'./image/'+ obj.img);
    $('#productionname').text(obj.name);
    $('#productiondescription').text(obj.description);
    $('#productionprice').text('售價：$'+ obj.price);
    $("#num").val("0");
    $('#showimg').attr("src",'./image/'+ obj.img);

    // 將不同上方取得的物件的內容寫入對應的id之中 *$用以取得對應id位置
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
// 當id為up的元素被點擊時，會執行一個匿名函式，該函式將 num 元素的值進行增加 1 的操作。
// parseInt 函式將 num.value 轉換為整數後進行遞增。

// 當id為down的原素被點擊時，執行一個匿名函式，該函式先判斷 num.value 的值是否小於等於 0
// 如果是==> num.value 設為 0       如果不是==>則將 num.value 進行減 1 的操作。

// 當 "up" 或 "down" 元素被點擊時，會根據相應的操作來增加或減少 num 元素的值。