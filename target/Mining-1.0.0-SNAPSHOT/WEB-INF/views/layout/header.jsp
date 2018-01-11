<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- Bootstrap core CSSs -->
<link href="../../../static/GamePlay/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="../../../static/GamePlay/js/dl-menu/component.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/slick.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/slick-theme.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/font-awesome.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/svg-icons.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/prettyPhoto.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/typography.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/widget.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/shortcodes.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/style.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/color.css" rel="stylesheet">
<link href="../../../static/GamePlay/css/responsive.css" rel="stylesheet">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<!-- Place favicon.ico in the root directory -->

<div class="kobe_wrapper">
	<header class="kode_header_2">
		<!--Header 2 Top Bar Start-->
		<div class="kf_top_bar">
			<div class="container">
				<div class="pull-left">
					<ul class="kf_social2">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-rss"></i></a></li>
					</ul>
				</div>
				<div class="kf_right_dec">
					<ul class="kf_topdec">
						<li>
							<div class="kf_lung">
								<span>Curreny :</span>
								<div class="dropdown">
									<button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> USD
									</button>
									<ul class="dropdown-menu" aria-labelledby="dLabel">
										<li>BRL</li>
										<li>EUR</li>
									</ul>
								</div>
							</div>
						</li>
						<li><a href="#">Support</a></li>
						<li><a href="#">Whishlist</a></li>
					</ul>
					<ul class="kf_user">
						<li><a href="#"><i class="fa fa-lock"></i>Sign up</a></li>
						<li><a href="#">Login</a></li>
					</ul>
					<a href="#" data-toggle="modal" data-target="#search" class="kode_search"><i class="fa fa-search"></i></a>
				</div>
			</div>
		</div>
		<!--Header 2 Top Bar End-->
		<div class="container">
			<!--Logo Bar Start-->
			<div class="kode_logo_bar">
				<!--Logo Start-->
				<div class="logo">
					<a href="#">
						<img src="../../../static/GamePlay/images/logo.png" alt="">
					</a>
				</div>
				<!--Logo Start-->
				<!--Navigation Wrap Start-->
				<div class="kode_navigation">
					<!--Navigation Start-->
					<ul class="nav">
						<li><a href="/news/news">home</a></li>
						<li><a href="/keypoint/list">forum</a></li>
						<li><a href="/match/list">match</a></li>
						<li><a href="#">team</a></li>
						<li><a href="#">team schedule</a></li>
						<li><a href="#">contact us</a></li>
						<li><a href="/user/list">user</a></li>
					</ul>
					<!--DL Menu Start-->
					<div id="kode-responsive-navigation" class="dl-menuwrapper">
						<button class="dl-trigger">Open Menu</button>
						<ul class="dl-menu">
							<li><a href="index.html">home</a></li>
							<li><a href="blog.html">blog</a></li>
							<li><a href="shop.html">shop</a></li>
							<li><a href="team-overview.html">team overview</a></li>
							<li><a href="team-schedule.html">team schedule</a></li>
							<li><a href="contactus.html">contact us</a></li>
							<li><a href="widget.html">widget</a></li>
						</ul>
					</div>
					<!--DL Menu END-->
					<!--Navigation End-->
					<a href="#" class="kf_cart">
						<i class="fa fa-shopping-basket "></i>
						<div class="text">
							<span>Your Cart</span>
							<em>00.00</em>
						</div>
					</a>
				</div>
				<!--Navigation Wrap End-->
			</div>
			<!--Logo Bar End-->
		</div>
	</header>
</div>

<!--
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/login.jsp">北京林业大学毕业设计选题系统</a>
		</div>
		<div class="collapse navbar-collapse" >
			<ul class="nav navbar-nav">
				<sec:authorize ifAllGranted="ROLE_ADMIN">
					<li><a href="/student/list">学生用户管理</a></li>
					<li><a href="/teacher/list">教师用户管理</a></li>
					<li><a href="/project/list">学生选题结果查看</a></li>
				</sec:authorize>

				<sec:authorize ifAllGranted="ROLE_TEA">
					<li><a href="/project/list">题目查看</a></li>
					<li><a href="/project/mylist">我的题目</a></li>
					<li><a href="/file/list">我的文件</a></li>
				</sec:authorize>

				<sec:authorize ifAllGranted="ROLE_STU">
					<li><a href="/project/slist">查看选题</a></li>
					<li><a href="/project/smylist">我的题目</a></li>					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							学习资源<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="/homework/list">选题中心</a></li>

								<%--这里需要一个静态页面--%>
							<li><a href="#">毕设课题说明</a></li>
							<li class="divider"></li>
							<li><a href="/ex/home">作业与习题</a></li>
						</ul>
					</li>
				</sec:authorize>
			</ul>

			<ul class="nav navbar-nav pull-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<sec:authentication property="name"/>你好~ <b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<sec:authorize ifAllGranted="ROLE_ADMIN">
						</sec:authorize>
						<sec:authorize ifAllGranted="ROLE_STU">
							<%--指向学生个人信息管理--%>
							<li><a href="#">学生信息管理</a></li>
						</sec:authorize>
						<sec:authorize ifAllGranted="ROLE_TEA">
							<%--指向教师个人信息管理--%>
							<li><a href="#">教师信息管理</a></li>
						</sec:authorize>
						<li><a href="/user/updateByEmail?email=<sec:authentication property="name"/>">个人信息更新</a></li>
						<li class="divider"></li>
						<li><a href="/logout">登出</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!--/.nav-collapse
	</div>
</div>-->

