<%@ page language="java" import="java.util.*,org.top.bean.*,org.top.dao.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>评论区 TopReading - 在线虚拟读书网</title>
<meta http-equiv=Pragma content=no-cache>
<meta http-equiv=Cache-Control content=no-cache>
<meta http-equiv=Expires content=0>
<link href="css/style.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/m.js"></script>
<!--script type="text/javascript" src="js/ajax.js"></script-->
<script type="text/javascript" src="js/common.js"></script>
<link href="images/title.jpg" rel="shortcut icon" />
</head>
<body>
<div class="top">
  <div class="wp">
	<%
		String userName = (String) session.getAttribute("userName");
		if (userName == null) {
	%>
    <div class="top_l" style="display:block;" id="Login">您好，欢迎光临Top Reading<a href="./html/register.html">[注册]</a><a href="./jsp/login.jsp">[登陆]</a></div>
	<%
		} else{
	%>
    <div class="top_l" style="display:block" id="LoginSuc">欢迎您，<a href="#"><%=userName%><a href= "./Logout">[退出]</a></div>
	<%
		}
	%>
    <div class="top_r"><a href="#" class="ico_up">上传书籍</a>|<a href="#">留言</a>|<a href="#" target"_blank"="">联系我们</a></div>
  </div>
</div>
<script type="text/javascript">ChkCookie();</script>
<div class="header wp">
  <div class="logo"><h1><a href="index.jsp"><img src="images/logo.jpg"width="147"height="90">TopReading</a></h1></div>

  <div class="search">
    <form action="index.html" method="get" name="search_form1" onsubmit="return SearchCheck2()">
    <div class="search_bj"><input name="key" type="text" class="search_inp" value="请输入书籍名、作者" onclick="javascript:{if (this.value == &#39;请输入书籍名、作者&#39;) this.value=&#39;&#39;; };"><input type="submit" name="submit" value="搜 索" class="search_sub"></div>
    </form>
  </div>
</div>
<div class="nav">
  <div class="wp">
    <ul>
      <li class="home"><a href="index.jsp">首页</a></li>
      <li><a href="#">电子书</a></li>
      <li><a href="#">会员</a></li>
	  <li><a href="comment.jsp">书评区</a></li>
      <!--<li><a href="http://www.bookbao.com/BookList-c_0-t_2-o_1.html">热门书籍</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_0-t_1-o_0.html">最新书籍</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_1-t_0-o_0.html">青春</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_2-t_0-o_0.html">言情</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_3-t_0-o_0.html">穿越</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_4-t_0-o_0.html">武侠</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_5-t_0-o_0.html">玄幻</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_6-t_0-o_0.html">耽美</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_7-t_0-o_0.html">悬疑</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_8-t_0-o_0.html">都市</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_9-t_0-o_0.html">历史</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_10-t_0-o_0.html">经管</a></li>
      <li><a href="http://www.bookbao.com/Topten.html">排行榜</a></li>
      <li><a href="http://www.bookbao.com/QuanBook/List_1.html"><span>全本书库</span></a></li>-->
    </ul>
    <div class="wzgg"><span>[通告]</span> 本站禁止用户上传色情淫秽类、反动类、政治相关类等小说 如果发现将通报网安部门追究相应的法律责任。 </div>
  </div>
</div>
<script type="text/javascript" src="js/SuperSlide.js"></script>



 <div class="main_div">
           <div class="gb_div">
 
   
    <div class="gb_nav">发布留言</div>
        <div class="gb_post">
          <form id="form" name="form" action="/topreading/TransComment" method="post">  
        网名：<input name="Post_Name" type="text" id="Post_Name" class="my_textbox" style="width:250px;"><span id="Chk2" style="color:Red;value:;display:none;">必须填写网名！</span>
        <br>
        内容：<textarea name="Post_Content" rows="2" cols="20" id="Post_Content" class="my_textbox" style="height:120px;width:500px;"></textarea>
            <span id="Chk1" style="color:Red;display:none;">必须填写内容！</span><br>

            <br>
            <br>
            
        
        
      <div class="btn"><input type="submit" name="Enter" value="确定提交" onclick="javascript:check_and_submit()" id="Enter" class="ManagerButton">

        &nbsp;&nbsp;<input id="Reset1" type="reset" value="取消" class="ManagerButton"></div>
		</form>
		</div>
		
		</div>
	</div>
	
<script >
function check_and_submit(){
	var Post_Name = document.getElementById("Post_Name");
	if(Post_Name.value==""){
		alert("必须填写网名！")
	}
	var Post_Content = document.getElementById("Post_Content");
	if(Post_Content.value==""){
		alert("必须填写内容！")
	}
		
	

	
}
var Page_Validators =  new Array(document.getElementById("Chk2"), document.getElementById("Chk1"));

</script>








  <div class="c"></div>

<div class="copy wp"> TopReading只作于内部学习交流用,不用于商业用途. 所收录免费小说、书友评论、用户上传文字、图片等其他一切内容均属用户个人行为,与开发人员无关.<br>Copyright &#169;2015 <a href="index.jsp">topreading.com</a> Beta All Rights Reserved.</div>


</body></html>