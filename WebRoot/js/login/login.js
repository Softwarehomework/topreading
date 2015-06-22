//用户提交 
function mysubmit(id){
	var temp=$("#unameId").val();
	if(temp==""){
		 $("#nameError").show();
	     $("#nameError2").show();
	     $("#nameError3").hide();
		return;
	}
	
	temp=$("#passwordId").val();
	if(temp==""){
		 $("#pwdError").show();
		 $("#pwdError2").show();
		 $("#pwdError3").hide();
		return;
	}
	
	//$("#"+id).submit();
	$.ajax({ 
		url: "/topreading/Login",
        data:$('#form').serialize(),
		type:"post",
		success: function(data){
			
			if (data == 'success'){
				window.location.href='/topreading/index.jsp';
			}
			// 用户已登录
			else if (data == 'fail1'){
				$("#loginFail_0").hide();
				$("#loginFail_1").show();
				$("#loginFail_2").hide();
			}
			else if (data == 'fail2'){
				$("#loginFail_0").hide();
				$("#loginFail_1").hide();
				$("#loginFail_2").show();
			}
			else{
				alert(data);
			}
		}
	});
}

//清除错误 
function hideError(id){
	  $("#"+id).hide();
}

//回车提交 
function keydownSubmit(event){
	e = event ? event :(window.event ? window.event : null);
	if(e.keyCode==13){
		mysubmit('form');
	}
}


//帐号显示控制
function hideNameInput(){
	$("#nameNoteId").hide();
	$("#unameId").focus();
}
function showNameInput(){
	var v1=$("#unameId").val();
	if(v1==null || ""==v1){
		$("#nameNoteId").show();
	}
}

//密码显示控制
function  hidePwdInput(){
	$("#pwdNoteId1").hide();
	$("#passwordId").focus();
}
function  showPwdInput(){
	var v2=$("#passwordId").val();
	if(v2==null || ""==v2){
		$("#pwdNoteId1").show();
	}
}

function hideNameError(id){
	$("#"+id).hide();
	$("#nameNoteId").hide();
}
function hidePwdError(id){
	$("#"+id).hide();
	$("#pwdNoteId1").hide();
}

function hideLoginError(){
	$("#loginFail_0").show();
	$("#loginFail_1").hide();
	$("#loginFail_2").hide();
}