<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>麦浩斯家装商城</title>

<link href="../../css/common/bootstrap.css" rel='stylesheet' type='text/css' />
<script type='text/javascript' src="../../js/common/jquery-2.0.0.min.js"></script>
<link href="../../css/common/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="../../css/common/font-awesome.min.css"/>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="麦浩斯手艺人 商家入驻 家装商城" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- start menu -->
<link href="../../css/fitment-mall/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="../../js/fitment-mall/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="../../js/fitment-mall/menu_jquery.js"></script>
<script src="../../js/fitment-mall/simpleCart.min.js"> </script>
<link href="../../css/fitment-mall/form.css" rel="stylesheet" type="text/css" media="all" />
<!--etalage-->
<link rel="stylesheet" href="../../css/fitment-mall/etalage.css">
 <link rel="stylesheet"  type="text/css"  href="../../css/fitment-mall/jquery-ui.css">
<script src="../../js/fitment-mall/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>


<!-- //etalage-->
  
</head>
<body>
<!-- header -->
<div class="top_bg">
	<div class="container">
		<div class="header_top-sec">
			<div class="top_right">
				<ul>
					<li><a href="#">帮助</a></li>|
					<li><a href="#">反馈</a></li>|
					<li><a href="../../login.html">注册</a></li>
				</ul>
			</div>
			<div class="top_left">
				<ul>
					<li class="top_link">电话: <a href="mailto@example.com">0734-888888</a></li>|
					<li class="top_link"><a href="../index.jsp">主页</a></li>|					
				</ul>
				
			</div>
				<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="header_top">
	 <div class="container">
		  <div class="logo">
		 	<a href="../index.jsp"><img src="../../images/common/logo1_meitu_1.jpg" alt=""/></a>			 
		 </div>
		 <div class="header_right">	
			 <div class="login">
				 <a href="../../login.html">登录</a>
			 </div>
			 <div class="cart box_1">
				<a href="cart.html">
					<h3> <span class="simpleCart_total">￥0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> 件)<img src="../../images/firment-mall/bag.png" alt=""></h3>
				</a>	
				<p><a href="javascript:;" class="simpleCart_empty">购物车</a></p>
				<div class="clearfix"> </div>
			 </div>			 
		 </div>
		  <div class="clearfix"></div>	
	 </div>
</div>
<!--cart-->
	 
<!------>
<div class="mega_nav">
	 <div class="container">
		 <div class="menu_sec">
		 <!-- start header menu -->
		 <ul class="megamenu skyblue">
			 <li class="active grid"><a class="color1" href="../index.jsp">返回首页</a></li>
			 <li class="grid"><a class="color2" href="#">家具软装</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>沙发</h4>
								<ul>
									<li><a href="products.jsp">全部</a></li>
									<li><a href="products.jsp">布艺沙发</a></li>
									<li><a href="products.jsp">真皮沙发</a></li>
									<li><a href="products.jsp">木制沙发</a></li>
									<li><a href="products.jsp">L形沙发</a></li>
									<li><a href="products.jsp">心型沙发</a></li>									
									
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>桌子</h4>
								<ul>
									<li><a href="products.jsp">茶几</a></li>
									<li><a href="products.jsp">餐桌</a></li>
									<li><a href="products.jsp">书桌</a></li>
									<li><a href="products.jsp">木桌</a></li>
									<li><a href="products.jsp">躺椅</a></li>
									<li><a href="products.jsp">工作</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>床品</h4>
								<ul>
									<li><a href="products.jsp">单人床</a></li>
									<li><a href="products.jsp">海报床</a></li>
									<li><a href="products.jsp">沙发床</a></li>
									<li><a href="products.jsp">双层床</a></li>
									<li><a href="products.jsp">特大床</a></li>
									<li><a href="products.jsp">金属床</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>椅垫</h4>
								<ul>
									<li><a href="products.jsp">翼椅</a></li>
									<li><a href="products.jsp">装饰椅</a></li>
									<li><a href="products.jsp">扶手椅</a></li>
									<li><a href="products.jsp">mettal椅</a></li>
									<li><a href="products.jsp">折叠椅</a></li>
									<li><a href="products.jsp">豆袋坐垫</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>实木</h4>
								<ul>
									<li><a href="products.jsp">侧桌</a></li>
									<li><a href="products.jsp">电视柜</a></li>
									<li><a href="products.jsp">梳妆台</a></li>
									<li><a href="products.jsp">衣柜</a></li>
									<li><a href="products.jsp">鞋架</a></li>
									<li><a href="products.jsp">书架</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
			<li><a class="color4" href="#">家居</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>沙发</h4>
								<ul>
									<li><a href="products.jsp">全部</a></li>
									<li><a href="products.jsp">布艺沙发</a></li>
									<li><a href="products.jsp">真皮沙发</a></li>
									<li><a href="products.jsp">木制沙发</a></li>
									<li><a href="products.jsp">L形沙发</a></li>
									<li><a href="products.jsp">心型沙发</a></li>									
									
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>桌子</h4>
								<ul>
									<li><a href="products.jsp">茶几</a></li>
									<li><a href="products.jsp">餐桌</a></li>
									<li><a href="products.jsp">书桌</a></li>
									<li><a href="products.jsp">木桌</a></li>
									<li><a href="products.jsp">躺椅</a></li>
									<li><a href="products.jsp">工作</a></li>
								</ul>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>床品</h4>
								<ul>
									<li><a href="products.jsp">单人床</a></li>
									<li><a href="products.jsp">海报床</a></li>
									<li><a href="products.jsp">沙发床</a></li>
									<li><a href="products.jsp">双层床</a></li>
									<li><a href="products.jsp">特大床</a></li>
									<li><a href="products.jsp">金属床</a></li>
								</ul>	
							</div>												
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>椅垫</h4>
								<ul>
									<li><a href="products.jsp">翼椅</a></li>
									<li><a href="products.jsp">装饰椅</a></li>
									<li><a href="products.jsp">扶手椅</a></li>
									<li><a href="products.jsp">mettal椅</a></li>
									<li><a href="products.jsp">折叠椅</a></li>
									<li><a href="products.jsp">豆袋坐垫</a></li>
								</ul>	
							</div>						
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>实木</h4>
								<ul>
									<li><a href="products.jsp">侧桌</a></li>
									<li><a href="products.jsp">电视柜</a></li>
									<li><a href="products.jsp">梳妆台</a></li>
									<li><a href="products.jsp">衣柜</a></li>
									<li><a href="products.jsp">鞋架</a></li>
									<li><a href="products.jsp">书架</a></li>
								</ul>	
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
				<li><a class="color5" href="#">厨卫</a>
				<div class="megapanel">
					<div class="row">
						
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>
				<li><a class="color6" href="#">家电</a>
				<div class="megapanel">
					<div class="row">
						
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
			
				<li><a class="color7" href="#">装饰</a>
				<div class="megapanel">
					<div class="row">
						
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
			
				<li><a class="color8" href="#">建材</a>
				<div class="megapanel">
					<div class="row">
						
						
					</div>
					<div class="row">
						<div class="col2"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
						<div class="col1"></div>
					</div>
    				</div>
				</li>				
			   </ul> 
			   <div class="search">
				 <form>
					<input type="text" value="" placeholder="布艺沙发  实木家具...">
					<input type="submit" value="">
					</form>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	  </div>
</div>
<!---->

<div class="single-sec">
	 <div class="container">
		 <ol class="breadcrumb">
			 <li><a href="../index.jsp">返回主页</a></li>
			 <li class="active">商家简介</li>
		 </ol>
		 <!-- start content -->	
			<div class="col-md-9 det">
				  <div class="single_left">
					 <div class="grid images_3_of_2">
						 <ul id="etalage">
							<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image" src="../../images/firment-mall/s2.jpg" class="img-responsive" />
									<img class="etalage_source_image" src="../../images/firment-mall/s2.jpg" class="img-responsive" title="" />
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image" src="../../images/firment-mall/s3.jpg" class="img-responsive" />
								<img class="etalage_source_image" src="../../images/firment-mall/s3.jpg" class="img-responsive" title="" />
							</li>							
						    <li>
								<img class="etalage_thumb_image" src="../../images/firment-mall/s5.jpg" class="img-responsive"  />
								<img class="etalage_source_image" src="../../images/firment-mall/s5.jpg"class="img-responsive"  />
							</li>
						 </ul>
						 <div class="clearfix"></div>		
				      </div>
				  </div>
				  <div class="single-right">
					 <h3>宜家家居 全球最大的家具家居用品商家</h3>
					 <div class="id"></div>
					  <form action="" class="sky-form">
						     <fieldset>					
							   <section>
							     <div class="rating">
									<input type="radio" name="stars-rating" id="stars-rating-5">
									<label for="stars-rating-5"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-4">
									<label for="stars-rating-4"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-3">
									<label for="stars-rating-3"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-2">
									<label for="stars-rating-2"><i class="icon-star"></i></label>
									<input type="radio" name="stars-rating" id="stars-rating-1">
									<label for="stars-rating-1"><i class="icon-star"></i></label>
									<div class="clearfix"></div>
								 </div>
							  </section>
						    </fieldset>
					  </form>
						
						<div class="row">
							<p class="col-md-2 goodRecommand">好评率:</p>
							<div class="progress progress-striped active">
								<div class="col-md-7 progress-bar progress-bar-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"   style="width:90%">90%</div>
							</div>
						</div>
						
					  <div class="cost">
						 <div class="prdt-cost">
							 <ul>
								
								<li>商品评分：<strong>9.89</strong>  分</li>								 
								<li>服务评分：<strong>9.20</strong>  分</li>
								<li>时效评分：<strong>9.86</strong>  分</li>	
								 <li class="active">认证商家：正品保证  <i class="fa fa-thumbs-up"></i></li>
								
							 </ul>
						 </div>
						 
						 <div class="clearfix"></div>
					  </div>
					  <div class="item-list">
						 <ul>
							 <li>美好生活</li>
							 <li>低廉价格</li>
							 <li>瑞典传统</li>
							 <li>发展稳健</li>
							 <li><a href="#detail_introduce">详细介绍</a></li>
						 </ul>
					  </div>
					  <div class="single-bottom1">
						<h6>简介</h6>
						<p class="prod-desc">宜家家居（IKEA）于1943年创建于瑞典，瑞典宜家集团已成为全球最大的家具家居用品商家，销售主要包括座椅/沙发系列，办公用品，卧室系列，厨房系列，照明系列，纺织品，炊具系列，房屋储藏系列，儿童产品系列等约10，000个产品。</p>
					 </div>					 
				  </div>
				  <div class="clearfix"></div>
				  <div class="sofaset-info">
						<a name="detail_introduce"></a>
						 <h4>详细介绍</h4>
						 <ul>
							 <li>美好生活：宜家商业理念是提供种类繁多、美观实用、老百姓买得起的家居用品。</li>
							 <li>产品系列：浪漫主义者会与简约主义者一样找到自己需要的东西。</li>
							 <li>低廉价格：低价格是宜家理想、商业理念和概念的基石。</li>
							 <li>瑞典传统：瑞典设计方法也是宜家产品系列的基础。迄今为止，宜家产品系列都是在瑞典开发出来的。</li>
							 <li>采购模式：宜家家居的采购模式是全球化的采购模式。宜家的产宜家宜家各贸易区域(Trading Area)采购后运抵全球26个分销中心再送货至宜家在全球的商场。</li>
							 <li>品牌价值：世界品牌价值实验室举办的“2008世界品牌价值实验室年度大奖”评选活动中，宜家凭借良好的品牌印象和品牌活力，荣登“中国最具竞争力品牌榜单”大奖，赢得广大消费者普遍赞誉。</li>
							 <li>市场定位：宜家的产品定位于“低价格、精美、耐用”的家居用品。</li>
							 <li>风格独特：宜家源于北欧瑞典（森林国家），其产品风格中的“简约、清新、自然”亦秉承北欧风格。</li>
							 <li>精美耐用：当然，单纯的设计精美并不难，但是在低价格的基础上同时做到精美、实用、高质量难度却很大。</li>
							 <li>系列广泛：宜家产品系列广泛，宜家共有10000多种产品供顾客选择。基本上，任何品味的顾客都能可以在宜家买到家居所需的家居产品。</li>
							 <li>营销策略：目录展示是宜家促销策略的重要组成部分，大大促进了宜家的产品销售。</li>
							 <li>贴心策略：与普通家居市场不同，宜家能让消费者在体验中深刻了解到一件产品的利弊。沙发等各种家具都是可以在商店里试用。在宜家里，装修了各种各样的样板间，设计合理，博得了广大消费者的一致好评。</li>
						 </ul>
				  </div>				  					
		    </div>
			<div class="rsidebar span_1_of_left">
				<section  class="sky-form">
					 <div class="product_right">
						 <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>主营商品</h4>
						 <div class="tab1">
							 <ul class="place">								
								 <li class="sort">家具</li>
								 <li class="by"><img src="../../images/firment-mall/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>沙发</p></a>
									<a href="#"><p>布艺沙发</p></a>
									<a href="#"><p>爱心沙发</p></a>
									<a href="#"><p>餐桌</p></a>
						     </div>
					      </div>						  
						  <div class="tab2">
							 <ul class="place">								
								 <li class="sort">装饰</li>
								 <li class="by"><img src="../../images/firment-mall/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>木架</p></a>
									<a href="#"><p>摆件</p></a>
									<a href="#"><p>古玩</p></a>
									<a href="#"><p>烟灰缸</p></a>
						     </div>
					      </div>
						  <div class="tab3">
							 <ul class="place">								
								 <li class="sort">灯饰</li>
								 <li class="by"><img src="../../images/firment-mall/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>壁灯</p></a>
									<a href="#"><p>日光灯</p></a>
									<a href="#"><p>吊顶灯</p></a>
									<a href="#"><p>夜光灯</p></a>
						     </div>
					      </div>
						  <div class="tab4">
							 <ul class="place">								
								 <li class="sort">厨卫</li>
								 <li class="by"><img src="../../images/firment-mall/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>花洒</p></a>
									<a href="#"><p>地漏</p></a>
									<a href="#"><p>角阀</p></a>
									<a href="#"><p>浴室柜</p></a>
						     </div>
					      </div>
						  <div class="tab5">
							 <ul class="place">								
								 <li class="sort">布艺</li>
								 <li class="by"><img src="../../images/firment-mall/do.png" alt=""></li>
									<div class="clearfix"> </div>
							  </ul>
							 <div class="single-bottom">						
									<a href="#"><p>沙发</p></a>
									<a href="#"><p>床垫</p></a>
									<a href="#"><p>床单</p></a>
									<a href="#"><p>枕芯</p></a>
						     </div>
					      </div>
						  
						  <!--script-->
						<script>
							$(document).ready(function(){
								$(".tab1 .single-bottom").hide();
								$(".tab2 .single-bottom").hide();
								$(".tab3 .single-bottom").hide();
								$(".tab4 .single-bottom").hide();
								$(".tab5 .single-bottom").hide();
								
								$(".tab1 ul").click(function(){
									$(".tab1 .single-bottom").slideToggle(300);
									$(".tab2 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab2 ul").click(function(){
									$(".tab2 .single-bottom").slideToggle(300);
									$(".tab1 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
								})
								$(".tab3 ul").click(function(){
									$(".tab3 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab5 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})
								$(".tab4 ul").click(function(){
									$(".tab4 .single-bottom").slideToggle(300);
									$(".tab5 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
								$(".tab5 ul").click(function(){
									$(".tab5 .single-bottom").slideToggle(300);
									$(".tab4 .single-bottom").hide();
									$(".tab3 .single-bottom").hide();
									$(".tab2 .single-bottom").hide();
									$(".tab1 .single-bottom").hide();
								})	
							});
						</script>
						<!-- script -->					 
				 </section>
								  
			
				   <!---->
					 <script type="text/javascript" src="../../js/common/jquery-ui.js"></script>
					
					<script type='text/javascript'>//<![CDATA[ 
					$(window).load(function(){
					 $( "#slider-range" ).slider({
								range: true,
								min: 0,
								max: 400000,
								values: [ 2500, 350000 ],
								slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
								}
					 });
					$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );

					});//]]>  

					</script>
					<section  class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>商品类型</h4>
							<div class="row row1 scroll-pane">
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>沙发床 (30)</label>
								</div>
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i> 餐桌  (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>3+1+1 沙发 (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>沙发椅    (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i> 榻榻米 (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>茶几   (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>电视柜  (30)</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>书桌  (30)</label>
								</div>
							</div>
				   </section>
				 <section  class="sky-form">
						<h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>推荐品牌</h4>
							<div class="row row1 scroll-pane">
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Roadstar</label>
								</div>
								<div class="col col-4">
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>顾家</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>利豪</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>拓邦</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>九阳</label>
									<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>雅棉</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>美达斯</label>
									<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>喜临门</label>
								</div>
							</div>
				   </section>			  									 			 
			   </div>
		</div>	     				
		     <div class="clearfix"></div>
	  </div>	 
</div>
<!---->
<div class="footer-content">
	 <div class="container">
		 <div class="ftr-grids">
			 <div class="col-md-3 ftr-grid">
				 <h4>关于我们</h4>
				 <ul>
					 <li><a href="#">麦浩斯简介</a></li>
					 <li><a href="#">联系方式</a></li>
					 <li><a href="#">网站首页</a></li>
					 <li><a href="#">最新活动</a></li>
					 <li><a href="#">工友风采</a></li>
					 <li><a href="#">Carrers</a></li>					 
				 </ul>
			 </div>
			 <div class="col-md-3 ftr-grid">
				 <h4>服务保障</h4>
				 <ul>
					 <li><a href="#">假一赔十</a></li>
					 <li><a href="#">退换无忧</a></li>
					 <li><a href="#">先行赔付</a></li>
					 <li><a href="#">金牌服务</a></li>
					 <li><a href="#">厂家直供</a></li>
					 <li><a href="#">专业配送</a></li>					 
				 </ul>
			 </div>
			 <div class="col-md-3 ftr-grid">
				 <h4>售后服务</h4>
				 <ul>
					 <li><a href="#">购物流程</a></li>
					 <li><a href="#">退换货政策</a></li>
					 <li><a href="#">退换货流程</a></li>
					 <li><a href="#">退换货方式</a></li>
					 <li><a href="#">退货钱款去向</a></li>					 					 
				 </ul>
			 </div>
			 <div class="col-md-3 ftr-grid">
				 <h4>麦浩斯商城</h4>
				 <ul>
					 <li><a href="#">> 家具软装</a></li>
					 <li><a href="#">> 沙发</a></li>
					 <li><a href="#">> 装饰品</a></li>
					 <li><a href="#">> 厨卫</a></li>
					 <li><a href="#">> 床品</a></li>
					 <li><a href="#">...更多</a></li>					 
				 </ul>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->

<div class="footer">
	 <div class="container">
		 <div class="store">
			 <ul>
				 <li class="active">友情链接:</li>
				 <li><a href="#">土吧兔</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">一号家居</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">宜家家居</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">一号货车</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">家具网</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">Armenia</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">South Africa</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">Malaysia</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">Indonesia</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">Mumbai</a></li>
				 <li><a href="#">|</a></li>
				 <li><a href="#">Portugal</a></li>
				
			 </ul>
		 </div>		 
		 <div class="copywrite">
			 <p class="text-center">Copyright © 2015-2022 麦浩斯手艺人（www.yihaojiaju.com）—在线家装领导者 All Rights Reserved</p>
			 <p class="text-center">装房子 找木工 就上麦浩斯手艺人 - Yes! 苏ICP备14018447号-1 </p>
			 <div class="text-center row-fluid footer-certificate">
				<a href="#"><img src="../../images/common/certificate1.png"></a>
				<a href="#"><img src="../../images/common/certificate2.png"></a>
				<a href="#"><img src="../../images/common/certificate3.png"></a>
			</div>
		 </div>			 
		 </div>
	 </div>
</div>
<!---->
</body>
</html>