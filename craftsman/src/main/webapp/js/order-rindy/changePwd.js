jQuery.extend({
	reg : function(x) {
		return new RegExp("(?![a-z]+$|[0-9]+$)^[a-zA-Z0-9]{6,20}$").test(x);
	},
	checkCurrentPwd : function(obj, userpwd) {
		$this = jQuery(obj);
		var oldPwd = $this.val();
		var label = $("#pwdLabel");
		if (oldPwd == userpwd) {
			$this.removeClass();
			label.removeClass();
			$this.addClass("right-input");
			label.html();
			label.addClass("right-label");
			label.html(' <i class="fa fa-check"></i>&nbsp;当前密码输入正确！ ');
			$('#passwordNew').prop('disabled', false);
		} else {
			$this.removeClass();
			label.removeClass();
			$this.addClass("error-input");
			label.html();
			label.addClass("error-label");
			label.html(' <i class="fa fa-times"></i>&nbsp;当前密码输入错误！ ');
			$this.val("");
			$this.focus();
		}
	},
	checkNewPwd : function(obj) {
		$this = jQuery(obj);
		var label = $("#pwdNewLabel");
		var newPwd = $this.val();
		if (this.reg(newPwd)==false) {
			$this.removeClass();
			label.removeClass();
			$this.addClass("error-input");
			label.html();
			label.addClass("error-label");
			label.html(' <i class="fa fa-times"></i>&nbsp;新密码必须为6~20位数字和字母的组合！ ');
			$this.val("");
			$this.focus();
		} else {
			$this.removeClass();
			label.removeClass();
			$this.addClass("right-input");
			label.html();
			label.addClass("right-label");
			label.html(' <i class="fa fa-check"></i>&nbsp;新密码输入正确！ ');
			$('#passwordCheck').prop('disabled', false);
		}
	},
	checkCheckPwd : function(obj, newobj) {
		$this = jQuery(obj);
		var oldPwd = $this.val();
		var label = $("#pwdCheckLabel");
		var newPwd=$(newobj).val();
		
		if (oldPwd == newPwd && this.reg(newPwd)==true ) {
			$this.removeClass();
			label.removeClass();
			$this.addClass("right-input");
			label.html();
			label.addClass("right-label");
			label.html(' <i class="fa fa-check"></i>&nbsp;确认密码输入正确！ ');
		} else {
			$this.removeClass();
			label.removeClass();
			$this.addClass("error-input");
			label.html();
			label.addClass("error-label");
			label.html(' <i class="fa fa-times"></i>&nbsp;确认密码输入错误！ ');
			$this.val("");
			$this.focus();
		}
	},
	savePassword : function(){
		if( $("#password").val() !=null &&  $("#passwordNew").val() !=null &&  $("#passwordCheck").val() !=null ){
			var pwd=$("#passwordNew").val();
			$.post("changepwd_user.action", {usertbPassword:pwd},
					function(data) {
				if (data.code != 1) {
					$("#AlertModalLabel").html(data.message);
					$("#AlertModal").modal('toggle');
				} else {
					$("#modal-backColor").removeClass("alert-warning").addClass("alert-success");
					$("#AlertModalLabel").html("密码修改成功！");
					$("#AlertModal").modal('toggle');
				}
			});
		}else{
			$("#AlertModalLabel").html("请先输入密码！");
			$("#AlertModal").modal('toggle');
		}
	},
	//修改用户个人信息
	saveUserInfo: function(){
		var sex = $('input[name=usersexRadios][checked]').val();
		var home_address="H"+$("#district").val()+"mhs"+$("#street").val()+"mhs"+$("#userAddress").val();
		var tr_length=$("#usercenter-tableinfo  tr").size();
		for(var i=9;i<tr_length+1;i++){
			var commonAddress="C"+$('#commondistrict'+i).val()+"mhs"+$('#commonstreet'+i).val()+"mhs"+$('#userCommonAddress'+i).val();
			home_address+=commonAddress;
		}
		var img=$.trim($("#usertbHeadpic").val());
		if(img==''){
			img=null;
		}
		$.post("changeInfo_userInfo.action", {
			usertbName:$("#usertbName").val(),usertbCellphone:$("#usertbCellphone").val(),
			usertbEmail:$("#usertbEmail").val(),usertbSex:sex,
			allAddress:home_address,usertbHeadpic:img,
			},
				function(data) {
			if (data.code != 1) {
				$("#AlertModalLabel").html(data.message);
				$("#AlertModal").modal('toggle');
			} else {
				$("#modal-backColor").removeClass("alert-warning").addClass("alert-success");
				$("#AlertModalLabel").html("信息修改成功！");
				$("#AlertModal").modal('toggle');
			}
		});
	},
	//验证用户名
	checkUserName: function(){
		var name=$("#usertbName").val();
		if(name==null){
			$("#AlertModalLabel").html("用户名不能为空！");
			$("#AlertModal").modal('toggle');
		}else{
			$.post("checkname_user.action", {"user.usertbName" : name}
			, function(data) {
				if (data.code == 1) {
					$("#AlertModalLabel").html("用户已存在！");
					$("#AlertModal").modal('toggle');
				}
			});
		}
	},
	
	//根据市区添加街道
	getStreet:function(obj,districtObj) {
		$this = jQuery(obj);
		$this.html("");
		var dis = $(districtObj+" option:selected").text();
		$.post("street_citySelect.action", {district : dis}, 
			function(data) {
			for (var j = 0; j < data.length; j++) {
				$this.append(
						'<option value='+data[j]+'>' + data[j]
								+ '</option>');
			}
		}, "json");
	}
});


