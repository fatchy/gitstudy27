<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="header.jsp"%>
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
<script src="js/laborlist/modernizr.custom.js"></script>

<link rel="stylesheet" href="css/strategylist1/strategylist1.css">
<script src="js/strategylist1/waypoints.min.js"></script>

</head>
<body>

	<div class="containerLaborList nav-bottom-height">
		<button id="menu-toggle" class="menu-toggle">
			<span>Menu</span>
		</button>
		<div id="theSidebar" class="sidebar">
			<button class="close-button fa fa-fw fa-close"></button>
			<nav class="codrops-demos">
				<ul id="accordion" class="accordion">
						<li>
						<div class="link" id="Homestrategy">家装攻略<i class="fa fa-chevron-down"></i></div>
				<ul class="submenu" id="strategySubMenu">
				<li><a href="javascript:void(0)">木工</a></li>
				<li><a href="javascript:void(0)">焊工</a></li>
				<li><a href="javascript:void(0)">水电工</a></li>
				<li><a href="javascript:void(0)">油漆工</a></li>
				<li><a href="javascript:void(0)">装修工</a></li>
			</ul>
		</li>
		<li>
			<div class="link" id="Homediary">家装日记<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu" id="diarySubMenu">
				<li><a href="javascript:void(0)">上午</a></li>
				<li><a href="javascript:void(0)">中午</a></li>
				<li><a href="javascript:void(0)">下午</a></li>
			</ul>
		</li>
		<li>
			<div class="link" id="Homeknowledge">家装知识<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu" id="knowledgeSubMenu">
				<li><a href="javascript:void(0)">静安区</a></li>
				<li><a href="javascript:void(0)">浦东区</a></li>
				<li><a href="javascript:void(0)">松江区</a></li>
				<li><a href="javascript:void(0)">闵行区</a></li>
			</ul>
		</li>
		<li>
			<input type="text" id="searchcontent" placeholder="请输入您要阅读的相关文章" onkeypress="EnterPress1(event)"></input>
			<a id="strategySearch" class="btn btn-default" href="javascript:searcharticle()"><i class="fa fa-search" style="left:15px;top:6px;"></i></a>
		</li>
	</ul>
			</nav>

		</div>
		<div id="theGrid" class="main">
			
			<div class="wrapper" style="margin-top:-30px;margin-left:20px;" id="wrapper">
						<header>
							<h1>Title：<lable style="font-size:30px" id="title">标题</lable></h1>
						</header>
						<div class="nav-container">
							<nav id="nav1">
								<ul>
									<li><a href="#chapter-1" class="selected">Chapter I</a></li>
									<li><a href="#chapter-2">Chapter II</a></li>
									<li><a href="#chapter-3">Chapter III</a></li>
									<li><a href="#chapter-4">Chapter IV</a></li>
									<li><a href="#chapter-5">Chapter V</a></li>
								</ul>
								<div class="nav-left"></div>
								<div class="nav-right"></div>
								<div class="nav-above"></div>
							</nav>
						</div>
											<section id="chapter-1">
							<img src="images/dino.jpg" />
							<div class="column left">
								<h3>1、瓷砖的分类 </h3>
								<p>1）按使用范围划分：
瓷砖分地砖、内墙砖和外墙砖（家里带露台的用得上）。</p>
								<p></p>
								<p></p>
								<p></p>
								<p></p>
							</div>
							<div class="column right">
								<p>2）瓷砖按处理工艺分：
为釉面砖和玻化砖。其中，玻化砖根据其工艺不同又有：渗花、多管布料、超微粉、刚玉石、微晶玉等划分。不同的处理工艺，其抗污性、吸水性都不同。以上工艺中：渗花工艺各项理化性能最弱，多管布料较渗花稍强，超微粉和刚玉石（两种工艺理化性能差不多）又较多管布料强，微晶玉是最近两年刚刚出来的新工艺，各项理化性能都最强，号称“零渗透”，不过其价格也实在昂贵。
死抗着初出茅庐的时候，多少有点初生牛犊不怕虎，曾经订了一款欧神诺微晶玉地砖，300多元一平米，广泛征求意见后，被包括诗玫在内一些同学含蓄的称“太夸张了！”，最后索性给退了，现在想起来就后怕，当初真是疯了！</p>
								<p></p>
								<p></p>
								<p></p>
								<p></p>
							</div>

							<hr />
						</section>

					<section id="chapter-2">
							<img src="images/dino.jpg" />
							<div class="column left">
								<h3>2、怎样挑选瓷砖</h3>
								<p>关于怎样挑选瓷砖，大致是从以下七个方面入手： </p>
								<p>1）看瓷砖外观是否平直。试想，如果每块瓷砖的表面、侧面都不平整，再好的瓦工也铺贴不出整体平整的效果来； </p>
								<p>2）看瓷砖表面是否有斑点、裂纹、砖碰、波纹、剥皮，缺釉等问题，尺寸是否一致； </p>
								<p>3）看瓷砖的花色图案。好的产品花色图案细腻、逼真，而质量差的瓷砖花色图案会有缺色、断线、错位等；</p>
								<p>4）辨别瓷砖背面的颜色。釉面砖的背面颜色是红色的，而玻化砖背面应呈现乳白色； </p>
							</div>
							<div class="column right">
								<p>关于此点，死抗着还有几点补充： </p>
								<p>1）有些商家一听你要试水，拿起水杯子就往砖的正面浇。如果正面也能看出来渗水，那还叫瓷砖啊？！他倒不傻，可咱们也不傻，纠正的方法是：让他把砖翻过来；</p>
								<p>2）现在市场上有几款砖，如萨米特、常新（传说已停产），用一种高压工艺做出来的，别说正面，就连背面也几乎一点不渗水，是不是质量就最好呢？为此我曾经问过我家瓦工，他说这样的砖不渗水，水泥也粘不牢，不建议我买。看来，大家选择的时候还需慎重，别走极端。</p>
								<p>3）挑砖，先用角尺看看是否方正，再把两块砖叠在一起，捏住一个角看，能看出砖平不平，然后再把两块砖并在一起，看大小是否一样。验砖，有商家所谓卖砖把缝的损耗量算进去了，然后到货面积比购买面积小，别上当，最好在购买时就把这个问题说明白。 </p>
								<p></p>
							</div>

							<hr />
						</section>

						<section id="chapter-3">
							<img src="images/dino.jpg" />
							<div class="column left">
								<h3>3、去哪里购买瓷砖 </h3>
								<p>1）去瓷砖仓库购买瓷砖
北京市最著名的瓷砖仓库有十里河的闽龙和丰台小井（也就是传说中的七里庄，我曾经以为丰台小井和七里庄是两个地方，结果被一开摩的拉着绕小井一圈，郁闷……），各种品牌的瓷砖一应俱全，而且几乎所有的磁砖都是仓储式销售，同学们可以在建材超市或建材市场看好品牌、价格和花样，然后到那边去寻，价格较一般建材市场便宜，而且还有一点不容忽视的是，仓储式销售的瓷砖——好砍价。死抗着就是在十里河闽龙选购的罗马利奥仿古砖。 
特别需要提示的是：在仓库购买瓷砖一般商家不管送货，因为他们只负责经销商大批量的配送，所以，如果没有车最好还是考虑就近买砖。补充一句，即便有私家车，也别轻易拿客车当货车，为了拉砖而修车，不值。当初我是求汤师傅跟我跑了一趟十里河才搞定的罗马利奥。 </p>
								<p>2）在家门口的建材市场购买瓷砖
在家门口买砖的原因很简单：退补砖方便。。顺道补充一句，我的砖都是论片儿买的，因为最后涉及退补砖往往是论片不论平米。 </p>
								
								<p></p>
								<p></p>
							</div>
							<div class="column right">
								<p>◎总结的瓷砖经验：
如果想省钱还买好砖就去东方家园、好美家买特价砖，我也为此专跑去过东方家园、好美家，觉得那里的特价砖也竟是些杂牌子，而且质量很一般（我曾拿着矿泉水瓶子做过试水）。再而且可选择面实在太窄了，无奈之下，还是一脑袋扎到建材市场寻觅去了。 </p>
								<p></p>
								<p></p>
								<p></p>
								<p></p>
							</div>

							<hr />
						</section>

						<section id="chapter-4">
							<img src="images/dino.jpg" />
							<div class="column left">
								<h3>4、瓷砖品牌 </h3>
								<p>瓷砖品牌我只知道有那么一群名人组成的什么：马可波罗、诺贝尔、蒙娜丽莎、罗马利奥、维纳斯、雅典娜……看，连神都不放过，真是服了这些商家。</p>
								<p>曾经误认为这些砖都是进口的，后来才知道，几乎都是广东的。这些品牌瓷砖大都在六、七十元一平，更好的瓷砖如亚细亚、金舵、欧神诺更是动辄一、二百元一平。虽然琴画前辈曾说过：瓷砖每100元拉一个档次，但作为普通消费者，还是把眼光放平和一点的好，而且，客观地说，装修到最后你会发现，在瓷砖的选择上如果恰到好处，真的可以省很多钱。 </p>
								<p></p>
								<p></p>
								<p></p>
							</div>
							<div class="column right">
								<p>◎选择的三款墙地砖</p>
								<p>
实际证明，在建材市场买瓷砖比在建材超市购买可选择面广，且价格公道，就拿我选择的罗马利奥、高陶、梅盛三款墙地砖来说吧，罗马利奥没得说，品牌的东西，质量绝对一流；高陶曾是中泰合资的企业，其生产的高陶（COTTO）洁具也曾经在建材市场火爆过，死抗着前阵子还在阳坊涮羊肉总店看见卫生间的洁具都是COTTO的，最后听说中泰双方因为配合不是很好就撤摊子了；我在这里重点表扬一下梅盛瓷砖，瓦工说这款砖的质量不错，而且价格也就20多元每平米，实在是物美价廉。优雅兰推荐：冠军瓷砖（号称最满意）和吉尼斯墙、地砖。 
焦点网友推荐：马可波罗628系列仿大理石的。订地砖要打出富裕，要求商家多了可以退的。</p>
								<p></p>
								<p></p>
								<p></p>
							</div>

							<hr />
						</section>

						<section id="chapter-5">
							<img src="images/dino.jpg" />
							<div class="column left">
								<h3>5、墙地砖铺贴常识</h3>
								<p>1）关于干铺和湿铺：
现在贴砖一般是墙砖湿铺，地砖干铺，干铺比湿铺更能降低空鼓率，但干铺要比湿铺成本高（其实主要涉及一个沙石比的问题）。工人往往会说墙砖干铺挂不住，这个理由还算可以接受吧，但如果工人提出地砖也要湿铺那你可要小心了，必须抗议。 </p>
								
								<p>2）关于墙、地砖尺寸：
就一般户型而言，卫生间的地砖尺寸一般在300*300mm左右为最佳，厨房应该在500*500mm左右为最佳，我一个邻居厨房地砖用的200*200，一进厨房，三个字“闹眼睛”。对了，地砖一定要注意其防滑性能，还真有邻居用了不防滑的地砖，踩在上面不是一般的不爽，是非常非常的不爽！至于墙砖尺寸，完全根据个人爱好了，小到马赛克、大到350的墙砖都有。有的同学容易产生一个误区，认为家里卫生间比较小应该用小的墙砖。其实小空间用大墙砖才更能显大，死抗着对这句话负责任，同学们放心就是。 </p>
								<p></p>
								<p></p>
							</div>
							<div class="column right">
								<p>3）关于耗材：</p>
								<p>
不同于地板，瓷砖的耗材一般很难准确计算，因为决定耗材多少的因素相对地板来说较复杂，主要有以下四个方面：</p>
								<p>?墙地面规则程度：铺贴表面越不规则，损耗越多。 </p>
								<p>?瓷砖尺寸：瓷砖越大，损耗越多。</p>
								<p>?瓷砖质量：瓷砖质量越差，损耗越多。（质量差，瓦工在砖刚上墙时敲击砖面造成瓷砖破碎的可能越大） </p>
								<p>?铺贴方式：非整砖之间在接缝处如果都要求用瓷砖的边对接损耗就大（但是美观）； </p>
							</div>

							<hr />
						</section>


					</div>
		
			<div id="footerid">
				<%@ include file="footer.jsp"%>
			</div>
			<!--底部 结束-->

		</div>
	</div>
	<!-- /containerLaborList -->


	<script src="js/laborlist/classie.js"></script>
	<script src="js/laborlist/laborlist.main.js"></script>
<script type="text/javascript">

function selectstrategy(str){
	var id="#"+str;
	$("#Homestrategy").html($(id).html());
	var str1=$("#Homestrategy").text();
	searcharticle1(str1);
	$("#strategySubMenu").slideToggle("slow");
}
function selectdiary(str){
	var id="#"+str;
	$("#Homediary").html($(id).html());
	var str1=$("#Homediary").text();
	searcharticle1(str1);
	$("#diarySubMenu").slideToggle("slow");
}
function selectknowledge(str){
	var id="#"+str;
	$("#Homeknowledge").html($(id).html());
	var str1=$("#Homeknowledge").text();
	searcharticle1(str1);
	$("#knowledgeSubMenu").slideToggle("slow");
}
$(function() {
	var user = '<%=session.getAttribute("loginuser")%>';
		

			if (user == "null") {

				$("#login_li").show();
				$("#userimg_li").hide();
			} else {
				$("#login_li").hide();
				$("#userimg_li").show();
			}
			getArticleInfo();
		});
	function searcharticle(){
		searcharticle1($("#searchcontent").val());
		 $("#searchcontent").val("");
	}
	function searcharticle1(str){
	$.post("searchArticle_article", { "queryStr": str },
			   function(data){
			    
			    $("#wrapper").html(data);
			   
			   });
	}
	function getArticleInfo(str){
		$.post("getAllArticle_article", { "queryStr": str },
				   function(data){
					var str1="";
					var str2="";
					var str3="";
					$("#strategySubMenu").empty();
					$("#diarySubMenu").empty();
					$("#knowledgeSubMenu").empty();
				    for(var i=0;i<data.rows.length;i++){
				    	if(data.rows[i].articletbType==1){
				    		str1+="<li><a href='javascript:selectstrategy("+i+")' id='"+i+"'>"+data.rows[i].articletbTitle+"</a></li>"
				    	}
				    	if(data.rows[i].articletbType==2){
				    		str2+="<li><a href='javascript:selectdiary("+i+")' id='"+i+"'>"+data.rows[i].articletbTitle+"</a></li>"
				    	}
				    	if(data.rows[i].articletbType==3){
				    		str3+="<li><a href='javascript:selectknowledge("+i+")' id='"+i+"'>"+data.rows[i].articletbTitle+"</a></li>"
				    	}
				    }
				    $("#strategySubMenu").append(str1);
				    $("#diarySubMenu").append(str2);
				  	$("#knowledgeSubMenu").append(str3);
				   });
	}
	function EnterPress1(e){
	    var e=e||window.event;
	    if (e.keyCode == 13) {
	  
	    	searcharticle();
	    }
	}
	
</script>
</body>
</html>
