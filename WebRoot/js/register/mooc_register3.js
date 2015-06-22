/*检查密码*/
function checkPasssword(node){
   var vl=node.value;
   if(vl==null || vl==""){
        $("#passwordLev1").hide();
    	$("#passwordLev2").removeClass();
    	$("#passwordLev2").addClass("progressouter");
		return;
   }
}

/*
   设置密码强度显示
*/
function setPasswordLeve(node){
   var vl=node.value;
   if(vl==null || vl==""){
        $("#passwordLev1").hide();
    	$("#passwordLev2").removeClass();
    	$("#passwordLev2").addClass("progressouter");
		return;
   }else if(vl.length<5){
        $("#error_password").show();
        $("#error_password1").hide();
		$("#error_password3").show();
		$("#passwordLev1").hide();
    	$("#passwordLev2").removeClass();
    	$("#passwordLev2").addClass("progressouter");
	    return;
	}else if(vl.length>15){
		 $("#error_password").show();
	     $("#error_password1").hide();
	     $("#error_password3").show();
		 $("#passwordLev1").hide();
    	 $("#passwordLev2").removeClass();
    	 $("#passwordLev2").addClass("progressouter");
	   return;
	}else{
	   hideError('error_password');
       var temp=passwordComplexity(vl);
       if(temp<10){
           $("#passwordLev1").show();
           $("#passwordLev1_1").show();
           $("#passwordLev1_2").hide();
           $("#passwordLev1_3").hide();
    	   $("#passwordLev2").removeClass();
    	   $("#passwordLev2").addClass("levelone progressouter");
       }else if(temp<20){
    	   $("#passwordLev1").show();
    	   $("#passwordLev1_1").hide();
           $("#passwordLev1_2").show();
           $("#passwordLev1_3").hide();
    	   $("#passwordLev2").removeClass();
    	   $("#passwordLev2").addClass("leveltwo progressouter");
       
       }else{
    	   $("#passwordLev1").show();
    	   $("#passwordLev1_1").hide();
           $("#passwordLev1_2").hide();
           $("#passwordLev1_3").show();
    	   $("#passwordLev2").removeClass();
    	   $("#passwordLev2").addClass("levelthree progressouter");
       }
   }
}
       /**
		    计算密码的复杂度
			规定：
			   x<10      一般
			   10<x<20   中
			   x>20      高
		*/
		function passwordComplexity(password) {
			var complex = 0;
			var length = password.length;
			var pre = '';
			var preType = 0;
			for (var i = 0; i < length; i++) {
				var cur = password.charAt(i);
				var curType = pwdGettype(password, i);

				if (preType != curType || !pwdIsregular(cur, pre, curType)) {
					complex += curType + pwdComplex(curType, preType);
				}

				pre = cur;
				preType = curType;
			}

			return complex;
		}

		function pwdGettype(str, i) {
			if (str.charCodeAt(i) >= 48 && str.charCodeAt(i) <= 57) {
				return 1;
			}
			else if(str.charCodeAt(i) >= 97 && str.charCodeAt(i) <= 122) {
				return 2;
			}
			else if(str.charCodeAt(i) >= 65 && str.charCodeAt(i) <= 90) {
				return 3;
			}

			return 4;
		}

		function pwdIsregular(cur, pre, type) {
			var curCode = cur.charCodeAt(0);
			var preCode = pre.charCodeAt(0);
			
			if(curCode - preCode == 0){
				return true;
			}
			
			if(type != 4 && (curCode - preCode == 1 || curCode - preCode == -1)){
				return true;
			}
			
			return false;
		}

		function pwdComplex(curType, preType){
			if(preType == 0 || curType == preType){
				return 0;
			}else if(curType == 4 || preType == 4){
				return 2;
			}else{
				return 1;
			}
	    }
		
//验证用户名格式正确性
function isValName(node){
    var temp=node.value;
	var filterName  = /^[A-Za-z\u4e00-\u9fa50-9]+$/;
	
	if(temp==""){
		$("#error_uname").show();
		$("#error_uname2").show();
		$("#error_uname3").hide();
		$("#error_uname4").hide();
	    return;
	}
	
	if(!filterName.test(temp)){
		$("#error_uname").show();
		$("#error_uname2").hide();
		$("#error_uname3").hide();
		$("#error_uname4").show();
		$("#error_uname5").hide();
		return;
	}
	else if(temp.length>50){
		$("#error_uname").show();
		$("#error_uname2").hide();
		$("#error_uname3").show();
		$("#error_uname4").hide();
	    return;
	}else{
		
		$.ajax({ 
			url: "/topreading/Register",
			type:"get",
			data:$('#uname'),
			success: function(data){
				if ("true" == data){
					$("#error_uname").show();
					$("#error_uname2").hide();
					$("#error_uname3").hide();
					$("#error_uname4").hide();
					$("#error_uname5").show();
					$("#nameID").val("1");
					return;
				}
				else{
					$("#nameID").val("-1");
					hideError("error_uname");
					return;
				}
			}
		});
	}
}

//隐藏错误 
function hideError(id){
    $("#"+id).hide();
}

//隐藏错误 
function hideError1(id){
    $("#"+id).html("&nbsp;");
}


function hide_global_error(){
	$("#global_error").html("&nbsp;&nbsp;");	
}

//回车提交 
function keydownSubmit(event){
	e = event ? event :(window.event ? window.event : null);
	if(e.keyCode==13){
		mysubmit('form');
	}
}

/**
  提交表单:验证参数的合法性
*/
function mysubmit(id){
	
	//姓名
	temp=$("#uname").val();
	var filterName  = /^[A-Za-z\u4e00-\u9fa50-9]+$/;
	if(!filterName.test(temp)){
		$("#error_uname").show();
		$("#error_uname2").hide();
		$("#error_uname3").hide();
		$("#error_uname4").show();
		return;
	}
	else if(temp==""){
		$("#error_uname").show();
		$("#error_uname2").show();
		$("#error_uname3").hide();
		$("#error_uname4").hide();
	    return;
	}else if(temp.length>50){
		$("#error_uname").show();
		$("#error_uname2").hide();
		$("#error_uname3").show();
		$("#error_uname4").hide();
	    return;
	}

   
	//密码
	temp=$("#password").val();
	if(temp==""){
	     $("#error_password").show();
	     $("#error_password1").show();
	     $("#error_password3").hide();
	   return;
	}else if(temp.length<6){
		 $("#error_password").show();
	     $("#error_password3").show();
	     $("#error_password1").hide();
	   return;
	}else if(temp.length>16){
		 $("#error_password").show();
	     $("#error_password3").show();
	     $("#error_password1").hide();
	   return;
	}
	var temp2=$("#password2").val();
	if(temp2!=temp){
		 $("#error_password2").show();
		 $("#error_password2_1").show();
	   return;
	}
	
	//提交
	$("#"+id).submit();
}