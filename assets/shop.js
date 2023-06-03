window.onload = function() {
    generateItems();
    generateItems2();
    generateItems3()
};
// 用以確保網頁中的內容都跑完了才呈現出來

const shopitem1 = {
    0: {id:'0',name: '白酒',  price: '25', img: 'spirit.jpg'},
    1: {id:'1',name: '白蘭地',  price: '20', img: 'BR.jpg'},
    2: {id:'2',name: '威士忌',  price: '15', img: 'wis.png'},
    3: {id:'3',name: '伏特加', price: '15', img: 'vodka_2.png'},
    4: {id:'4',name: '蘭姆酒', price: '15', img: 'lan_2.jpg'},
    5: {id:'5',name: '苦艾酒', price: '15', img: 'absinthe.jpg'},
};
const shopitem2 = {
    0: {id:'6',name: '日本清酒', price: '25', img: 'sake.jpg'},
    1: {id:'7',name: '奶酒', price: '20', img: 'milkwine.jpg'},
    2: {id:'8',name: '草莓酒',  price: '15', img: 'strwine.jpg'},
    3: {id:'9',name: '葡萄酒',  price: '15', img: 'gw.jpg'},
    4: {id:'10',name: '米酒' , price: '15', img: 'ricewine.png'},
    5: {id:'11',name: '梅酒',  price: '15', img: 'plumwine.jpg'},
    6: {id:'12',name: 'liz酒',  price: '15', img: 'liz_2.jpg'},
};
const shopitem3 = {
    0: {id:'13',name: '香檳酒',  price: '25', img: 'sp.png'},
    1: {id:'14',name: '氣泡酒',  price: '20', img: 'chepo.jpg'},
    2: {id:'15',name: '女巫酒',  price: '15', img: 'witchwine.png'},
    3: {id:'16',name: '琴酒',  price: '15', img: 'jin.jpg'},
    4: {id:'17',name: '常常酒酒',  price: '15', img: 'liz.jpg'},
};
function generateItems() {
    let objLength = Object.keys(shopitem1).length;
    // 設定一個變數==> 以Object.keys取得物件的索引編碼並存成陣列的形式
    // let findandadd = $("#list");
    // 設定一個變數==>此用以代表$("#list") ==>$代表取得id為list的內容  *$代表取得id的內容
    for(let i=0; i<objLength; i++) {
        $("#list").append(newCardItem(shopitem1[i.toString()]));
    }
}
function generateItems2() {
    let objLength = Object.keys(shopitem2).length;
    for(let i=0; i<objLength; i++) {
        $("#list2").append(newCardItem(shopitem2[i.toString()]));
    }
    // 用for迴圈讀取全部的物件==>並傳去newCardItem的函數中 *向下看
    // 用append將內容一行一行的加進id為list2的內容中
}
function generateItems3() {
    let objLength = Object.keys(shopitem3).length;
    for(let i=0; i<objLength; i++) {
        $("#list3").append(newCardItem(shopitem3[i.toString()]));
    }
    // 用for迴圈讀取全部的物件==>並傳去newCardItem的函數中 *向下看
    // 用append將內容一行一行的加進id為list2的內容中
}
function newCardItem(item) {
    let temp = '';
    // 寫child的架構
    temp+='<div>';
    temp+=  '<div class="production"><img src="./image/'+item.img+'"></img>';
    temp+=  '<div class="name">'+item.name+'</div>'
    temp+=  '<p><a class="moreinfo"  href="./shop2.html?id=' + item.id + '">查看詳情</a></div></p>';
    temp+='</div>';
    // 這邊會呼應到上面的generateItems的函數
    return temp;
}
// 用一個變數儲存特定物件相關的內容==>並以字串傳回去 *向回去看