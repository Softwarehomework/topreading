<%@ page language="java" import="java.util.*,org.top.bean.*,org.top.dao.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>TopReading - 在线虚拟读书网——上传书籍</title>
<meta http-equiv=Pragma content=no-cache>
<meta http-equiv=Cache-Control content=no-cache>
<meta http-equiv=Expires content=0>
<link href="css/uploadbook.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/m.js"></script>
<!--script type="text/javascript" src="js/ajax.js"></script-->
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/mylogout.js"></script>
<link href="images/title.jpg" rel="shortcut icon" />
<script>
	function t(){
	<%
		String userName = (String) session.getAttribute("userName");
		if (userName != null) {
	%>
	$("#Login").hide();
	$("#LoginSuc").show();
	<%
		}else{
	%>
	$("#Login").show();
	$("#LoginSuc").hide();
	<%
		}
	%>
	}
	window.onload = t;
</script>
</head>

<body>
<div class="top">
  <div class="wp">
	<div class="top_l" style="display:block;" id="Login">您好，欢迎光临Top Reading<a href="./html/register.html">[注册]</a><a href="./html/login.html">[登陆]</a></div>
	<%
		userName = (String) session.getAttribute("userName");
		if (userName != null) {
	%>
   <div class="top_l" style="display:block" id="LoginSuc">欢迎您，<a href="#"><%=userName%><a href= "javascript:void(0);" onclick = "my_logout();">[退出]</a></div>
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
    <!--<p>热门搜索：<a href="http://www.bookbao.com/Search/q_%25u91CD%25u751F"><span>重生</span></a><a href="http://www.bookbao.com/Search/q_%25u603B%25u88C1"><span>总裁</span></a><a href="http://www.bookbao.com/Search/q_%25u90ED%25u656C%25u660E"><span>郭敬明</span></a><a href="http://www.bookbao.com/book/201505/06/id_XMzk0NzAz.html"><span>绝世唐门</span></a><a href="http://www.bookbao.com/Search/q_%2520%25u5510%25u5BB6%25u4E09%25u5C11"><span>唐家三少</span></a></p>-->
    </form>
  </div>
</div>
<div class="nav">
  <div class="wp">
    <ul>
      <li class="home"><a href="index.jsp">首页</a></li>
      <li><a href="#">电子书</a></li>
      <li><a href="#">会员</a></li>
	  <li><a href="bookmark.jsp">书评区</a></li>
      <!--<li><a href="http://www.bookbao.com/BookList-c_0-t_2-o_1.html">热门书籍</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_0-t_1-o_0.html">最新书籍</a></li>
      <li/BookList-c_7-t_0-o_0.html">悬疑</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_8-t_0-o_0.html">都市</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_9-t_0-o_0.html">历史</a></li>
      <li><a href="http://www.bookbao.com/BookList-c_10-t_0-o_0.html">经管</a></li>
      <li><a href="http://www.bookbao.com/Topten.html">排行榜</a></li>
      <li><a href="http://www.bookbao.com/QuanBook/List_1.html"><span>全本书库</span></a></li>-->
    </ul>
    <div class="wzgg"><span>[通告]</span> 本站禁止用户上传色情淫秽类、反动类、政治相关类等小说 如果发现将通报网安部门追究相应的法律责任。 </div>
  </div>
</div>



	
		<div class ="up">
		<script type="text/javascript">
 function doup(){
   form1.action="upimg.jsp";
   form1.submit();
   window.opener.document.getElementById('path').value=form1.file1.value;
 }
</script>



		<p>
			&nbsp;
		</p>
		<form name="form1" method="post" enctype="multipart/form-data"
			action="upimg.jsp">
			<table table width=100% height="48"align="center">
				<tr align="center">
					<td>
						<font color="black">请选择要上传书籍的地址:</font>
					</td>
				</tr>
				<tr>
					<td align="center">
						<input type="file" name="file1" size=15 class="an">
						&nbsp;&nbsp;
						<input type="submit" name="Submit" value="上传"class="dn">
					</td>
				</tr>

			</table>
		</form>

</div>






























<div class="copy wp">免责说明: TopReading只作于内部学习交流用,不用于商业用途. 所收录免费小说、书友评论、用户上传文字、图片等其他一切内容均属用户个人行为,与开发人员无关.<br>Copyright &#169;2015 <a href="index.jsp">topreading.com</a> Beta All Rights Reserved.</div>

</body></html>