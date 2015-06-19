<%@ page language="java" import="java.util.*,org.top.bean.*,org.top.dao.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>TopReading - 在线虚拟读书网</title>
<meta http-equiv=Pragma content=no-cache>
<meta http-equiv=Cache-Control content=no-cache>
<meta http-equiv=Expires content=0>
<link href="css/index.css" type="text/css" rel="stylesheet">
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
    <div class="top_r"><a href="uploadbook.jsp" class="ico_up">上传书籍</a>|<a href="#">留言</a>|<a href="#" target"_blank"="">联系我们</a></div>
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
--<script type="text/javascript" src="js/SuperSlide.js"></script>
</div>

<div class="wp">
  <div class="l260">
    <div class="banner b4">
      <ul style="position: relative; width: 258px; height: 318px;">
        <li style="position: absolute; width: 258px; left: 0px; top: 0px;"><a href="#"><img src="images/152206.jpg" width="258" height="318"></a></li>
        <li style="position: absolute; width: 258px; left: 0px; top: 0px; display: none;"><a href="#"><img src="images/9787544143615.jpg" width="258" height="318"></a></li>
        <li style="position: absolute; width: 258px; left: 0px; top: 0px; display: none;"><a href="#"><img src="images/279759.jpg" width="258" height="318"></a></li>
      </ul>
      <div class="banner_x"><span class="on">1</span><span>2</span><span>3</span></div>
    </div>
    <script type="text/javascript">jQuery(".banner").slide({titCell:".banner_x",mainCell:"ul",effect:"fold",autoPage:"<span>$</span>"});</script>

    <div class="w258 b4">
      <div class="bt2">本周点击排行</div>
      <ul class="xsxun1">
	  <li><span>2211</span><i class="ico_x1"></i>
	  <a href="#" target="_blank" class="lv">少年派的奇幻漂流</a></li>
	  <li><span>1495</span><i class="ico_x2"></i>	  
	  <a href="#" target="_blank" class="lv">窦娥冤</a></li>
	  <li><span>1474</span><i class="ico_x3"></i>
	  <a href="#" target="_blank" class="lv">论语</a></li>
	  <li><span>1359</span><i class="ico_x4"></i>
	  <a href="#" target="_blank" class="lv">假如给我三天光明</a></li>
	  <li><span>1326</span><i class="ico_x5"></i>
	  <a href="#" target="_blank" class="lv">西游记</a></li>
	  <li><span>1216</span><i class="ico_x6"></i>
	  <a href="#" target="_blank" class="lv">史记</a></li>
	  <li><span>1191</span><i class="ico_x7"></i>
	  <a href="#" target="_blank" class="lv">左耳</a></li>
	  <li><span>1100</span><i class="ico_x8"></i>
	  <a href="#" target="_blank" class="lv">鬼谷子</a></li>
	  <li><span>997</span><i class="ico_x9"></i>
	  <a href="#" target="_blank" class="lv">苏菲的世界</a></li>
	  <li><span>980</span><i class="ico_x10"></i>
	  <a href="#" target="_blank" class="lv">追风筝的人</a></li></ul>
    </div>
  </div>
  <div class="l500">
    <div class="w498z bj_fa">
      <i class="ico_new"></i>
      <dl class="sy_tt">
        <dt><a href="#" >[历史]</a><a href="jsp/book1.jsp" ><h2>红楼梦</h2></a> 上传：<a href="#" >小小12345</a></dt>
		<dd><a href="jsp/book2.jsp" target="_blank" >三国演义</a> </dd>
		<dd><a href= "jsp/book3.jsp" target="_blank" >水浒传</a> </dd>
		<dd><a href="jsp/book4.jsp" target="_blank" >西游记</a> </dd>
		
		<dt><a href="#" >[言情]</a><a href="#" target="_blank"><h2>何以笙箫默</h2></a> 上传：<a href="#" >jade123</a></dt>
		<dd><a href="#" target="_blank">左耳</a> </dd>
		<dd><a href="#" target="_blank">人生若只如初见</a> </dd>
		<dd><a href="#" target="_blank">非我倾城</a> </dd>
		<dd><a href="#" target="_blank">致青春</a> </dd>
		<dt><a href="#" >[名著]</a><a href="#" target="_blank"><h2>百年孤独</h2></a> 上传：<a href="#" >雪笑冰</a>
		<dd><a href="#" target="_blank">苏菲的世界</a> </dd>
		<dd><a href="#" target="_blank">生命中不能承受之轻</a> </dd>
		<dd><a href="#" target="_blank">追风筝的人</a> </dd>
		<dd><a href="#" target="_blank">假如给我三天光明</a> </dd>
      </dl>
    </div>
    <div class="w498z">
      <dl class="sy_tj">
        <ul class="twxun3"><dt><a href="#" ><img src="images/123.jpg" width="105" height="135" alt="史记"></a><a href="#" ><h2>史记</h2></a><p>汉代的司马迁编写的中国历史上第一部纪传体通史，记载了从黄帝到汉武帝太初年间三千多年的历史.&nbsp;
</p><div class="x"><span>[下载]</span><a href="#" >Txt下载</a><span>[阅读]</span><a href="#" >全文阅读</a></div></dt>
<dd><a href="#" target="_blank" class="lv">汉书</a></dd>
<dd><a href="#" target="_blank" class="lv">三国志</a></dd>
<dd><a href="#" target="_blank" class="lv">晋书</a></dd>
<dd><a href="#" target="_blank" class="lv">宋书</a></dd>
<dd><a href="#" target="_blank" class="lv">梁书</a></dd>
<dd><a href="#" target="_blank" class="lv">南齐书</a></dd>
<dd><a href="#" target="_blank" class="lv">北齐书</a></dd>
<dd><a href="#" target="_blank" class="lv">旧唐书</a></dd>
<dd><a href="#" target="_blank" class="lv">宋史</a></dd>
<dd><a href="#" target="_blank" class="lv">金史</a></dd>
<dd><a href="#" target="_blank" class="lv">元史</a></dd>
<dd><a href="#" target="_blank" class="lv">明史</a></dd>

      </dl>
    </div>
  </div>
  <div class="r220">
    <div class="w218 b2">
      <div class="bt1">新书推荐</div>
		<ul class="twxun3"><li class="p"><i>1</i>
		<a href="#" target="_blank"><img src="images/4.jpg" width="65" height="80" alt="窦娥冤"></a>
		<a href="#" target="_blank"><h3>窦娥冤</h3></a><p>元代戏曲家关汉卿的杂剧代表作，也是元杂剧悲剧的典范。&nbsp;<br></p></li><li><i>2</i>
		<a href="#" target="_blank" class="lv">肖申克的救赎</a></li><li><i>3</i>
		<a href="#" target="_blank" class="lv">二刻拍案惊奇</a></li><li><i>4</i>
		<a href="#" target="_blank" class="lv">骆驼祥子</a></li><li><i>5</i>
		<a href="#" target="_blank" class="lv">Life+of+Pi</a></li><li><i>6</i>
		<a href="#" target="_blank" class="lv">鬼谷子</a></li><li><i>7</i>
		<a href="#" target="_blank" class="lv">论语</a></li><li><i>8</i>
		<a href="#" target="_blank" class="lv">大宅门</a></li></ul>
    </div>
    <div class="w218 b4">
      <div class="bt4">今日上传书籍</div>
      <ul class="xsxun1"><li><i class="ico_x1"></i>
	  <a href="#" target="_blank" class="lv">大学</a></li><li><i class="ico_x2"></i>
	  <a href="#" target="_blank" class="lv">孟子</a></li><li><i class="ico_x3"></i>
	  <a href="#" target="_blank" class="lv">论语</a></li><li><i class="ico_x4"></i>
	  <a href="#" target="_blank" class="lv">中庸</a></li><li><i class="ico_x5"></i>
	  <a href="#" target="_blank" class="lv">左传</a></li><li><i class="ico_x6"></i>
	  <a href="#" target="_blank" class="lv">礼记</a></li><li><i class="ico_x7"></i>
	  <a href="#" target="_blank" class="lv">周易</a></li><li><i class="ico_x8"></i>
	  <a href="#" target="_blank" class="lv">尚书</a></li><li><i class="ico_x9"></i>
	  <a href="#" target="_blank" class="lv">诗经</a></li>
    </div>
  </div>
  <div class="c"></div>
</div>

 
<div class="wpb tuijian">
  <div class="btx1"><span>活跃会员</span></div>
  <div class="tuijian_x">
    <div class="tempWrap" style="overflow:hidden; position:relative; width:900px"><ul style="width: 3600px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -1800px;">
	<li class="clone" style="float: left; width: 280px;"><img src="images/201504081843268911.jpg" width="88" height="110" alt="mincandy11"></a><strong>mincandy11</strong></a><span>上传书籍：1本</span><span>积分：5</span><span>空间人气：31</span></li>
	<li class="clone" style="float: left; width: 280px;"><img src="images/201505241640558416.jpg" width="88" height="110" alt="名字你就随便啦"></a><strong>名字你就随便啦</strong></a><span>上传书籍：8本</span><span>积分：40</span><span>空间人气：45</span></li>
	<li class="clone" style="float: left; width: 280px;"><img src="images/201505211738577030.jpg" width="88" height="110" alt="回忆の忧伤"></a><strong>回忆の忧伤</strong></a><span>上传书籍：25本</span><span>积分：125</span><span>空间人气：716</span></li>
     <!-- <li style="float: left; width: 280px;"><a href="http://www.bookbao.com/Space/1235510" target="_blank"><img src="images/201505241818041585.jpg" width="88" height="110" alt="雪笑冰"></a><a href="http://www.bookbao.com/Space/1235510" target="_blank"><strong>雪笑冰</strong></a><span>上传书籍：4本</span><span>积分：20</span><span>空间人气：9</span></li>
	  <li style="float: left; width: 280px;"><a href="http://www.bookbao.com/Space/1235501" target="_blank"><img src="images/201505241632568416.jpg" width="88" height="110" alt="a305667255"></a><a href="http://www.bookbao.com/Space/1235501" target="_blank"><strong>a305667255</strong></a><span>上传书籍：1本</span><span>积分：5</span><span>空间人气：9</span></li>
	  <li style="float: left; width: 280px;"><a href="http://www.bookbao.com/Space/1235489" target="_blank"><img src="images/201505241431128416.jpg" width="88" height="110" alt="不忘初心"></a><a href="http://www.bookbao.com/Space/1235489" target="_blank"><strong>不忘初心</strong></a><span>上传书籍：1本</span><span>积分：5</span><span>空间人气：16</span></li>
	  <li style="float: left; width: 280px;"><a href="http://www.bookbao.com/Space/1228427" target="_blank"><img src="images/201504081843268911.jpg" width="88" height="110" alt="mincandy11"></a><a href="http://www.bookbao.com/Space/1228427" target="_blank"><strong>mincandy11</strong></a><span>上传书籍：1本</span><span>积分：5</span><span>空间人气：31</span></li>
	  <li style="float: left; width: 280px;"><a href="http://www.bookbao.com/Space/1234538" target="_blank"><img src="images/201505241640558416.jpg" width="88" height="110" alt="名字你就随便啦"></a><a href="http://www.bookbao.com/Space/1234538" target="_blank"><strong>名字你就随便啦</strong></a><span>上传书籍：8本</span><span>积分：40</span><span>空间人气：45</span></li>
	  <li style="float: left; width: 280px;"><a href="http://www.bookbao.com/Space/1230227" target="_blank"><img src="images/201505211738577030.jpg" width="88" height="110" alt="回忆の忧伤"></a><a href="http://www.bookbao.com/Space/1230227" target="_blank"><strong>回忆の忧伤</strong></a><span>上传书籍：25本</span><span>积分：125</span><span>空间人气：716</span></li>-->
    <li class="clone" style="float: left; width: 280px;"><img src="images/201505241818041585.jpg" width="88" height="110" alt="雪笑冰"></a><strong>雪笑冰</strong></a><span>上传书籍：4本</span><span>积分：20</span><span>空间人气：9</span></li>
	<li class="clone" style="float: left; width: 280px;"><img src="images/201505241632568416.jpg" width="88" height="110" alt="a305667255"><strong>a305667255</strong></a><span>上传书籍：1本</span><span>积分：5</span><span>空间人气：9</span></li>
	<li class="clone" style="float: left; width: 280px;"><img src="images/201505241431128416.jpg" width="88" height="110" alt="不忘初心"></a><strong>不忘初心</strong></a><span>上传书籍：1本</span><span>积分：5</span><span>空间人气：16</span></li></ul>
	</div>
  </div>
  <a href="javascript:void(0)" class="prev">上一页</a>
  <a href="javascript:void(0)" class="next">下一页</a>
</div>
<script type="text/javascript">jQuery(".tuijian").slide({mainCell:".tuijian_x ul",autoPage:true,effect:"leftLoop",autoPlay:true,scroll:3,vis:3});</script>


<div class="wpb link">
  <div class="c"></div>
</div>
<div class="copy wp">免责说明: TopReading只作于内部学习交流用,不用于商业用途. 所收录免费小说、书友评论、用户上传文字、图片等其他一切内容均属用户个人行为,与开发人员无关.<br>Copyright &#169;2015 <a href="index.jsp">topreading.com</a> Beta All Rights Reserved.</div>

</body></html>