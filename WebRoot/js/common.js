function CheckAll(form) {
    for (var i = 0; i < form.elements.length; i++) {
        var e = form.elements[i];
        if (e.Name != "chkAll" && e.type == "checkbox")
            e.checked = form.chkAll.checked;
    }
}

function copyUrl(url) {
    var content = '';
    window.clipboardData.setData("Text", url);
    alert("复制成功，您可以按 CTRL+V 键粘贴到 QQ/MSN 上推荐给你的好友");
}
function RemoveHTML(str) {
    var regEx = /<[^>]*>/g;
    return str.replace(regEx, "");
}

function quciklogin() {
    var str = top.location.href;
    if (str.indexOf("Reg") < 0 && str.indexOf("login") < 0) {
        redirect("/login.aspx?Url=" + str);
    }
    else {
        redirect("/login.aspx");
    }
}
$(function(){

	$(".clz").click(function(){

		$("#shortcut-goerwei").hide();
			
	});
});
function redirect(a) { window.location.href = a }

function PostReply(UserName) {
    document.getElementById("comment_txt").focus();
   
    if (UserName) {
        document.getElementById("comment_txt").value = "@" + UserName + " ";
    }
}
 

function ChkFileType(str) {
    var temp = str.replace(/^.*(\.[^\.\?]*)\??.*$/, '$1');
    temp = temp.toLowerCase();
    if (temp == ".txt") {
        return true;
    }
    return false;
}
function ChkImgType(str) {
    var temp = str.replace(/^.*(\.[^\.\?]*)\??.*$/, '$1');
    temp = temp.toLowerCase();
    if (temp == ".jpg" || temp == ".bmp" || temp == ".gif" || temp == ".jpeg" || temp == ".png") {
        return true;
    }
    return false;
}

function EnterKeyClick(button, event) {
    if (event.keyCode == 13) {
        //$(button).click();
        document.getElementById(button).click();
    }
}

function Chk() {
    if (document.Comment.Content.value == "") {
        alert("请填写评论内容。");
        return false;
    }
    else if (document.Comment.Content.value.length > 500) {
        alert("评论内容超过 500 个字符的限制。");
        return false;
    }
    else if (document.Comment.C_UserName.value == "" || document.Comment.C_UserName.value == "请输入昵称！") {
        alert("请填写昵称");
        return false;
    }
    return true;
}


function DivOpen(id) {
    document.getElementById(id).style.display = 'block'
}

function DivClose(id) {
    document.getElementById(id).style.display = 'none'
}

function DateDemo() {
    var myDate = new Date(); //得到时间对象 
    var y = myDate.getYear(); //获取年 
    var m = myDate.getMonth() + 1; //获取月 
    m = m > 9 ? m : "0" + m; //如果月份小于10,则在前面加0补充为两位数字 
    var d = myDate.getDay(); //获取日 
    d = d > 9 ? d : "0" + d; //如果天数小于10,则在前面加0补充为两位数字 
    var h = myDate.getHours(); //获取小时 
    h = h > 9 ? h : "0" + h; //如果小时数字小于10,则在前面加0补充为两位数字 
    var M = myDate.getMinutes(); //获取分 
    M = M > 9 ? M : "0" + M; //如果分钟小于10,则在前面加0补充为两位数字 
    var s = myDate.getSeconds(); //获取秒 
    s = s > 9 ? s : "0" + s; //如果秒数小于10,则在前面加0补充为两位数字
    return (y + "-" + m + "-" + d + " " + h + ":" + m + ":" + s);
}

function SearchCheck() {
    if (document.search_form1.K.value == "" || document.search_form1.K.value == "请输入您要搜索的书籍关键字") {
        alert("\请输入搜索关键字！");
        document.search_form1.K.focus();
    }
    else {
        var url = "/Search/q_" + window.encodeURIComponent(escape(document.search_form1.K.value));
        redirect(url);
        return false;
    }
    return false;
}

function SearchCheck2() {
    if (document.search_form1.key.value == "" || document.search_form1.key.value == "请输入书籍名、作者") {
        alert("\请输入搜索关键字！");
        document.search_form1.key.focus();
    }
    else {
        var url = "/Search/q_" + window.encodeURIComponent(escape(document.search_form1.key.value));
        redirect(url);
        return false;
    }
    return false;
}

function ctrlEnter(BookID, event) {
    if ((event.ctrlKey && event.keyCode == 13) || (event.altKey && event.keyCode == 83)) {
        p_comment(BookID);
    }
}


function BookAddChk() {
    if (document.getElementById("Book_Name").value == "") {
        alert("请填写书籍名称！");
        return false;
    }
    else if (document.getElementById("Book_Name").value.length < 2 || document.getElementById("Book_Name").value.length > 20) {
        alert("书籍名称字数必须是3至20个字！");
        return false;
    }
    else if (document.getElementById("Book_Author").value == "") {
        alert("请填写书籍作者！");
        return false;
    }
    else if (document.getElementById("TxtUpload").value == "") {
        alert("请选择要上传的书籍！");
        return false;
    }
    else if (ChkFileType(document.getElementById("TxtUpload").value) == false) {
        alert("只允许上传TXT格式的书籍！");
        return false;
    }
    else if (document.getElementById("FileUpload1").value != "") {
        if (ChkImgType(document.getElementById("FileUpload1").value) == false) {
            alert("请选择正确的图片类型！");
            return false;
        }
    }
    else if (document.getElementById("Book_Content").value == "") {
        alert("请填写书籍简介！");
        return false;
    }
    else if (document.getElementById("Book_Content").value.length > 500) {
        alert("书籍简介字数不能超过500个！");
        return false;
    }
    return true;
}


function convertdate2(strdate) {
    strdate = strdate.replace(/-/ig, '/');
    var d = new Date(strdate);
    var now = new Date();
    var result = now - d;
    
    if (now.getYear() == d.getYear() && now.getMonth() == d.getMonth() && now.getDate() - d.getDate() > 0) {
        result = (now.getDate() - d.getDate()) + "天前";
    }
    else if (now.getYear() == d.getYear() && now.getMonth() == d.getMonth() && now.getDate() == d.getDate() && now.getHours() - d.getHours() > 0) {
        result = (now.getHours() - d.getHours()) + "小时前"
    }
    else if (now.getYear() == d.getYear() && now.getMonth() == d.getMonth() && now.getDate() == d.getDate() && now.getHours() == d.getHours() && now.getMinutes() - d.getMinutes() > 0) {
        result = (now.getMinutes() - d.getMinutes()) + "分钟前"
    }
    else {
        result = d.getYear() + "-" + d.getMonth() + "-" + d.getDate();
    
    }
    return result;
}
function scrollback(scroll) {
    if (scroll != 0) {
        document.body.scrollTop = scroll;
    }
    
}
(window.onload = function() {
     
})

function bg_click(i,color) {

    for (var j = 1; j < 8; j++) {
        document.getElementById('sk_bs0' + j).style.border = '#999999 1px solid';
    }
        document.getElementById('sk_bs0' + i).style.border = '#999999 2px solid';
    document.body.style.backgroundColor = color;
    
}
function font_click(size) {

    
    document.getElementById('view_content_txt').style.fontSize = size;

    
}


// execu
function execu() {
 
}



//Cookie
function save() {
 
}


//选择字体菜单
function open_ysmenu() {
    document.getElementById("ys_menu").style.display = "block";
}
function close_ysmenu() {
    document.getElementById("ys_menu").style.display = "none";
}
//改变字体颜色
function hei() {
    document.getElementById("view_content_txt").style.color = "#000000";
    document.getElementById('x_menu').value = '黑色';
    document.getElementById('x_menu').name = 'hei';
    save();
}
function red() {
    document.getElementById("view_content_txt").style.color = "#ff3300";
    document.getElementById('x_menu').value = '红色';
    document.getElementById('x_menu').name = 'red';
    save();
}
function blue() {
    document.getElementById("view_content_txt").style.color = "#0000ff";
    document.getElementById('x_menu').value = '蓝色';
    document.getElementById('x_menu').name = 'blue';
    save();
}
function lv() {
    document.getElementById("view_content_txt").style.color = "#006600";
    document.getElementById('x_menu').value = '绿色';
    document.getElementById('x_menu').name = 'lv';
    save();
}
function zong() {
    document.getElementById("view_content_txt").style.color = "#660000";
    document.getElementById('x_menu').value = '棕色';
    document.getElementById('x_menu').name = 'zong';
    save();
}

//定时同步高度
function autoSynHeight(id) {
    setInterval(function () {
        var cf = document.getElementById(id);
        if (cf != null && cf !== undefined)
            setTimeout(function () { setHeight(cf); }, 50);
    }, 50);
}

function setHeight(e) {
    try {
        if (e.contentDocument) {
            e.height = e.contentDocument.body.offsetHeight-25;
        } else if (e.contentWindow) {
            e.height = e.contentWindow.document.body.scrollHeight-25;
        }
    } catch (ex) { }
}



 function checkIEVersion() { 
        var ua = navigator.userAgent; 
	var pattern = /(android|adr|ucweb|ucbrowser|iphone)/i;
	if(pattern.test(ua)) {
		var url = window.location.href;
		url = url.replace(/www\./, 'm.');
		window.location.href=url; 
	}
 }



function readCookie(name) {//读取Cookie 
    var a="";
    var cookieValue = "";
    var search = name + "=";
    if (document.cookie.length > 0) {
        offset = document.cookie.indexOf(search);
        if (offset != -1) {
            offset += search.length;
            end = document.cookie.indexOf("&", offset);
            if (end == -1) end = document.cookie.length;
            //cookieValue = unescape(document.cookie.substring(offset, end)) 
            cookieValue = document.cookie.substring(offset, end)
        }
    }
    return cookieValue;
}

function writeCookie(name, value) {//写入Cookie 

    var Days = 300;
    var exp = new Date();    //new Date("December 31, 9998");
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + value + "&expires=" + exp.toGMTString();
}

function escape2(str) {
    return escape(str).replace(/\+/g, "%2b");
}


checkIEVersion();