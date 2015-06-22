<%@ page language="java" import="java.util.*,java.io.*,java.lang.*,org.top.bean.*,org.top.dao.*" pageEncoding="UTF-8"%>
<!-- saved from url=(0048)http://www.bookbao.com/BookList-c_0-t_1-o_0.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>TopReading - 所有书籍</title>
<meta http-equiv=Pragma content=no-cache>
<meta http-equiv=Cache-Control content=no-cache>
<meta http-equiv=Expires content=0>
<link href="css/allbooks.css" type="text/css" rel="stylesheet">
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
    <div class="top_r"><a href="uploadbook.jsp" target="_blank" class="ico_up">上传书籍</a>|<a href="#">留言</a>|<a href="#" target"_blank"="">联系我们</a></div>
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
   

 
	
 


    
 
    


<div class="main_div">

    <div class="main_m">
        <div class="list_t">
            书籍列表 </div>
        <div class="list_div">
            <div>
            </div>
            <ul>
			
            <%
			
			File file = new File("webapps\\topreading\\books");
			File subFile[] = file.listFiles();
			int fileNum = subFile.length;
			//String names[] = new String[fileNum];
			for(int i=0;i<fileNum;i++){
				String name=subFile[i].getName().replace(".txt","");
				//String temp=new String(name.getBytes("ISO-8859-1"),"UTF-8");
				File file1=new File("webapps\\topreading\\others\\compare.txt");
				BufferedReader reader =new BufferedReader(new FileReader(file1));
				String name_pinyin=null;
				String temp;
				while((temp=reader.readLine())!=null){
					String []array=temp.split("\t");
					//out.println(array[1]);
					if(name.equals(array[0].replace(".txt",""))){
						name_pinyin=array[1].replace(".txt","");
						break;			
					}
				}
				%>
				<li style="height:260px;width:125px; float:left">
				<div class="pic"><a href="jsp/readbook.jsp?name=<%=name%>" target="_blank" >
				<img src="covers/<%=((name_pinyin==null)?name:name_pinyin)%>.jpg" class="list_img"></a>
				</div>
				<div class="bookname" >
				<div class="txt"><a href="jsp/readbook.jsp?name=<%=name%>" target="_blank" ><span><%=name%></span></a></div>
				</div>
				</li>
				
				<%
				
			}
			
			
			%>






















</ul>

        
		</div>
    </div>
</div>





</body></html>