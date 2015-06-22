<%@ page language="java" import="java.io.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>TopReading</title>
<link href="../images/title.jpg" rel="shortcut icon" />
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">
<link href="../css/read/style.css" type="text/css" rel="stylesheet">
<link href="../css/read/views.css" type="text/css" rel="stylesheet">

<style type="text/css">#contents{ font-size: 15px; color:#000000;}</style><style type="text/css">#amain{ background-color: #ffffff;}</style>

</head>
<body style="background: rgb(228, 235, 241);"><div id="BAIDU_DUP_fp_wrapper" style="position: absolute; left: -1px; bottom: -1px; z-index: 0; width: 0px; height: 0px; overflow: hidden; visibility: hidden; display: none;"><iframe id="BAIDU_DUP_fp_iframe" src="../css/read/o.html" style="width: 0px; height: 0px; visibility: hidden; display: none;"></iframe></div>
<div class="top">
<script type="text/javascript">ChkCookie();</script>

<div id="a_main">
  <div class="bdtop"></div>
  <div class="bdsub" id="amain">
    <dl>
      <dd>
	  

        <h1> </h1>
      </dd>
      <dd>
        <h3> <a href="/topreading/books/1.txt"  target= "_self " title="download">&nbsp&nbsp下载全本&nbsp&nbsp</a><a href="/topreading/comment.jsp" title="comment">&nbsp&nbsp发表评论</a>  </h3>
      </dd>
      <div style="padding-left:200px;">
</script> 
</div>
</div>
     <dd id="contents">
	 <%
	
	String path = request.getRealPath("/"); 
	String msg = request.getParameter("name");
   String str=new String(msg.getBytes("ISO-8859-1"),"UTF-8");
	FileReader fr = new FileReader(path + "/books/"+str+".txt");
  BufferedReader br = new BufferedReader(fr);
  
  String line;
  while( (line = br.readLine()) != null){
	out.println(line + "<br>"); 
  }
  br.close();
  fr.close(); 
%>
	 </dd>
     
    </dl>    
  </div>
  <script>
function getbookname(){
	var herf=window.location.href;
	//alert(herf);
	var arg=herf.split("=");
	//alert(arg[1]);
	return decodeURI(arg[1]);
} 
/*function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) 
		return unescape(r[2]); 
	return null;
    }
//alert(getQueryString("name"));
alert(decodeURI(getQueryString("name")));
*/
//var topic=document.getElementByTagName("h1");	
var topic=document.getElementsByTagName("h1")[0];
//topic.innerHTML=""+getbookname();
topic.innerHTML=getbookname();

//topic.innerHTML = "test1";
</script>
</body>



</html>