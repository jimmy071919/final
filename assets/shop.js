window.onload = function() {
    generateItems();
    generateItems2();
};
const shopitem1 = {
    0: {id:'0',name: '酒一', description: '樂事只選用當令新鮮馬鈴薯', price: '25', img: 'wine.png'},
    1: {id:'1',name: '酒二', description: '維力炸醬麵，麵體Q、料香濃，乾麵附湯一包兩吃', price: '20', img: 'wine.png'},
    2: {id:'2',name: '酒三', description: '遵循傳統焙炒工藝成就特有大麥風味溫潤茶韻與順', price: '15', img: 'wine.png'},
    3: {id:'3',name: '酒四', description: '醇厚紅茶結合焙炒大麥，成就獨特大麥風味、暢銷全台灣的紅茶飲料。', price: '15', img: 'wine.png'},
    4: {id:'4',name: '酒五', description: '選用甜香特色的焙香綠茶葉，萃取醇厚甜香茶汁，呈現獨特大麥風味的綠茶。', price: '15', img: 'wine.png'},
};
const shopitem2 = {
    0: {id:'5',name: '酒六', description: '樂事只選用當令新鮮馬鈴薯，鮮切成金黃香脆洋芋片', price: '25', img: 'wine.png'},
    1: {id:'6',name: '酒七', description: '維力炸醬麵，麵體Q、料香濃', price: '20', img: 'wine.png'},
    2: {id:'7',name: '酒八', description: '遵循傳統焙炒工藝成就特有大麥茶。', price: '15', img: 'wine.png'},
    3: {id:'8',name: '酒酒', description: '醇厚紅茶結合焙炒大麥，', price: '15', img: 'wine.png'},
    4: {id:'9',name: '酒十', description: '選用甜香特色的焙香綠茶葉', price: '15', img: 'wine.png'},
};
function generateItems() {
    let objLength = Object.keys(shopitem1).length;
    let needAppendElement = $("#list");
    for(let i=0; i<objLength; i++) {
        needAppendElement.append(newCardItem(shopitem1[i.toString()]));
    }
}
function generateItems2() {
    let objLength = Object.keys(shopitem2).length;
    let needAppendElement = $("#list2");
    for(let i=0; i<objLength; i++) {
        needAppendElement.append(newCardItem(shopitem2[i.toString()]));
    }
}
function newCardItem(item) {
    let temp = '';
    // 寫child的架構
    temp+='<div>';
    temp+=  '<div class="production"><img src="./image/'+item.img+'"></img>';
    temp+=  '<div class="name">'+item.name+'</div>'
    temp+=  '<div class="name">'+item.description+'</div>'
    temp+=  '<p><a class="moreinfo" href="./shop2.html?id=' + item.id + '">查看詳情</a></div></p>';
    temp+='</div>';
    // 這邊會呼應到上面的generateItems的函數
    return temp;
}