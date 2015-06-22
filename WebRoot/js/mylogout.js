function my_logout(){
	$.ajax({ 
		url: "/topreading/Logout",
		type:"post",
		success: function(){
			$("#LoginSuc").hide();
			$("#Login").show();
		}
	});
}