<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en" class="no-js">
	<head>
		<base href="/craftsman/">
        <meta charset="UTF-8" />
        <title>手艺人登陆界面</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="手艺人登陆界面" />
        <meta name="keywords" content="家居、建材、零工" />
        <meta name="author" content="麦浩斯" />
        <link rel="stylesheet" type="text/css" href="css/login/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/login/style.css" />
		<link rel="stylesheet" type="text/css" href="css/login/animate-custom.css" />
        <link rel="stylesheet" type="text/css" href="css/common/font-awesome.min.css"/>
    </head>
    <body>
        <div class="container">

            <header>

				<nav class="codrops-demos">
					<a href="index.html" class="current-demo"><i class="fa fa-qq fa-lg">QQ</i></a>
					<a href="index2.html"><i class="fa fa-weibo fa-lg"></i>微博</a>
					<a href="index3.html"><i class="fa fa-weixin fa-lg"></i>微信</a>
                    <a href="page/index.jsp"> <i class="fa fa-home fa-lg"></i>首页</a>
				</nav>
            </header>
<div style="text-align:center;clear:both;">
</div>
            <section>	
                			
                <div id="container_demo" >
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>

                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="#" autocomplete="on"> 
                                <h1>登陆</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > 你的邮箱或用户名</label>
                                    <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> 你的密码 </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">记住密码</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="登陆" /> 
								</p>
                                <p class="change_link">
									还没有账号 ?
									<a href="#toregister" class="to_register">注册</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="#" autocomplete="on"> 
                                <h1> 新用户注册 </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">你的用户名</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" >你的邮箱</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">你的密码 </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">确认密码</label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
								</p>
                                <p class="change_link">  
									已经拥有账号 ?
									<a href="#tologin" class="to_register"> 转到登陆 </a>
								</p>
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>

  
	</body>
</html>