<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <title>工匠主页</title>
 	
	<!--展示特效-->
	<link rel="stylesheet" type="text/css" href="css/laborlist/normalize.css" />
	
	<link rel="stylesheet" type="text/css" href="css/laborlist/style2.css" />
	<!--手风琴菜单-->
	<link rel="stylesheet" href="css/laborlist/arrordian.css" media="screen" type="text/css" />
  <script src="js/laborlist/arrordian.js"></script>
  <link href="css/tab2-css/css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
  <script src="js/tab2-js/js/animatescroll.js"></script>
  <script src="js/laborlist/modernizr.custom.js"></script>

</head>
<body>

    <div class="containerLaborList nav-bottom-height">
        <button id="menu-toggle" class="menu-toggle"><span>Menu</span></button>
			<div id="theSidebar" class="sidebar">
				<button class="close-button fa fa-fw fa-close"></button>
				<nav class="codrops-demos">
					<ul id="accordion" class="accordion">
		<li>
			<div class="link" id="laborType">工匠类型<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu" id="laborTypeSubMenu">
				<li><a href="javascript:void(0)">木工</a></li>
				<li><a href="javascript:void(0)">焊工</a></li>
				<li><a href="javascript:void(0)">水电工</a></li>
				<li><a href="javascript:void(0)">油漆工</a></li>
				<li><a href="javascript:void(0)">装修工</a></li>
			</ul>
		</li>
		<li>
			<div class="link" id="serviceTime">服务时间<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu" id="serviceTimeSubMenu">
				<li><a href="javascript:void(0)">上午</a></li>
				<li><a href="javascript:void(0)">中午</a></li>
				<li><a href="javascript:void(0)">下午</a></li>
			</ul>
		</li>
		<li>
			<div class="link" id="cityRange">街镇选择<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu" id="cityRangeSubMenu">
				<li><a href="javascript:void(0)">江川路街道</a></li>
				<li><a href="javascript:void(0)">古美街道</a></li>
				<li><a href="javascript:void(0)">龙柏街道</a></li>
				<li><a href="javascript:void(0)">虹桥镇</a></li>
				<li><a href="javascript:void(0)">华漕镇</a></li>
				<li><a href="javascript:void(0)">七宝镇</a></li>
				<li><a href="javascript:void(0)">莘庄镇</a></li>
				<li><a href="javascript:void(0)">颛桥镇</a></li>
				<li><a href="javascript:void(0)">浦江镇</a></li>
				<li><a href="javascript:void(0)">梅陇镇</a></li>
				<li><a href="javascript:void(0)">马桥镇</a></li>
				<li><a href="javascript:void(0)">莘庄镇</a></li>
				<li><a href="javascript:void(0)">吴泾镇</a></li>
				
			</ul>
		</li>
		<li class="clearfix"></li>
		<li style="display:inline !important;">
			   <input  id="appendedInputButtons" type="text" style="font-size:14px" placeholder="请输入您需要工匠" onkeypress="EnterPress1(event)" >
      			<a id="laborSearch" class="btn btn-default" href="javascript:search1()">
      				<i class="fa fa-search" style="left:15px;top:6px;"></i></a>
			
		</li>
	</ul>
				</nav>
				
			</div>
        <div id="theGrid" class="main">
            <section class="grid">
					<header class="top-bar">
						<h2 class="top-bar__headline">工匠展示</h2>
						
					</header>
					<a class="grid__item" href="#">
						<h3 class="title title--preview">十年木工经验</h3>
						<span class="category">张师傅</span>
						<div class="meta meta--preview">
							<img class="meta__avatar" src="image/worker/worker1.jpg" alt="author04" /> 
							<span class="meta__date"><i class="fa fa-star"></i>3星级服务</span>
							<span class="meta__reading-time"><i class="fa fa-bookmark-o"></i>8人点评</span>
						</div>
					</a>

				
					<footer class="page-meta">
						<span>Load more...</span>
					</footer>
				</section>
            <section class="content">
					<div class="scroll-wrap">
						<article class="content__item">
							<span class="category category--full">张师傅</span>
							<h3 class="title title--full">十年木工经验</h3>
							<div class="meta meta--full">
								<img class="meta__avatar" src="images/laborlistImg/4.png" alt="author04" />
								<span class="meta__author">Sandra Paulson</span>
								<span class="meta__date"><i class="fa fa-star"></i>3星级服务</span>
								<span class="meta__reading-time"><i class="fa fa-bookmark-o"></i>8人点评</span>
								<span class="meta__date text-center">
									<button class="btn btn-success btn-lg" data-toggle="modal"  data-target="#modal_bespeak">预约工匠</button>
								</span>

								<div class="clearfix"></div>
								<ul>
									<li >工号: <b>L001</b></li>
									<li >电话: <b>15211446392</b></li>
									<li >地址: <b>松江区-解放路120号-3栋708</b></li>
									<li class="lastUlli">工作范围: <div class="pull-right">吊顶 、防水、刷墙、地板\吊顶 、防水、刷墙、地板</div></li>

								</ul>

							</div>
							
							<!--选项卡-->
			<div class="row-fluid">
				<div class="span12">
					<div class="tabbable" id="tabs-616345">
						<ul class="nav nav-tabs ">
							<li class="active">
								<a data-toggle="tab" href="#laborResume">工匠简介</a>
							</li>
							<li>
								<a data-toggle="tab" href="#demoDisplay">案例展示</a>
							</li>
							<li >
								<a data-toggle="tab" href="#laborComment">客户评价</a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active table-responsive" id="laborResume">
								<p>《工匠精神:向价值型员工进化》主要讲的是工匠平静、安适、充实、愉悦、幸福。</p>
								<p>活在当下，强在内心；打工者焦躁、忧郁、惶恐，永远为看不清的明天奔忙，外表强悍，内心空虚。工匠精神，是美国家族企业历经百年而不倒的秘诀，是瑞士品牌屹立世界之巅的利器，更是一种生命态度。</p>
								<p>其价值在于精益求精，对匠心、精品的坚持和追求，其利虽微，却长久造福于世。如果你希望改变现状、打造一个与众不同的自己，成为被需要、被尊重、众望所归的成功者，就从当下的事情做起，成为一个充满魅力的工匠。拥有工匠精神，拥有内外丰盛的人生！ </p>
							</div>
							
							<!--第二部分-->
							<div class="tab-pane table-responsive" id="demoDisplay">
								<div class="lanrenzhijia">
									<div class="head">
										<ul class="left">工匠案例介绍</ul>
										<ul class="right">
											<a href="#" onclick="$('#section-1').animatescroll();">
											施工步骤</a>
											<span>|</span>
											<a href="#" onclick="$('#section-2').animatescroll();">案例展示</a>
											<span>|</span>
											<a href="#" onclick="$('#section-3').animatescroll();">品牌作用</a>
											<span>|</span>
											<a href="#" onclick="$('#section-4').animatescroll();">品牌视频</a>
										</ul>
										</div>
										<!-- /container -->
										<div class="section">
											<div id="section-1">
												<h1>施工步骤</h1>
												<img src="images/show_pic5.jpg" />
												<p>木工进场——审图，决定木料，数量——材料和工具进场——施工人员应对施工顺序做出规划，最好具体到每个工作日应进行哪些施工——木作施工台的搭建——进行第一项木工施工：吊顶龙骨的架设——门窗制作——家具框架——木作表层封装——细节修补——上油漆——木工验收——木工退场。</p>
												<p>一、毛坯木工阶段人员安排：1、木工(一般2-3人)2、小工(可另聘请1名)。一般4周左右，根据房屋大小、施工难度不同会有不同，需要与泥工同时交叉作业</p>
												<p>近年来，老凤祥公司努力推进资源整合、体制改革，积极以品牌优势资源为出发点，按“做优为基础、
															做强为根本、做大为目标”的品牌战略发展方针，努力推进市场营销网络开拓，主动以市场消费变化调整产品结构，不断扩大品牌的宣传力度，举行丰富多彩的推广活动，使“老凤祥”品牌在上海地区家喻户晓，在华东地区享誉市场，在全国首饰业中名列前茅，并实现了企业经营业绩的快速发展。</p>
											</div>
											<div id="section-2">
												<h1>案例展示</h1>
												<p>“牌子老，款式新，工艺精，信誉好”是消费者对老凤祥品牌的共识。而这一切，来源于老凤祥不断创新的经营理念、严格的质量管理体系、完善的银楼管理标准和齐全的十大特色服务。广为流传的“老凤祥首饰，三代人的青睐”正反映出了消费者对这一首饰著名品牌的钟爱。</p>
											</div>
											<div id="section-3">
												<h1>品牌作用</h1>
												<p>上海是我国近代银楼业的发祥地，上海老凤祥银楼的前身“凤祥裕记银楼”于1848年（清道光28年）创建。
												1908年（光绪34年）迁址南京东路（现南京东路432号）延续至今，这一旧址便是现今的老凤祥总店。</p>
											</div>
											<div id="section-4">
												<h1>案例视频</h1>
												<p>老凤祥165周年华诞 赵雅芝欢乐中国行（姑苏站）</p>
												<p style="text-align: center">
												<img src="images/show_video.jpg" style="float: none;" />
												</p>
											</div>
										</div>
								</div>
							</div>


										<!--第三部分-->
							<div class="tab-pane table-responsive" id="laborComment">

								<div class="media" style="margin-top: 20px;">
   									<a class="pull-left" href="#">
      								<img class="media-object"  src="images/users/user.jpg" alt="用户头像">
   									</a>
   									<div class="media-body">
      									<h4 class="media-heading">玖七七_99:</h4>
      								很负责、手艺也很好
      									<div class="pull-right">2015-9-1 20:00</div>
      								</div>

								</div>
								<div class="media">
   									<a class="pull-left" href="#">
      								<img class="media-object"  src="images/users/user.jpg" alt="用户头像">
   									</a>
   									<div class="media-body">
      									<h4 class="media-heading">玖七七_99:</h4>
      								很负责、手艺也很好
      									<div class="pull-right">2015-9-1 20:00</div>

      								</div>
								</div>
								<div class="media">
   									<a class="pull-left" href="#">
      								<img class="media-object"  src="images/users/user.jpg" alt="用户头像">
   									</a>
   									<div class="media-body">
      									<h4 class="media-heading">玖七七_99:</h4>
      								很负责、手艺也很好
      								<div class="pull-right">2015-9-1 20:00</div>
      								</div>
								</div>

								<div class="pagination pagination-centered text-center">
				<ul class="list-inline">
					<li>
						<a href="#">上一页</a>
					</li>
					<li>
						<a href="#">1</a>
					</li>
					<li>
						<a href="#">2</a>
					</li>
					<li>
						<a href="#">3</a>
					</li>
					<li>
						<a href="#">4</a>
					</li>
					<li>
						<a href="#">5</a>
					</li>
					<li>
						<a href="#">下一页</a>
					</li>
				</ul>
			</div>
			<br/>

			<textarea cols="65" rows="10"></textarea>
			<button class="btn btn-success">我来点评</button><button class="btn btn-default" style="margin-left: 10px;" >取消</button>
							</div>
							
						</div>
					</div>
					
				</div>
			</div>
						</article>

s
					</div>
					<button class="close-button"><i class="fa fa-close"></i><span>Close</span></button>
				</section>


								<!--服务承诺-->
<div id="footerid"  >
<%@ include file="footer.jsp" %>
</div>
<!--底部 结束-->

        </div>
    </div>
    <!-- /containerLaborList -->

    <div id="modal_bespeak" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
			<div class="modal-dialog" >
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">预约工匠</h4>
					</div>
				<div class="modal-body">
					<div class="form-inline">
  					
				</div>
				<table class="table table-bordered text-center">
					<thead>
						<tr>
							<th></th><th>上午</th><th>下午</th><th>晚上</th>
						</tr>
					</thead>
					<tbody>
						<tr id="tr1">
							<td id="date1">9/5(周六)</td>
							<td></td>
							<td></td>
							<td><button class="btn btn-success">预约</button></td>
						</tr>
						<tr id="tr2">
							<td id="date2">9/6(周日)</td>
							<td><button class="btn btn-success">预约</button></td>
							<td></td>
							<td></td>
						</tr>
						<tr id="tr3">
							<td id="date3">9/7(周一)</td>
							<td></td>
							<td><button class="btn btn-success">预约</button></td>
							<td></td>
						</tr>
					</tbody>
				</table>
					
				</div>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
						
					</div>
				</div>
			</div>
		</div>
<script src="js/laborlist/classie.js"></script>
<script src="js/laborlist/main.js"></script>

<script type="text/javascript">
	function selectType(id){
		var typeid="#type"+id;
		$("#laborType").html($(typeid).text());
  		str=$("#laborType").text();
  		search($(typeid).text());
  		$("#laborTypeSubMenu").slideToggle("slow");
  		//$("#laborType").html("工匠类型");
	}
	
	function selectAddress(id){
		var addressid="#address"+id;
		$("#cityRange").html($(addressid).html());
  		var str=$("#cityRange").text();
  		search(str);
  		$("#cityRangeSubMenu").slideToggle("slow");
	}
	
	
	$("#serviceTimeSubMenu li a").bind("click", function(){
  		$("#serviceTime").html($(this).html());
  		var str="";
  		search(str);
  		$("#serviceTimeSubMenu").slideToggle("slow");
  		$("#serviceTime").html("时间");
	});
	
	function search1(){
		search($("#appendedInputButtons").val());
	}
	
</script>
<script type="text/javascript">
	function search(str2){
		$.post(
				"search_worker.action", 
				{ "queryStr": str2},
				   function(data){
				   	var size=data.rows.length;
				   	var str1="<header class='top-bar'><h2 class='top-bar__headline' style='font-size:18'>工匠展示</h2></header>";
				   	var str2;
				  	 $(".grid").empty();
				  	$(".scroll-wrap").empty();
				  	
				  	var pagenum=(data.total/9==0)?(data.total/9):(parseInt(data.total/9)+1);
					var strpage="<ul class='list-inline'><li><a href='javascript:prepage()'>上一页</a></li>";
				  	for (var j1=1;j1<=pagenum;j1++){
				  		strpage+="<li><a href='javascript:searchbypage("+j1+")' id='page"+j1+"'>"+j1+"</a></li>";
				  	}
				  	strpage+="<li><a href='javascript:nextpage("+pagenum+")'>下一页</a></li></ul>";
				 	 for(var i=0;i<size;i++){
				 		str1+="<a class='grid__item' href='javascript:click()' onclick='findcomment("+data.rows[i].workertbId+")'><h3 class='title title--preview'>"+data.rows[i].workertbScop+"</h3>"
				 		+"<span class='category'>"+data.rows[i].workertbName+"</span><div class='meta meta--preview'>"
				 		+"<img class='meta__avatar' src='image/worker/"+data.rows[i].workertbPhoto+"' alt='author04' /> <span class='meta__date'>"
				 		+"<i class='fa fa-star'></i>3星级服务</span> <span class='meta__reading-time'><i class='fa fa-bookmark-o'></i>8人点评</span></div></a>"
				 		 if(i==size-1){
				 			 str1+="<footer class='page-meta'>"+strpage+"</footer>"
				 		 }
				 		var string="<div class='lanrenzhijia'><div class='head'><ul class='left'>工匠案例介绍</ul><ul class='right'><a href='#' onclick='$('#section-1').animatescroll();'>施工步骤</a><span>|</span><a href='#' onclick='$('#section-2').animatescroll();'>案例展示</a><span>|</span><a href='#' onclick='$('#section-3').animatescroll();'>品牌作用</a><span>|</span><a href='#' onclick='$('#section-4').animatescroll();'>品牌视频</a></ul></div><div class='section'><div id='section-1'><h1>施工步骤</h1><img src='image/worker/worker1.jpg' /><p>木工进场——审图，决定木料，数量——材料和工具进场——施工人员应对施工顺序做出规划，最好具体到每个工作日应进行哪些施工——木作施工台的搭建——进行第一项木工施工：吊顶龙骨的架设——门窗制作——家具框架——木作表层封装——细节修补——上油漆——木工验收——木工退场。</p><p>一、毛坯木工阶段人员安排：1、木工(一般2-3人)2、小工(可另聘请1名)。一般4周左右，根据房屋大小、施工难度不同会有不同，需要与泥工同时交叉作业</p></div><div id='section-2'><h1>案例展示</h1><p>“牌子老，款式新，工艺精，信誉好”是消费者对老凤祥品牌的共识。而这一切，</p></div><div id='section-3'><h1>品牌作用</h1><p>上海是我国近代银楼业的发祥地，上海老凤祥银楼的前身“凤祥裕记银楼”于1848</p></div><div id='section-4'><h1>案例视频</h1><p>老凤祥165周年华诞 赵雅芝欢乐中国行（姑苏站）</p></div></div></div>";
				 		var str3=data.rows[i].workertbId;
				 		str2+="<article class='content__item'><span class='category category--full'>"+data.rows[i].workertbName+"</span><h3 class='title title--full'>"+data.rows[i].workertbScop+"</h3><div class='meta meta--full'><img class='meta__avatar' src='image/worker/"+data.rows[i].workertbPhoto+"' alt='author04' /><span class='meta__author'>"+data.rows[i].workertbName+"</span><span class='meta__date' style='margin-left:2px;font-size:12px'><i class='fa fa-star'></i>3星级服务</span><span class='meta__reading-time' style='margin-left:2px;font-size:12px'><i class='fa fa-bookmark-o'></i>8人点评</span><span class='meta__date text-center'><button class='btn btn-success btn-lg' data-toggle='modal' data-target='#modal_bespeak' onclick='reservationworker("+str3+")'>预约工匠</button></span><div class='clearfix'></div><ul>"
				 		+"<li style='margin-left:2px;font-size:14px'>工号: <b>"+data.rows[i].workertbId+"</b></li><li style='margin-left:2px;font-size:14px'>电话: <b>"+data.rows[i].workertbCellphone+"</b></li><li style='margin-left:2px;font-size:14px' >地址: <b>"+data.rows[i].workertbCadress+"</b></li><li class='lastUlli ' style='margin-left:2px;font-size:14px'>工作范围: <div class='pull-right'>"+data.rows[i].workertbScop+"</div></li></ul> </div>"
				 		+"<div class='row-fluid'><div class='span12'><div class='tabbable' id='tabs-616345'><ul class='nav nav-tabs'>"
				 		+"<li class='active'><a data-toggle='tab' href='#laborResume"+data.rows[i].workertbId+"'>工匠简介</a></li><li><a data-toggle='tab' href='#demoDisplay"+data.rows[i].workertbId+"'>案例展示</a></li><li ><a data-toggle='tab' href='#laborComment"+data.rows[i].workertbId+"' >客户评价</a></li></ul>"
				 		+"<div class='tab-content'><div class='tab-pane active table-responsive laborlistpadding' id='laborResume"+data.rows[i].workertbId+"'style=' background:#fff;'>"
				 		+"<p>《工匠精神:向价值型员工进化》主要讲的是工匠平静、安适、充实、愉悦、幸福。</p>"
				 		+"<p>活在当下，强在内心；打工者焦躁、忧郁、惶恐，永远为看不清的明天奔忙，外表强悍，内心空虚。工匠精神，是美国家族企业历经百年而不倒的秘诀，是瑞士品牌屹立世界之巅的利器，更是一种生命态度。</p>"
				 		+"<p>其价值在于精益求精，对匠心、精品的坚持和追求，其利虽微，却长久造福于世。如果你希望改变现状、打造一个与众不同的自己，成为被需要、被尊重、众望所归的成功者，就从当下的事情做起，成为一个充满魅力的工匠。拥有工匠精神，拥有内外丰盛的人生！ </p></div><div class='tab-pane table-responsive laborlistpadding' id='demoDisplay"+data.rows[i].workertbId+"'>"
				 		+string+"</div><div class='tab-pane table-responsive laborlistpadding' id='laborComment"+data.rows[i].workertbId+"' style=' background:#fff;'><div class='media' style='margin-top: 20px;'><a class='pull-left' href='#'>"
				 		+"<img class='media-object'  src='images/users/user.jpg' alt='用户头像'></a><div class='media-body'>"
				 		+"<h4 class='media-heading'>玖七七_99:</h4>很负责、手艺也很好<div class='pull-right'>2015-9-1 20:00</div></div>"
				 		+"<div class='pagination pagination-centered text-center'><ul class='list-inline'><li><a href='#'>上一页</a>"
				 		+"<button class='btn btn-success'>我来点评</button><button class='btn btn-default' style='margin-left: 10px;' >"
				 		+"取消</button></div></div></div></div></div></article>";
					 
				 	
				 	 }
				 	$(".grid").append(str1);
					$(".scroll-wrap").append(str2);
					$("#appendedInputButtons").val("");
				   }, "json");
	}
	
	
	$(function(){
		
		var queryStr = '<%=session.getAttribute("queryStr")%>';
		
		if(queryStr=='null'||queryStr ==null){
			search($("#appendedInputButtons").val());
			
		}else{
			search(queryStr);
			$.post("clearSession_worker.action");
		}
		
		
		$.post("type_workertype.action",
				   function(data){
				    $("#laborTypeSubMenu").empty();
				    var str10="";
				    for(var i=0;i<data.length;i++){
				    	str10+="<li><a href='javascript:selectType("+i+")' id='type"+i+"'>"+data[i].workertypetbName+"</a></li>";
				    }
				    $("#laborTypeSubMenu").append(str10);
				   }, "json");
		$.post("search_worker.action",
				   function(data){
				    $("#cityRangeSubMenu").empty();
				    var str11="";
				    
				  
				    for(var i=0;i<data.rows.length;i++){
				    	str11+="<li><a href='javascript:selectAddress("+i+")' id='address"+i+"'>"+data.rows[i].workertbCadress+"</a></li>";
				    }
				    $("#cityRangeSubMenu").append(str11);
				   }, "json");
		var date=new Date();
		var isnDay = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六","星期日");
		$("#date1").text((date.getMonth()+1)+"/"+(date.getDate())+"("+isnDay[date.getDay()]+")")
		$("#date2").text((date.getMonth()+1)+"/"+(date.getDate()+1)+"("+isnDay[date.getDay()+1]+")")
		$("#date3").text((date.getMonth()+1)+"/"+(date.getDate()+2)+"("+isnDay[date.getDay()+2]+")")
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
<script type="text/javascript">

	function click(){
		var bodyEl = document.body,
		docElem = window.document.documentElement,
		support = { transitions: Modernizr.csstransitions },
		// transition end event name
		transEndEventNames = { 'WebkitTransition': 'webkitTransitionEnd', 'MozTransition': 'transitionend', 'OTransition': 'oTransitionEnd', 'msTransition': 'MSTransitionEnd', 'transition': 'transitionend' },
		transEndEventName = transEndEventNames[ Modernizr.prefixed( 'transition' ) ],
		onEndTransition = function( el, callback ) {
			var onEndCallbackFn = function( ev ) {
				if( support.transitions ) {
					if( ev.target != this ) return;
					this.removeEventListener( transEndEventName, onEndCallbackFn );
				}
				if( callback && typeof callback === 'function' ) { callback.call(this); }
			};
			if( support.transitions ) {
				el.addEventListener( transEndEventName, onEndCallbackFn );
			}
			else {
				onEndCallbackFn();
			}
		},
		gridEl = document.getElementById('theGrid'),
		sidebarEl = document.getElementById('theSidebar'),
		gridItemsContainer = gridEl.querySelector('section.grid'),
		contentItemsContainer = gridEl.querySelector('section.content'),
		gridItems = gridItemsContainer.querySelectorAll('.grid__item'),
		contentItems = contentItemsContainer.querySelectorAll('.content__item'),
		closeCtrl = contentItemsContainer.querySelector('.close-button'),
		current = -1,
		lockScroll = false, xscroll, yscroll,
		isAnimating = false,
		menuCtrl = document.getElementById('menu-toggle'),
		menuCloseCtrl = sidebarEl.querySelector('.close-button');
		footerId=document.getElementById('footerid');

	/**
	 * gets the viewport width and height
	 * based on http://responsejs.com/labs/dimensions/
	 */
	function getViewport( axis ) {
		var client, inner;
		if( axis === 'x' ) {
			client = docElem['clientWidth'];
			inner = window['innerWidth'];
		}
		else if( axis === 'y' ) {
			client = docElem['clientHeight'];
			inner = window['innerHeight'];
		}
		
		return client < inner ? inner : client;
	}
	function scrollX() { return window.pageXOffset || docElem.scrollLeft; }
	function scrollY() { return window.pageYOffset || docElem.scrollTop; }

	function init() {
		initEvents();
	}

	function initEvents() {
		[].slice.call(gridItems).forEach(function(item, pos) {
			// grid item click event
			item.addEventListener('click', function(ev) {
				ev.preventDefault();
				if(isAnimating || current === pos) {
					return false;
				}
				isAnimating = true;
				// index of current item
				current = pos;
				// simulate loading time..
				classie.add(item, 'grid__item--loading');
				setTimeout(function() {
					classie.add(item, 'grid__item--animate');
					// reveal/load content after the last element animates out (todo: wait for the last transition to finish)
					setTimeout(function() { loadContent(item); }, 500);
				}, 1000);
			});
		});

		closeCtrl.addEventListener('click', function() {
			// hide content
			hideContent();
		});

		// keyboard esc - hide content
		document.addEventListener('keydown', function(ev) {
			if(!isAnimating && current !== -1) {
				var keyCode = ev.keyCode || ev.which;
				if( keyCode === 27 ) {
					ev.preventDefault();
					if ("activeElement" in document)
    					document.activeElement.blur();
					hideContent();
				}
			}
		} );

		// hamburger menu button (mobile) and close cross
		menuCtrl.addEventListener('click', function() {
			if( !classie.has(sidebarEl, 'sidebar--open') ) {
				classie.add(sidebarEl, 'sidebar--open');	
			}
		});

		menuCloseCtrl.addEventListener('click', function() {
			if( classie.has(sidebarEl, 'sidebar--open') ) {
				classie.remove(sidebarEl, 'sidebar--open');
			}
		});
	}

	function loadContent(item) {
		// add expanding element/placeholder 
		
		var dummy = document.createElement('div');
		dummy.className = 'placeholder';

		// set the width/heigth and position
		dummy.style.WebkitTransform = 'translate3d(' + (item.offsetLeft - 5) + 'px, ' + (item.offsetTop - 5) + 'px, 0px) scale3d(' + item.offsetWidth/gridItemsContainer.offsetWidth + ',' + item.offsetHeight/getViewport('y') + ',1)';
		dummy.style.transform = 'translate3d(' + (item.offsetLeft - 5) + 'px, ' + (item.offsetTop - 5) + 'px, 0px) scale3d(' + item.offsetWidth/gridItemsContainer.offsetWidth + ',' + item.offsetHeight/getViewport('y') + ',1)';

		// add transition class 
		classie.add(dummy, 'placeholder--trans-in');

		// insert it after all the grid items
		gridItemsContainer.appendChild(dummy);
		
		// body overlay
		classie.add(bodyEl, 'view-single');

		setTimeout(function() {
			// expands the placeholder
			dummy.style.WebkitTransform = 'translate3d(-5px, ' + (scrollY() - 5) + 'px, 0px)';
			dummy.style.transform = 'translate3d(-5px, ' + (scrollY() - 5) + 'px, 0px)';
			// disallow scroll
			window.addEventListener('scroll', noscroll);
		}, 25);

		onEndTransition(dummy, function() {
			// add transition class 
			classie.remove(dummy, 'placeholder--trans-in');
			classie.add(dummy, 'placeholder--trans-out');
			// position the content container
			contentItemsContainer.style.top = scrollY() + 'px';
			// show the main content container
			classie.add(contentItemsContainer, 'content--show');
			// show content item:
			classie.add(contentItems[current], 'content__item--show');
			// show close control
			classie.add(closeCtrl, 'close-button--show');
			// sets overflow hidden to the body and allows the switch to the content scroll
			classie.addClass(bodyEl, 'noscroll');
			classie.add(footerId, 'footerhide');

			isAnimating = false;
		});
	
		
	}

	function hideContent() {
		var gridItem = gridItems[current], contentItem = contentItems[current];
		classie.remove(footerId, 'footerhide');
		classie.remove(contentItem, 'content__item--show');
		classie.remove(contentItemsContainer, 'content--show');
		classie.remove(closeCtrl, 'close-button--show');
		classie.remove(bodyEl, 'view-single');

		setTimeout(function() {
			var dummy = gridItemsContainer.querySelector('.placeholder');

			classie.removeClass(bodyEl, 'noscroll');

			dummy.style.WebkitTransform = 'translate3d(' + gridItem.offsetLeft + 'px, ' + gridItem.offsetTop + 'px, 0px) scale3d(' + gridItem.offsetWidth/gridItemsContainer.offsetWidth + ',' + gridItem.offsetHeight/getViewport('y') + ',1)';
			dummy.style.transform = 'translate3d(' + gridItem.offsetLeft + 'px, ' + gridItem.offsetTop + 'px, 0px) scale3d(' + gridItem.offsetWidth/gridItemsContainer.offsetWidth + ',' + gridItem.offsetHeight/getViewport('y') + ',1)';

			onEndTransition(dummy, function() {
				// reset content scroll..
				contentItem.parentNode.scrollTop = 0;
				gridItemsContainer.removeChild(dummy);
				classie.remove(gridItem, 'grid__item--loading');
				classie.remove(gridItem, 'grid__item--animate');
				lockScroll = false;
				window.removeEventListener( 'scroll', noscroll );
			});
			
			// reset current
			current = -1;
		}, 25);
	}

	function noscroll() {
		if(!lockScroll) {
			lockScroll = true;
			xscroll = scrollX();
			yscroll = scrollY();
		}
		window.scrollTo(xscroll, yscroll);
	}

	init();

	}
	var pageSize=4;//每页大小
	var currPage=1;//当前页
	var totalPage=1;//总页数
	function findcomment(workerid)
	{
		
		$.post("workerComment_findcomment.action",{"queryStr":workerid,"rows":pageSize,"orderFieldStr": "workercommenttb_time","order": "desc"},function(data){
			var count=data.total;
			totalPage=count%pageSize==0?count/pageSize:parseInt(count/pageSize)+1;
			currPage = 1;
			showTable(data,workerid);
		},"json");
	}

	function showTable( data, workerid)
	{
		var comments=data.rows;
		var result="";
		var strid="#laborComment"+workerid;
		$(strid).empty();
		if(comments.length>0)
		{
			for(var i=0;i<comments.length;i++)
			{
				var time = dateformat(comments[i].workercommenttbTime);
				result+="<div class='media' ><a class='pull-left' href='#'><img class='media-object' src='image/head/"+comments[i].user.usertbHeadpic+"' alt='用户头像'> "
				+"</a><div class='media-body'><h4 class='media-heading'>"+comments[i].user.usertbName+" :</h4>"+comments[i].workercommenttbContent+"<div class='pull-right'>"+time+"</div>"
				+"</div></div>";
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
		$(strid).append(result);
		
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
<script type="text/javascript">
	function reservationworker(str3){
		var id=str3;
		var date=new Date();
		var firstDate=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
		var lastDate=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+(date.getDate()+2);
		$.post("getReservationSchedule_reservation.action", { "firstDate": firstDate,"workerId":id ,"lastDate":lastDate},
				   function(data){
				     $("#tr1").empty();
				     $("#tr2").empty();
				     $("#tr3").empty();
				     var date=new Date();
				     var date31=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+"-上午";
				     var date32=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+"-下午";
				     var date33=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+"-晚上";
				     var date41=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+(date.getDate()+1)+"-上午";
				     var date42=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+(date.getDate()+1)+"-下午";
				     var date43=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+(date.getDate()+1)+"-晚上";
				     var date51=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+(date.getDate()+2)+"-上午";
				     var date52=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+(date.getDate()+2)+"-下午";
				     var date53=date.getFullYear()+"-"+(date.getMonth()+1)+"-"+(date.getDate()+2)+"-晚上";
						
				     $("#tr1").append("<td id='date1'>9/5(周六)</td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date31+"\")'>预约</a></td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date32+"\")'>预约</a></td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date33+"\")'>预约</a></td>");
				     $("#tr2").append("<td id='date2'>9/5(周六)</td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date41+"\")'>预约</a></td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date42+"\")'>预约</a></td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date43+"\")'>预约</a></td>");
				     $("#tr3").append("<td id='date3'>9/5(周六)</td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date51+"\")'>预约</a></td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date52+"\")'>预约</a></td><td><a class='btn btn-success' href='javascript:res("+id+",\""+date53+"\")'>预约</a></td>");
				     var isnDay = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六","星期日");
						$("#date1").text((date.getMonth()+1)+"/"+(date.getDate())+"("+isnDay[date.getDay()]+")")
						$("#date2").text((date.getMonth()+1)+"/"+(date.getDate()+1)+"("+isnDay[date.getDay()+1]+")")
						$("#date3").text((date.getMonth()+1)+"/"+(date.getDate()+2)+"("+isnDay[date.getDay()+2]+")")
				     var date1=new Date();
				     var d=date1.getDate();
				     var d1=d+1;
				     var d2=d+2;
				     
				     var size=data.length;
				     for(var i=0;i<size;i++){
				    	var d3= data[i].reservationtbDate.split("T")[0].split("-")[2];
				    	
				    	if(d3==d){
				    		$("#tr1 td:nth-child("+(data[i].reservationtbPeriod+1)+")").empty();
				    	}
				    	else if(d3==d1){
				    		$("#tr2 td:nth-child("+(data[i].reservationtbPeriod+1)+")").empty();
				    	} 
				    	else if(d3==d2){
				    		$("#tr3 td:nth-child("+(data[i].reservationtbPeriod+1)+")").empty();
				    	} 
				     }
				     
				    
				   }, "json");
	}
</script>
<script type="text/javascript">
 function res(id,date){
	 
	 $.post("getWorkerInfo_worker.action", { "workerId": id,"date":date },
			   function(data){
			    
			     window.location.href = "to_bespeakOrder.action";
			   }, "json");
 }
 var contentpage=1;
 function searchbypage(id){
	 var pid="#page"+id
	 contentpage=id;
	 pagenation1($(pid).text());
 }
 function prepage(){
	 contentpage=contentpage-1;
	 if(contentpage<=1){
		 contentpage=1;
	 }
	 pagenation1(contentpage);
 }
 function nextpage(pagenumber){
	 contentpage=contentpage*1+1;
	 if(contentpage>=pagenumber){
		 contentpage=pagenumber;
	 }
	 pagenation1(contentpage);
 }
 function pagenation1(pagenum){
	 $.post(
				"search_worker.action", 
				{ "page": pagenum },
				   function(data){
				   	var size=data.rows.length;
				   	var str1="<header class='top-bar'><h2 class='top-bar__headline' style='font-size:18'>工匠展示</h2></header>";
				   	var str2;
				  	 $(".grid").empty();
				  	$(".scroll-wrap").empty();
				  	
				  	var pagenum=(data.total/9==0)?(data.total/9):(parseInt(data.total/9)+1);
					var strpage="<ul class='list-inline'><li><a href='javascript:prepage()'>上一页</a></li>";
				  	for (var j1=1;j1<=pagenum;j1++){
				  		strpage+="<li><a href='javascript:searchbypage("+j1+")' id='page"+j1+"'>"+j1+"</a></li>";
				  	}
				  	strpage+="<li><a href='javascript:nextpage("+pagenum+")'>下一页</a></li></ul>";
				 	 for(var i=0;i<size;i++){
				 		str1+="<a class='grid__item' href='javascript:click()' onclick='findcomment("+data.rows[i].workertbId+")'><h3 class='title title--preview'>"+data.rows[i].workertbScop+"</h3>"
				 		+"<span class='category'>"+data.rows[i].workertbName+"</span><div class='meta meta--preview'>"
				 		+"<img class='meta__avatar' src='image/worker/"+data.rows[i].workertbPhoto+"' alt='author04' /> <span class='meta__date'>"
				 		+"<i class='fa fa-star'></i>3星级服务</span> <span class='meta__reading-time'><i class='fa fa-bookmark-o'></i>8人点评</span></div></a>"
				 		 if(i==size-1){
				 			 str1+="<footer class='page-meta'>"+strpage+"</footer>"
				 		 }
				 		var string="<div class='lanrenzhijia'><div class='head'><ul class='left'>工匠案例介绍</ul><ul class='right'><a href='#' onclick='$('#section-1').animatescroll();'>施工步骤</a><span>|</span><a href='#' onclick='$('#section-2').animatescroll();'>案例展示</a><span>|</span><a href='#' onclick='$('#section-3').animatescroll();'>品牌作用</a><span>|</span><a href='#' onclick='$('#section-4').animatescroll();'>品牌视频</a></ul></div><div class='section'><div id='section-1'><h1>施工步骤</h1><img src='image/worker/worker1.jpg' /><p>木工进场——审图，决定木料，数量——材料和工具进场——施工人员应对施工顺序做出规划，最好具体到每个工作日应进行哪些施工——木作施工台的搭建——进行第一项木工施工：吊顶龙骨的架设——门窗制作——家具框架——木作表层封装——细节修补——上油漆——木工验收——木工退场。</p><p>一、毛坯木工阶段人员安排：1、木工(一般2-3人)2、小工(可另聘请1名)。一般4周左右，根据房屋大小、施工难度不同会有不同，需要与泥工同时交叉作业</p></div><div id='section-2'><h1>案例展示</h1><p>“牌子老，款式新，工艺精，信誉好”是消费者对老凤祥品牌的共识。而这一切，</p></div><div id='section-3'><h1>品牌作用</h1><p>上海是我国近代银楼业的发祥地，上海老凤祥银楼的前身“凤祥裕记银楼”于1848</p></div><div id='section-4'><h1>案例视频</h1><p>老凤祥165周年华诞 赵雅芝欢乐中国行（姑苏站）</p></div></div></div>";
				 		var str3=data.rows[i].workertbId;
				 		str2+="<article class='content__item'><span class='category category--full'>"+data.rows[i].workertbName+"</span><h3 class='title title--full'>"+data.rows[i].workertbScop+"</h3><div class='meta meta--full'><img class='meta__avatar' src='image/worker/"+data.rows[i].workertbPhoto+"' alt='author04' /><span class='meta__author'>"+data.rows[i].workertbName+"</span><span class='meta__date' style='margin-left:2px;font-size:12px'><i class='fa fa-star'></i>3星级服务</span><span class='meta__reading-time' style='margin-left:2px;font-size:12px'><i class='fa fa-bookmark-o'></i>8人点评</span><span class='meta__date text-center'><button class='btn btn-success btn-lg' data-toggle='modal' data-target='#modal_bespeak' onclick='reservationworker("+str3+")'>预约工匠</button></span><div class='clearfix'></div><ul>"
				 		+"<li style='margin-left:2px;font-size:14px'>工号: <b>"+data.rows[i].workertbId+"</b></li><li style='margin-left:2px;font-size:14px'>电话: <b>"+data.rows[i].workertbCellphone+"</b></li><li style='margin-left:2px;font-size:14px' >地址: <b>"+data.rows[i].workertbCadress+"</b></li><li class='lastUlli ' style='margin-left:2px;font-size:14px'>工作范围: <div class='pull-right'>"+data.rows[i].workertbScop+"</div></li></ul></div>"
				 		+"<div class='row-fluid'><div class='span12'><div class='tabbable' id='tabs-616345'><ul class='nav nav-tabs'>"
				 		+"<li class='active'><a data-toggle='tab' href='#laborResume"+data.rows[i].workertbId+"'>工匠简介</a></li><li><a data-toggle='tab' href='#demoDisplay"+data.rows[i].workertbId+"'>案例展示</a></li><li ><a data-toggle='tab' href='#laborComment"+data.rows[i].workertbId+"' >客户评价</a></li></ul>"
				 		+"<div class='tab-content'><div class='tab-pane active table-responsive' id='laborResume"+data.rows[i].workertbId+"'style=' background:#fff;'>"
				 		+"<p>《工匠精神:向价值型员工进化》主要讲的是工匠平静、安适、充实、愉悦、幸福。</p>"
				 		+"<p>活在当下，强在内心；打工者焦躁、忧郁、惶恐，永远为看不清的明天奔忙，外表强悍，内心空虚。工匠精神，是美国家族企业历经百年而不倒的秘诀，是瑞士品牌屹立世界之巅的利器，更是一种生命态度。</p>"
				 		+"<p>其价值在于精益求精，对匠心、精品的坚持和追求，其利虽微，却长久造福于世。如果你希望改变现状、打造一个与众不同的自己，成为被需要、被尊重、众望所归的成功者，就从当下的事情做起，成为一个充满魅力的工匠。拥有工匠精神，拥有内外丰盛的人生！ </p></div><div class='tab-pane table-responsive' id='demoDisplay"+data.rows[i].workertbId+"'>"
				 		+string+"</div><div class='tab-pane table-responsive' id='laborComment"+data.rows[i].workertbId+"' style=' background:#fff;'><div class='media' style='margin-top: 20px;'><a class='pull-left' href='#'>"
				 		+"<img class='media-object'  src='images/users/user.jpg' alt='用户头像'></a><div class='media-body'>"
				 		+"<h4 class='media-heading'>玖七七_99:</h4>很负责、手艺也很好<div class='pull-right'>2015-9-1 20:00</div></div>"
				 		+"<div class='pagination pagination-centered text-center'><ul class='list-inline'><li><a href='#'>上一页</a>"
				 		+"<button class='btn btn-success'>我来点评</button><button class='btn btn-default' style='margin-left: 10px;' >"
				 		+"取消</button></div></div></div></div></div></article>";
					 
				 	
				 	 }
				 	$(".grid").append(str1);
					$(".scroll-wrap").append(str2);
					$("#appendedInputButtons").val("");
				   }, "json");
 }
 function EnterPress1(e){
	    var e=e||window.event;
	    if (e.keyCode == 13) {
	  
	   	search1();
	    }
	}
</script>

</body>
</html>
