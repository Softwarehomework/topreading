<%@ page language="java" import="java.util.*,org.top.bean.*,org.top.dao.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>书评区 TopReading - 在线虚拟读书网</title>
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
	  <li><a href="#">书评区</a></li>
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



<div id="container">
<div class="container">
  <div id="review"><div id="content">

<div class="rev_le">

<ul>
  <li><div class="rev_1"><br>□《<a href="#" target="_blank">论语</a>》 君子是一个意义深刻的词。从小就听说什么“君子动口不动手”、“观棋不语真君子”等，感觉君子就像个呆呆的人似的。事实上，君子就是孔子他们儒家学派的一种自称，是理想的“中庸”的人。比如“君子不器”、“先行其言而后从之斗”，都体现了君子的优良品质。与君子相对的当然就是小人了，小人并非是坏人，只是素质没有君子高罢了。《论语》花了相当篇幅直截了当的阐明君子和小人的不同点，如“君子坦荡荡，小人常戚戚”、“君子周而不比，小人比而不周”。然而，君子的物质地位往往与小人相差甚远。毛泽东说过：“小人累君子，君子当存慈悲之心以救小人。”可见君子的物质生活是那么的悲惨！<br>
人，垃圾过时的破书</div>
<div class="rev_2"><a href="#" >mxqfox</a> 2015-06-10 20:30:18  </div></li>
  <li><div class="rev_1"><br>□《<a href="#" target="_blank">窦娥冤</a>》 应该是中学的时候，学过其中的章节。当时主要是被神话情节所感染，六月飞雪，想不到人的冤屈竟能感天动地。至于窦娥是怎么冤枉的，不甚明了。昨日闲来无事，在IBOOKS上看了一遍，这才有了通篇的了解。有了了解才发现，这篇故事不但夸张也缺乏逻辑。 1、窦娥不愿与张驴儿成亲，被其冤枉，告上县衙。那张驴儿无赖一个，要钱没钱，而蔡婆婆却广有钱财，人脉也广（从她经常放高利贷可以看出）。而县官贪婪成性，为何蔡婆婆不能...... </div>
<div class="rev_2"><a href="#" >文史哲</a> 2015-06-10 04:32:43  </div></li>
<li><div class="rev_1"><br>□《<a href="#" target="_blank">窦娥冤</a>》 应该是中学的时候，学过其中的章节。当时主要是被神话情节所感染，六月飞雪，想不到人的冤屈竟能感天动地。至于窦娥是怎么冤枉的，不甚明了。昨日闲来无事，在IBOOKS上看了一遍，这才有了通篇的了解。有了了解才发现，这篇故事不但夸张也缺乏逻辑。 1、窦娥不愿与张驴儿成亲，被其冤枉，告上县衙。那张驴儿无赖一个，要钱没钱，而蔡婆婆却广有钱财，人脉也广（从她经常放高利贷可以看出）。而县官贪婪成性，为何蔡婆婆不能...... </div>
<div class="rev_2"><a href="#" >文史哲</a> 2015-06-10 04:32:43  </div></li>
  
  
</ul>
  <!--div class="page">
<table width="100%" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td align="right" valign="middle">(1/2511) <a href="http://www.58xs.com/modules/article/reviewlist.php?page=1"><font color="">[1]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=1"><font color="">[&lt;&lt;]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=1"><font color="#ff0000">[1]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=2"><font color="">[2]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=3"><font color="">[3]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=4"><font color="">[4]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=5"><font color="">[5]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=6"><font color="">[6]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=7"><font color="">[7]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=8"><font color="">[8]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=9"><font color="">[9]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=10"><font color="">[10]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=2"><font color="">[&gt;]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=16"><font color="">[&gt;&gt;]</font></a><a href="http://www.58xs.com/modules/article/reviewlist.php?page=2511"><font color="">[2511]</font></a>&nbsp;</td><td width="66" align="right">    <script language="javascript">
        function jump(linkhead, total, page, usefake){
            
            var page = (page.value>total)?total:page.value;
            page     = (page<1)?1:page;
            if(usefake == ''){
                location.href = linkhead + page;
            }else{
                location.href = linkhead + '/' + Math.floor(page / 1000) + '/' + page + usefake;
            }
            return false;
        }
    </script>
       <form name="jieqijumpform" method="post" onsubmit="return jump(&#39;/modules/article/reviewlist.php?page=&#39;, 2511, jieqijumpform.page, &#39;&#39;)">
        <input name="page" type="text" class="text" size="3" maxlength="6">&nbsp;<input type="button" class="button" name="Submit" value="GO" onclick="return jump(&#39;/modules/article/reviewlist.php?page=&#39;, 2511, jieqijumpform.page, &#39;&#39;)">
       </form></td></tr></tbody></table>  </div-->
</div>
</div></div>
  </div>
</div>


  <div class="c"></div>

<div class="copy wp"> TopReading只作于内部学习交流用,不用于商业用途. 所收录免费小说、书友评论、用户上传文字、图片等其他一切内容均属用户个人行为,与开发人员无关.<br>Copyright &#169;2015 <a href="index.jsp">topreading.com</a> Beta All Rights Reserved.</div>


</body></html>