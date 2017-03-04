function loginBtn() {
	$.post("login_user.action", $("#loginform").serialize(), function(data) {
		if (data.code != 1) {
			alert(data.message);
		} else {
			window.location.href = "to_index.action";
		}
	});
}
function registerBtn() {

	$.post("register_user.action", $("#registform").serialize(),
			function(data) {
				if (data.code != 1) {
					alert(data.message);
				} else {
					alert("注册成功");
					window.location.href = "to_login.action";
				}
			});
}

function checkname() {
	var username = $.trim($(".username").val());
	if (username == "") {
		$("#tip1").html("用户不能为空");
		$("#tip1").css("color", "red");
	} else {
		$.post("checkname_user.action", {
			"user.usertbName" : username
		}, function(data) {
			if (data.code == 1) {
				$("#tip1").html("用户已存在");
				$("#tip1").css("color", "red");
			} else {
				$("#tip1").html("用户名可以使用");
				$("#tip1").css("color", "#066A75");
			}
		});
	}
}

function checkemail() {
	var email = $(".email").val();
	if (!isemail(email)) {
		$("#tip2").html("邮箱格式不对");
		$("#tip2").css("color", "red");
	} else {
		$.post("checkemail_user.action", {
			"user.usertbEmail" : email
		}, function(data) {
			if (data.code == 1) {
				$("#tip2").html("邮箱已存在");
				$("#tip2").css("color", "red");
			} else {
				$("#tip2").html("可以使用");
				$("#tip2").css("color", "#066A75");
			}
		});
	}

}
function checkpass() {
	var password = $("#passwordsignup").val();
	var passwordcon = $("#passwordsignup_confirm").val();
	if (password != passwordcon) {
		$("#tip3").html("两次输入密码不匹配");
		$("#tip3").css("color", "red");
	} else {
		$("#tip3").html("验证成功");
		$("#tip3").css("color", "#066A75");
	}
}

// 判断输入是否是有效的电子邮件
function isemail(str) {
	var result = str
			.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/);
	if (result == null)
		return false;
	return true;
}
