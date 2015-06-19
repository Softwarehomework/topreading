//写浏览记录到Cookies2
function ReadBook(id) {
    if (readCookie('booklist') != "") {
        if (hasOne(id)) {
            var str = readCookie('booklist') + "|" + id;
            writeCookie('booklist', str);
        }
       
    }
    else {
        writeCookie('booklist', id);
    }
}
//判断是否已有此书的浏览记录
function hasOne(pid) {
    var ReadList = readCookie('booklist');
    if (ReadList.lastIndexOf("|") != -1) {
        var arr = ReadList.split("|");
        for (i = 0; i < arr.length; i++) {
            if (arr[i] == pid) {
                return false;
            }
        }
    }
    else if (ReadList != "null" && ReadList != "") {
        if (ReadList == pid) {
            return false;
        }
    }
    return true;
}


function CheckCommentUser() {
    if (document.getElementById("comment_post") != null) {
        if (readCookie('userid') != "") {
            document.getElementById("comment_post").style.display = "none";
            document.Comment.C_UserName.value = readCookie('userid');
            document.Comment.C_UID.value = readCookie('userid');
            document.Comment.C_Pwd.value = readCookie('password');
        }
    }
}

function OutCommentUser() {
    if (document.getElementById("comment_post") != null) {
        document.getElementById("comment_post").style.display = "block";
        document.Comment.C_UserName.value = "请输入昵称！";
        document.Comment.C_UID.value = "";
        document.Comment.C_Pwd.value = "";
    }
}

 
//书籍收藏
function FavAdd(BookID) {
    if (readCookie("uid") != "") {
        var dataStr = { "action": "FavAdd", "BookID": escape2(BookID) };
        $.ajax({
            type: "post",
            url: "/Ajax.aspx",
            dataType: "text",
            data: dataStr,
            success: function (result) {
                alert(result);
            },
            error: function () {
                //alert("数据提交失败，请检查网络或重试。");
            }
        });
        return;
    }
    else {
        alert("抱歉，您还没有登陆！");
    }
}


function get_comment(BookID, PageID) {
     var dataStr = { "action": "GetComment", "BookID": BookID, "PageID": PageID };
     $.ajax({
        type: "post",
        url: "/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            document.getElementById("comment_list").innerHTML = result;
        },
        error: function () {
           // alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}


function get_scomment(BookID, PageID) {
 
    var dataStr = { "action": "GetSComment", "BookID": BookID, "PageID": PageID };
    $.ajax({
        type: "post",
        url: "/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            document.getElementById("comment_list").innerHTML = result;
        },
        error: function () {
           // alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}



//无刷新发布评论
function p_comment(BookID) {
    var txt = document.getElementById("comment_txt").value;
    if (!txt) { alert("请填写评论内容！"); return; }
    if (txt.length < 5) { alert("评论内容不能少于5个字符！"); return; }

    var dataStr = { "action": "PostComment", "BookID": BookID, "Txt": escape(RemoveHTML(txt)) };
    $.ajax({
        type: "post",
        url: "/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            alert("您的回复已成功提交！积分+1！");
            document.getElementById("comment_list").innerHTML = result;
            document.getElementById("comment_txt").value = "";
            var tempNum = parseInt(document.getElementById("C_Num").innerHTML);
            document.getElementById("C_Num").innerHTML = tempNum + 1;
        },
        error: function () {
           // alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}
//无刷新发布空间留言
function p_scomment(SID) {
    if (readCookie("uid") != "") {
        var txt = document.getElementById("comment_txt").value;
        if (!txt) { alert("请填写留言内容！"); return; }
        if (txt.length < 5) { alert("留言内容不能少于5个字符！"); return; }
        var dataStr = { "action": "PostSComment", "SID": SID, "Txt": escape(RemoveHTML(txt)) };
        $.ajax({
            type: "post",
            url: "/Ajax.aspx",
            dataType: "text",
            data: dataStr,
            success: function (result) {
                if (result != "nouser") {
                    alert("您的留言已成功提交！");
                    document.getElementById("comment_list").innerHTML = result;
                    document.getElementById("comment_txt").value = "";
                    var tempNum = parseInt(document.getElementById("C_Num").innerHTML);
                    document.getElementById("C_Num").innerHTML = tempNum + 1;
                } else
                { alert("抱歉，您还没有登陆！"); }
            },
            error: function () {
               // alert("数据提交失败，请检查网络或重试。");
            }
        });
        return;
    }
    else {
        alert("抱歉，您还没有登陆！");
    }
}
function CheckBookName(book) {
    var chk = true;
    if (chk) {
        var obj = document.getElementById("bookDesc");
        var dataStr = { "action": "CheckBook", "Book": escape2(book) };
        $.ajax({
            type: "post",
            url: "/Ajax.aspx",
            dataType: "text",
            data: dataStr,
            success: function (result) {
                if (result != "OK") {
                    obj.style.display = "block";
                    document.getElementById("HiddBookName").value = document.getElementById("Book_Name").value;
                    document.getElementById("ishave").value = "1";
                    if (document.getElementById("Book_Author").value != "") {
                        document.getElementById("Book_Name").value = document.getElementById("Book_Name").value + "【" + document.getElementById("Book_Author").value + "】";
                        obj.style.display = "none";
                    }
                } else {   //无此书籍
                    document.getElementById("ishave").value = "0";
                    chk = false;
                }
            },
            error: function () {
              //  alert("数据提交失败，请检查网络或重试。");
            }
        });
    }
    return chk;
}
 

function UserLogin2() {
    var uName = document.getElementById("Login_User").value;
    var uPass = document.getElementById("Login_Pwd").value;
    var uExpires = 0;
    if (!uName || !uPass) {
        document.getElementById("Login_Text").innerHTML = "账号和密码不能为空！";
        return;
    }
    if (document.getElementsByName("Login_Exp").checked = true) {
        uExpires = 3650000;
    }
    document.getElementById("EnterOper").disabled = true;
    var dataStr = { "action": "UserLogin2", "User": escape(uName), "Pass": uPass, "Expires": escape2(uExpires) };
    $.ajax({
        type: "post",
        url: "/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            if (result == "Login") {
                var pos, str, para, parastr;
                str = window.location.href;
                pos = str.indexOf("=")
                parastr = str.substring(pos + 1);
                if (pos > 0) {
                    parent.location = parastr;
                }
                else {
                    parent.location = '/my/';
                }
            } else {   //无此书籍
                document.getElementById("Login_Text").innerHTML = "账号或密码错误！";
                document.getElementById("EnterOper").disabled = false;
            }
        },
        error: function () {
           // alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}



//验证Cookie 
function ChkCookie() {
    if (readCookie("uid") != "") {
        UserLogin3();
        document.getElementById("LoginSuc").style.display = "block";
    }
    else {
        document.getElementById("Login").style.display = "block";
    }
}

//XmlHttp无刷新登陆
function UserLogin3() {
     var dataStr = { "action": "CheckLogin", "State": "1"};
     $.ajax({
         type: "post",
         url: "/Ajax.aspx",
         dataType: "text",
         data: dataStr,
         success: function (result) {
             if (result != "") {
                 document.getElementById("LoginSuc").innerHTML = result;
             }
         },
         error: function () {
           //  alert("数据提交失败，请检查网络或重试。");
         }
     });
    return;
}


//XmlHttp无刷新登陆
function UserLogin(s) {
    if (s == 0) {
        if (readCookie("uid") != "") {

            document.getElementById("i_loginsuc").style.display = "block";
        }
        else {
            document.getElementById("i_login").style.display = "block";
        }
    }
    //参数说明:s=0,1,2分别指"判断状态","登陆","退出"
    var uid = "";
    var uName = "";
    var uPass = "";
    var uExpires = 0;
    if (s == 1) {
        uName = document.getElementById("txtUser").value
        uPass = document.getElementById("txtPass").value
        //遍历得到选中的值
        //        var a=document.getElementsByName("expires") ; 
        //        for (var i=0;i<a.length ;i++ )
        //       { if( a[i].checked==true )
        //       {uExpires=a[i].value;
        //       }}
        if (!uName || !uPass) return;
        if (document.getElementById("expires").checked == true) {
            //  if (document.getElementsByName("expires").checked = true) {
            uExpires = 3650000;
        }
        document.getElementById("LoginBtn").disabled = true;
    }
    var dataStr = { "action": "UserLogin", "State": s, "User": escape(uName), "Pass": uPass, "Expires": escape2(uExpires) };
    $.ajax({
        type: "post",
        url: "/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            if (result == "LoginOut") {
                document.getElementById("i_loginsuc").style.display = "none";
                document.getElementById("i_login").style.display = "block";
                document.getElementById("LoginSuc").style.display = "none";
                document.getElementById("Login").style.display = "block";
                document.getElementById("LoginBtn").disabled = false;
                document.getElementById("txtPass").value = "";
            } else if (result == "Error") {
                alert("账号或密码错误！");
            }
            else if (result != "") {
                document.getElementById("i_loginsuc").innerHTML = result;
                document.getElementById("i_login").style.display = "none";
                document.getElementById("i_loginsuc").style.display = "block";
                ChkCookie();
            }
            document.getElementById("LoginBtn").disabled = false;
        },
        error: function () {
           // alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}

function FavDel(ID, BookID) {
    var dataStr = { "action": "FavDel", "FavID": ID, "BookID": BookID };
    $.ajax({
        type: "post",
        url: "/my/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            if (result == "OK") {
                document.getElementById("F" + ID).style.display = "none";
                var tempNum = parseInt(document.getElementById("FavNum").innerHTML);
                document.getElementById("FavNum").innerHTML = tempNum + 1;
            } else   {
                alert("操作失败！");
            }
        },
        error: function () {
           // alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}

function MarkerDel(ID, BookID) {
    var dataStr = { "action": "MarkerDel", "MarkerID": ID, "BookID": BookID };
    $.ajax({
        type: "post",
        url: "/my/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            if (result == "OK") {
                document.getElementById("F" + ID).style.display = "none";
                var tempNum = parseInt(document.getElementById("FavNum").innerHTML);
                document.getElementById("FavNum").innerHTML = tempNum + 1;
            } else {
                  alert("操作失败！");
            }
        },
        error: function () {
           // alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}
function SmsDel(ID) {
    var dataStr = { "action": "SmsDel", "SmsID": ID};
    $.ajax({
        type: "post",
        url: "/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            if (result == "OK") {
                document.getElementById("F" + ID).style.display = "none";
                
            } else {
                alert("操作失败！");
            }
        },
        error: function () {
            //alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}

function BookDel(ID) {
    var dataStr = { "action": "BookDel", "BookID": ID };
    $.ajax({
        type: "post",
        url: "/Ajax.aspx",
        dataType: "text",
        data: dataStr,
        success: function (result) {
            if (result == "OK") {
                document.getElementById("F" + ID).style.display = "none";
                var tempNum = parseInt(document.getElementById("BookNum").innerHTML);
                document.getElementById("BookNum").innerHTML = tempNum - 1;
            } else {
                alert("操作失败！");
            }
        },
        error: function () {
           // alert("数据提交失败，请检查网络或重试。");
        }
    });
    return;
}

//增加书签,增加章节书签
function SetMarker(BookID, scroll) {
    var ChapterID = 0;
    var urls = window.location.href.toString().split('_');
    if (urls.length == 3) {
        ChapterID = urls[2].split('.')[0];
    }
    if (readCookie("uid") != "") {
        var dataStr = { "action": "MarkerAdd", "BookID": escape(BookID), "ChapterID": escape(ChapterID), "Marker": scroll };
        $.ajax({
            type: "post",
            url: "/Ajax.aspx",
            dataType: "text",
            data: dataStr,
            success: function (result) {
                alert(result);
            },
            error: function () {
                //alert("数据提交失败，请检查网络或重试。");
            }
        });
        return;
    }
    else {
        alert("抱歉，您还没有登陆！");
    }
}

//滚动到指定的地方
function scrollbacks(BookID) {
    var ChapterID = 0;
    var urls = window.location.href.toString().split('_');
    if (urls.length == 3) {
        ChapterID = urls[2].split('.')[0];
    }
    if (readCookie("uid") != "") {
        var dataStr = { "action": "GetMarker", "BookID": escape(BookID), "ChapterID": escape(ChapterID) };
        $.ajax({
            type: "post",
            url: "/Ajax.aspx",
            dataType: "text",
            data: dataStr,
            success: function (result) {
                if (parseInt(result) > 0) {
                    document.body.scrollTop = parseInt(result);
                }
            },
            error: function () {
               // alert("数据提交失败，请检查网络或重试。");
            }
        });
        return;
    }

}
 