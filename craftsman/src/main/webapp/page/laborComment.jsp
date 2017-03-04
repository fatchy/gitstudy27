<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>
<head>
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	<link href="css/common/myhouse-carousel.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="css/common/bespeakOrder.css"/>
	<link rel="stylesheet" type="text/css" href="css/common/laborcomment.css"/>
</head>
<body  data-spy="scroll" data-target="#myScrollspy">
	<div id="myScrollspy">
		<ul id="scrollfind-return">
			<li><a class="btn btn-info" href="index.jsp"><i class="fa fa-search"></i> 查找</a></li>
			<li><a class="btn btn-success" href="index.jsp"><i class="fa fa-user"></i> 客服 </a></li>
			<li><a  class="btn btn-default"href="bespeakOrder.jsp"><i class="fa fa-angle-double-up fa-lg"></i> 返回</a></li>
		</ul>
	</div>



<div class="nav-bottom-height">
	<div class="container-fluid">
		<div class="row-fluid">
		
		<h4 class=" col-md-offset-2 col-md-8  laborDetail" >工匠的基本信息如下：</h4>
		<div class=" col-md-offset-2 col-md-8  laborDetail" >
				
				
				<div class=" col-md-4">
						<img class="img-responsive" src="image/worker/<s:property value='#session.workerInfo.workertbPhoto'/>"/>
				</div>
				<div class=" col-md-8">
						<div>工号： <span id="worker1"><s:property value="#session.workerInfo.workertbId"/></span></div>
						<div>工匠： <span><s:property value="#session.workerInfo.workertbName"/></span></div>
						<div>工龄： <span><s:property value="#session.workerInfo.workertbExtime"/>年</span></div>
						<div>常住地址： <span><s:property value="#session.workerInfo.workertbCadress"/></span></div>
						<div>工作范围： <span><s:property value="#session.workerInfo.workertbScop"/></span></div>
				</div>
		</div>
		<div class="clearfix"></div>
		<div id="ckeditor_textarea" class="col-md-offset-2 col-md-8  laborDetail">
  			<textarea name="contextarea" id="contextarea"></textarea>
  			<a id="form_submit" onclick="submit()" class="btn btn-info pull-right">发布评论</a>
  		</div>

<div class="col-md-offset-2 col-md-8 formMarginTop" id="clabor">
   		<div class="media media-position"  >
												<a class="pull-left" href="#"> <img class="media-object"
													src="images/users/user.jpg" alt="用户头像">
												</a>
												<div class="media-body" >
													<h4 class="media-heading">玖七七_99:</h4>
													很负责、手艺也很好
													<div class="pull-right">2015-9-1 20:00</div>
													<div class="replay-bottom">
															<a><i class="fa fa-reply"></i> 回复</a>
															<a><i class="fa fa-thumbs-up"></i> 顶</a>
															<a><i class="fa fa-share"></i> 转发</a>
													</div>
													<span class="pull-right heart-span"><i class="fa fa-heart"></i> 180</span>
												</div>
												
											</div>
											<hr>
											<div class="media media-position">
												<a class="pull-left" href="#"> <img class="media-object"
													src="images/users/user.jpg" alt="用户头像">
												</a>
												<div class="media-body">
													<h4 class="media-heading">玖七七_99:</h4>
													很负责、手艺也很好
													<div class="pull-right">2015-9-1 20:00</div>
													<div class="replay-bottom">
															<a><i class="fa fa-reply"></i> 回复</a>
															<a><i class="fa fa-thumbs-up"></i> 顶</a>
															<a><i class="fa fa-share"></i> 转发</a>
													</div>
													<span class="pull-right heart-span"><i class="fa fa-heart"></i> 180</span>
												</div>
											</div>
											<hr>
											<div class="media media-position">
												<a class="pull-left" href="#"> <img class="media-object"
													src="images/users/user.jpg" alt="用户头像">
												</a>
												<div class="media-body">
													<h4 class="media-heading">玖七七_99:</h4>
													很负责、手艺也很好
													<div class="pull-right">2015-9-1 20:00</div>
												
													<div class="replay-bottom  sub-replay-bottom">
															<a><i class="fa fa-reply"></i> 回复</a>
															<a><i class="fa fa-thumbs-up"></i> 顶</a>
															<a><i class="fa fa-share"></i> 转发</a>
													</div>
													<span class="pull-right heart-span"><i class="fa fa-heart"></i> 180</span>
												</div>
									</div>
									<hr>
									<div class="media media-position">
												<a class="pull-left" href="#"> <img class="media-object"
													src="images/users/user.jpg" alt="用户头像">
												</a>
												<div class="media-body">
													<h4 class="media-heading">玖七七_99:</h4>
													很负责、手艺也很好
													<div class="pull-right">2015-9-1 20:00</div>
												
													<div class="replay-bottom  sub-replay-bottom">
															<a><i class="fa fa-reply"></i> 回复</a>
															<a><i class="fa fa-thumbs-up"></i> 顶</a>
															<a><i class="fa fa-share"></i> 转发</a>
													</div>
													<span class="pull-right heart-span"><i class="fa fa-heart"></i> 180</span>
												</div>
									</div>
									<hr>
									
									<div class="media media-position">
												<a class="pull-left" href="#"> <img class="media-object"
													src="images/users/user.jpg" alt="用户头像">
												</a>
												<div class="media-body">
													<h4 class="media-heading">玖七七_99:</h4>
													很负责、手艺也很好
													<div class="pull-right">2015-9-1 20:00</div>
												
													<div class="replay-bottom  sub-replay-bottom">
															<a><i class="fa fa-reply"></i> 回复</a>
															<a><i class="fa fa-thumbs-up"></i> 顶</a>
															<a><i class="fa fa-share"></i> 转发</a>
													</div>
													<span class="pull-right heart-span"><i class="fa fa-heart"></i> 180</span>
												</div>
									</div>
									<hr>
									
									<div class="pagination pagination-centered text-center">
												<ul class="list-inline">
													<li><a href="#">上一页</a></li>
													<li><a href="#">1</a></li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#">5</a></li>
													<li><a href="#">下一页</a></li>
												</ul>
											</div>


		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>
<iframe id="ifAjax" name="ifAjax" style="display:none" src="page/usercenter.jsp"></iframe>

 <script  type="text/javascript">
	    $(function() 
	    {
	         CKEDITOR.replace( 'contextarea',
	    		{
	        	 	width:'100%',
	    			height:	'100px',
	        		toolbar : 'Basic',
	        		uiColor : '#9AB8F3',
	    	});
	         CKEDITOR.instances.contextarea.setData("大声地说出您的评价吧~~~");
	    });

	function submit(){

		var conarticlecontent=CKEDITOR.instances.contextarea.getData();
		var userid='<s:property value="#session.loginuser.usertbId"/>'
		var url = 'workerComment_addcomment.action';
		var workerid = '<s:property value="#session.workerInfo.workertbId"/>';
		//取出cookie中存放的订单id
		var orderid = getCookie("orderid");
		$.post("workerComment_check.action",{"workerComment.ordertbId":orderid},function(data){
			if(data.code>0)
			{
				alert("请不要重复评论");
			}else
			{
				alert("aa");
				addc();
				
			}
			
		},'json');
		
		function addc()
		{
		alert("订单编号："+orderid);
		jQuery.post(url,{"workerComment.usertbId":userid,"workerComment.workertbId":workerid,"workerComment.workercommenttbContent":conarticlecontent,"workerComment.ordertbId":orderid},function(data){
			//处理返回的数据
			//var json = eval("("+data+")");
			if(data.code>0){
				//alert("成功");
				alert("~~感谢您de评价~~");
				location.href="page/laborComment.jsp";
			}else
			{
				alert("失败了");
			}
		
		});
		}
		
	}
</script>
<script type="text/javascript">
$(function() {
	var user = '<%=session.getAttribute("loginuser")%>';
		
			if (user == "null") {

				$("#login_li").show();
				$("#userimg_li").hide();
			} else {
				$("#login_li").hide();
				$("#userimg_li").show();
			}

		});
</script>
<!--底部 结束-->
<script>
	//	获取cookie中的orderid值
	function getCookie(cookie_name) {
		var allcookies = document.cookie;

		var cookie_pos = allcookies.indexOf(cookie_name); //索引的长度  

		//如果找到了索引，就代表cookie存在，  
		//反之，就说明不存在。  
		if (cookie_pos != -1) {
			//把cookie_pos放在值的开始，只要给值加1即可。  
			cookie_pos += cookie_name.length + 1; //这里我自己试过，容易出问题，所以请大家参考的时候自己好好研究一下。。。  

			var cookie_end = allcookies.indexOf(";", cookie_pos);
			if (cookie_end == -1) {
				cookie_end = allcookies.length;
			}
			var value = unescape(allcookies.substring(cookie_pos, cookie_end)); //这里就可以得到你想要的cookie的值了。。。  

		}
		return value;
	}
</script>
<script>
var pageSize=4;//每页大小
var currPage=1;//当前页
var totalPage=1;//总页数
var workerid = '<s:property value="#session.workerInfo.workertbId"/>';

	$.post("workerComment_findcomment.action",{"queryStr":workerid,"rows":pageSize},function(data){
		var count=data.total;
		totalPage=count%pageSize==0?count/pageSize:parseInt(count/pageSize)+1;
		currPage = 1;
		showTable(data,workerid);
	},"json");

function showTable( data, workerid)
{
	var comments=data.rows;
	var result="";
	//var strid="#laborComment"+workerid;
	$("#clabor").empty();
	if(comments.length>0)
	{
		for(var i=0;i<comments.length;i++)
		{
			var time = dateformat(comments[i].workercommenttbTime);
			result+="<div class='media media-position'>"+
			"<a class='pull-left' href='#'> <img class='media-object'"+
				"src='image/head/"+comments[i].user.usertbHeadpic+"' alt='用户头像'>"+
			"</a>"+
			"<div class='media-body'>"+
				"<h4 class='media-heading'>"+comments[i].user.usertbName+":</h4>"+
				comments[i].workercommenttbContent+
				"<div class='pull-right'>"+time+"</div>"+
			
				"<div class='replay-bottom  sub-replay-bottom'>"+
					"	<a><i class='fa fa-reply'></i> 回复</a>"+
						"<a><i class='fa fa-thumbs-up'></i> 顶</a>"+
						"<a><i class='fa fa-share'></i> 转发</a>"+
				"</div>"+
				"<span class='pull-right heart-span'><i class='fa fa-heart'></i> 180</span>"+
			"</div>"+
"</div>"+
"<hr>";
		}
		
			result+="<ul class='list-inline' style='margin-top:10px;'>"+
			"<li><a href='javascript:sendPost(1,"+workerid+")' onclick='firstpage()'>首页</a></li>";
		if(currPage!=1)
		{
			result+="<li><a href='javascript:sendPost("+(currPage-1)+","+workerid+")' onclick='uppage()''>上一页</a></li>";
		}
		if(currPage < totalPage)
		{
			result+="<li><a href='javascript:sendPost("+(currPage+1)+","+workerid+")' onclick='nextpage()'>下一页</a></li>";
		}
		result+="<li><a href='javascript:sendPost("+totalPage+","+workerid+")' onclick='lastpage()'>尾页</a></li>"+
			"</ul>";
		
	}else
	{
		result+="<h2 style='margin-top:20px;'>该工友现在还没有评论<h2>";
	}
	$("#clabor").append(result);
	
}
function nextpage()
{
	currPage+=1;
}
function uppage()
{
	currPage-=1;
}
function firstpage()
{
	currPage=1;
}
function lastpage()
{
	currPage = totalPage;
}

//发送请求
function sendPost(page,workerid)
{
	   $.post("workerComment_findcomment.action",{"page":page,"queryStr":workerid,"rows":pageSize},function(data){
		   showTable(data,workerid);
	  },"json");
 }

function dateformat(time)
{
	var year = time.substring(0,10);
	var day = time.substring(11);
	return year+" "+day;
}
</script>
</body>
</html>