<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="header.jsp" %>
<head>
	<!--展示特效-->
	<link rel="stylesheet" type="text/css" href="css/laborlist/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/laborlist/laborlist.css" />
	<script src="js/laborlist/modernizr.custom.js"></script>
	<link rel="stylesheet" type="text/css" href="css/laborlist/mylaborlist.css" />
	<!--手风琴菜单-->
	<link rel="stylesheet" href="css/laborlist/arrordian.css" media="screen" type="text/css" />
  <script src="js/laborlist/arrordian.js"></script>

	
</head>
<body>
	<div class="laborlist-container">
	<div class="container">
			
			<button id="menu-toggle" class="menu-toggle"><span>Menu</span></button>
			<div id="theSidebar" class="sidebar">
				<button class="close-button fa fa-fw fa-close"></button>
				<ul id="accordion" class="accordion">
						<li>
						<div class="link">家装攻略<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">装修日记</a></li>
				<li><a href="#">焊工</a></li>
				<li><a href="#">水电工</a></li>
				<li><a href="#">油漆工</a></li>
			</ul>
		</li>
		<li>
			<div class="link">家装日记<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">上午</a></li>
				<li><a href="#">中午</a></li>
				<li><a href="#">下午</a></li>
			</ul>
		</li>
		<li>
			<div class="link">家装知识<i class="fa fa-chevron-down"></i></div>
			<ul class="submenu">
				<li><a href="#">静安区</a></li>
				<li><a href="#">浦东区</a></li>
				<li><a href="#">松江区</a></li>
			</ul>
		</li>
		<li>
			<input type="text" ></input>
			<a id="strategySearch" class="btn btn-default" href="#"><i class="fa fa-search" style="left:15px;top:6px;"></i></a>
		</li>
	</ul>
			</div>
			<div id="theGrid" class="main">
				
					<div class="wrapper">
						<header>
							<h1>Mars</h1>
						</header>
						<div class="nav-container">
							<nav>
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
								<h3>Chapter I</h3>
								<p>You don't know about me without you have read a book by
									the name of The Adventures of Tom Sawyer; but that ain't no
									matter. That book was made by Mr. Mark Twain, and he told the
									truth, mainly. There was things which he stretched, but mainly
									he told the truth. That is nothing. I never seen anybody but
									lied one time or another, without it was Aunt Polly, or the
									widow, or maybe Mary. Aunt Polly&mdash;Tom's Aunt Polly, she
									is&mdash;and Mary, and the Widow Douglas is all told about in
									that book, which is mostly a true book, with some stretchers,
									as I said before.</p>
							</div>
							<div class="column right">
								<p>Now the way that the book winds up is this: Tom and me
									found the money that the robbers hid in the cave, and it made
									us rich. We got six thousand dollars apiece—all gold. It was an
									awful sight of money when it was piled up. Well, Judge Thatcher
									he took it and put it out at interest, and it fetched us a
									dollar a day apiece all the year round—more than a body could
									tell what to do with. The Widow Douglas she took me for her
									son, and allowed she would sivilize me; but it was rough living
									in the house all the time, considering how dismal regular and
									decent the widow was in all her ways; and so when I couldn't
									stand it no longer I lit out.</p>
							</div>

							<hr />
						</section>
						<section id="chapter-2">
							<img src="images/dino.jpg" />
							<div class="column left">
								<p>I got into my old rags and my sugar-hogshead again, and
									was free and satisfied. But Tom Sawyer he hunted me up and said
									he was going to start a band of robbers, and I might join if I
									would go back to the widow and be respectable. So I went back.</p>

							</div>

							<div class="column right">
								<p>When you got to the table you couldn't go right to
									eating, but you had to wait for the widow to tuck down her head
									and grumble a little over the victuals, though there warn't
									really anything the matter with them,—that is, nothing only
									everything was cooked by itself. In a barrel of odds and ends
									it is different; things get mixed up, and the juice kind of
									swaps around, and the things go better.</p>

							</div>

							<hr />
						</section>
						<section id="chapter-3">
							<img src="images/dino.jpg" />
							<div class="column left">
								<p>Pretty soon I wanted to smoke, and asked the widow to let
									me. But she wouldn't. She said it was a mean practice and
									wasn't clean, and I must try to not do it any more. That is
									just the way with some people. They get down on a thing when
									they don't know nothing about it. Here she was a-bothering
									about Moses, which was no kin to her, and no use to anybody,
									being gone, you see, yet finding a power of fault with me for
									doing a thing that had some good in it. And she took snuff,
									too; of course that was all right, because she done it herself.</p>
							</div>

							<div class="column right">
								<p>Her sister, Miss Watson, a tolerable slim old maid, with
									goggles on, had just come to live with her, and took a set at
									me now with a spelling-book. She worked me middling hard for
									about an hour, and then the widow made her ease up. I couldn't
									stood it much longer. Then for an hour it was deadly dull, and
									I was fidgety. Miss Watson would say, "Don't put your feet up
									there, Huckleberry;" and "Don't scrunch up like that,
									Huckleberry—set up straight;" and pretty soon she would say,
									"Don't gap and stretch like that, Huckleberry—why don't you try
									to behave?"</p>
							</div>

							<hr />
						</section>
						<section id="chapter-4">
							<img src="images/dino.jpg" />
							<div class="column left">
								<p>Then she told me all about the bad place, and I said I
									wished I was there. She got mad then, but I didn't mean no
									harm. All I wanted was to go somewheres; all I wanted was a
									change, I warn't particular. She said it was wicked to say what
									I said; said she wouldn't say it for the whole world; she was
									going to live so as to go to the good place. Well, I couldn't
									see no advantage in going where she was going, so I made up my
									mind I wouldn't try for it. But I never said so, because it
									would only make trouble, and wouldn't do no good.</p>
							</div>

							<hr />
						</section>
						<section id="chapter-5">
							<img src="images/dino.jpg" />
							<div class="column left">
								<p>Then she told me all about the bad place, and I said I
									wished I was there. She got mad then, but I didn't mean no
									harm. All I wanted was to go somewheres; all I wanted was a
									change, I warn't particular. She said it was wicked to say what
									I said; said she wouldn't say it for the whole world; she was
									going to live so as to go to the good place. Well, I couldn't
									see no advantage in going where she was going, so I made up my
									mind I wouldn't try for it. But I never said so, because it
									would only make trouble, and wouldn't do no good.</p>
							</div>

							<hr />
						</section>

					</div>

					<%@ include file="footer.jsp"%>
			</div>
		</div><!-- /container -->

<script src="js/laborlist/classie.js"></script>
<script src="js/laborlist/laborlist.main.js"></script>
</body>
</html>
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