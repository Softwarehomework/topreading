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
    alert("���Ƴɹ��������԰� CTRL+V ��ճ���� QQ/MSN ���Ƽ�����ĺ���");
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
        alert("����д�������ݡ�");
        return false;
    }
    else if (document.Comment.Content.value.length > 500) {
        alert("�������ݳ��� 500 ���ַ������ơ�");
        return false;
    }
    else if (document.Comment.C_UserName.value == "" || document.Comment.C_UserName.value == "�������ǳƣ�") {
        alert("����д�ǳ�");
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
    var myDate = new Date(); //�õ�ʱ����� 
    var y = myDate.getYear(); //��ȡ�� 
    var m = myDate.getMonth() + 1; //��ȡ�� 
    m = m > 9 ? m : "0" + m; //����·�С��10,����ǰ���0����Ϊ��λ���� 
    var d = myDate.getDay(); //��ȡ�� 
    d = d > 9 ? d : "0" + d; //�������С��10,����ǰ���0����Ϊ��λ���� 
    var h = myDate.getHours(); //��ȡСʱ 
    h = h > 9 ? h : "0" + h; //���Сʱ����С��10,����ǰ���0����Ϊ��λ���� 
    var M = myDate.getMinutes(); //��ȡ�� 
    M = M > 9 ? M : "0" + M; //�������С��10,����ǰ���0����Ϊ��λ���� 
    var s = myDate.getSeconds(); //��ȡ�� 
    s = s > 9 ? s : "0" + s; //�������С��10,����ǰ���0����Ϊ��λ����
    return (y + "-" + m + "-" + d + " " + h + ":" + m + ":" + s);
}

function SearchCheck() {
    if (document.search_form1.K.value == "" || document.search_form1.K.value == "��������Ҫ�������鼮�ؼ���") {
        alert("\�����������ؼ��֣�");
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
    if (document.search_form1.key.value == "" || document.search_form1.key.value == "�������鼮��������") {
        alert("\�����������ؼ��֣�");
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
        alert("����д�鼮���ƣ�");
        return false;
    }
    else if (document.getElementById("Book_Name").value.length < 2 || document.getElementById("Book_Name").value.length > 20) {
        alert("�鼮��������������3��20���֣�");
        return false;
    }
    else if (document.getElementById("Book_Author").value == "") {
        alert("����д�鼮���ߣ�");
        return false;
    }
    else if (document.getElementById("TxtUpload").value == "") {
        alert("��ѡ��Ҫ�ϴ����鼮��");
        return false;
    }
    else if (ChkFileType(document.getElementById("TxtUpload").value) == false) {
        alert("ֻ�����ϴ�TXT��ʽ���鼮��");
        return false;
    }
    else if (document.getElementById("FileUpload1").value != "") {
        if (ChkImgType(document.getElementById("FileUpload1").value) == false) {
            alert("��ѡ����ȷ��ͼƬ���ͣ�");
            return false;
        }
    }
    else if (document.getElementById("Book_Content").value == "") {
        alert("����д�鼮��飡");
        return false;
    }
    else if (document.getElementById("Book_Content").value.length > 500) {
        alert("�鼮����������ܳ���500����");
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
        result = (now.getDate() - d.getDate()) + "��ǰ";
    }
    else if (now.getYear() == d.getYear() && now.getMonth() == d.getMonth() && now.getDate() == d.getDate() && now.getHours() - d.getHours() > 0) {
        result = (now.getHours() - d.getHours()) + "Сʱǰ"
    }
    else if (now.getYear() == d.getYear() && now.getMonth() == d.getMonth() && now.getDate() == d.getDate() && now.getHours() == d.getHours() && now.getMinutes() - d.getMinutes() > 0) {
        result = (now.getMinutes() - d.getMinutes()) + "����ǰ"
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


//ѡ������˵�
function open_ysmenu() {
    document.getElementById("ys_menu").style.display = "block";
}
function close_ysmenu() {
    document.getElementById("ys_menu").style.display = "none";
}
//�ı�������ɫ
function hei() {
    document.getElementById("view_content_txt").style.color = "#000000";
    document.getElementById('x_menu').value = '��ɫ';
    document.getElementById('x_menu').name = 'hei';
    save();
}
function red() {
    document.getElementById("view_content_txt").style.color = "#ff3300";
    document.getElementById('x_menu').value = '��ɫ';
    document.getElementById('x_menu').name = 'red';
    save();
}
function blue() {
    document.getElementById("view_content_txt").style.color = "#0000ff";
    document.getElementById('x_menu').value = '��ɫ';
    document.getElementById('x_menu').name = 'blue';
    save();
}
function lv() {
    document.getElementById("view_content_txt").style.color = "#006600";
    document.getElementById('x_menu').value = '��ɫ';
    document.getElementById('x_menu').name = 'lv';
    save();
}
function zong() {
    document.getElementById("view_content_txt").style.color = "#660000";
    document.getElementById('x_menu').value = '��ɫ';
    document.getElementById('x_menu').name = 'zong';
    save();
}

//��ʱͬ���߶�
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



function readCookie(name) {//��ȡCookie 
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

function writeCookie(name, value) {//д��Cookie 

    var Days = 300;
    var exp = new Date();    //new Date("December 31, 9998");
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + value + "&expires=" + exp.toGMTString();
}

function escape2(str) {
    return escape(str).replace(/\+/g, "%2b");
}


checkIEVersion();