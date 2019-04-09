<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootstrap Admin</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css"
	href="../lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="../lib/bootstrap/css/bootstrap-responsive.css">
<link rel="stylesheet" type="text/css" href="../stylesheets/theme.css">
<link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">

<script src="../lib/bootstrap/js/bootstrap.js"></script>
<script src="../lib/jquery-1.8.1.min.js" type="text/javascript"></script>

<!-- Demo page code -->
<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>

<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="../../assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../../assets/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>
	<!--<![endif]-->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<ul class="nav pull-right">

					<li id="fat-menu" class="dropdown"><a href="#" id="drop3"
						role="button" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user"></i> Jack Smith <i class="icon-caret-down"></i>
					</a>

						<ul class="dropdown-menu">
							<li><a tabindex="-1" href="#">Settings</a></li>
							<li class="divider"></li>
							<li><a tabindex="-1" href="sign-in.html">Logout</a></li>
						</ul></li>

				</ul>
				<a class="brand" href="/view/introduce.jsp"><span class="first">School
				</span> <span class="second">information</span></a>
			</div>
		</div>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
				<div class="sidebar-nav">
					<div class="nav-header" data-toggle="collapse"
						data-target="#dashboard-menu">
						<i class="icon-dashboard"></i>学校信息
					</div>
					<ul id="dashboard-menu" class="nav nav-list collapse in">
						<li><a href="/view/introduce.jsp">学校介绍</a></li>
						<li><a href="/view/index.jsp">学校课程</a></li>
						<li><a href="/view/studentDetails.jsp">专业咨询</a></li>
						<li><a href="/view/certificate.jsp">资质证书</a></li>
					</ul>
					<div class="nav-header" data-toggle="collapse"
						data-target="#accounts-menu">
						<i class="icon-briefcase"></i>学生信息
					</div>
					<ul id="accounts-menu" class="nav nav-list collapse in">
						<li><a href="/view/studentDetails.jsp">学生详情</a></li>
						<li><a href="/view/InSchool.jsp">在校学生</a></li>
						<li><a href="/view/graduation.jsp">毕业学生</a></li>
					</ul>
					<div class="nav-header" data-toggle="collapse"
						data-target="#settings-menu">
						<i class="icon-legal"></i>教师信息
					</div>
					<ul id="settings-menu" class="nav nav-list collapse in">
						<li><a href="*">教师详情</a></li>
					</ul>
				</div>
			</div>
			<div class="span9">
				<h1 class="page-title">一容教学的经历</h1>
				<div class="well">
					<h2>
						<font color="red">一容的课程</font>
					</h2>
					<table class="table text-nowrap">
						<caption>基本的表格布局</caption>
						<thead>
							<tr>
								<th>初级</th>
								<th>终极</th>
								<th>高级</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><font color="green">java、eclipse、mysql、 xml解析、
										jsp/servlet、tomcat、css、jquery、ajax/json、 验证码、 过滤器、 http协议、
										debug、代码重构/代码规范 、 powerDesigner、log4j2、junit、svn、
										项目实践：企业管理有关项目</font></td>
								<td><font color="green">spring、springmvc、mybatis、
										hibernate、jpa、ehcache、webService、maven/nexus、
										git/github、socket、加解密、javamail/短信验证、
										quartz、linux/centos/redhat、rmi、数据源/jndi、shiro、
										bootstrap、idea、设计模式、mybatisplus、mvc模式、禅道、tfs、 项目实践：多项目交互，小程序项目</font></td>
								<td><font color="green">springboot、springcloud、
										springdata、netty、lucene、sqlite3、docker、webSocket、
										html5、Jenkins、oracle、dubbo、SpringSecurity、swagger、
										fastdfs、mycat、图形报表、Tomcat集群、mysql集群、redis集群、kafka、
										activemq集群、rabbitmq集群、elasicsearch集群、mongodb集群、
										分布式事务、memcached集群、nginx集群、走哦keeper集群、项目实践：就业技巧，面试实训</font></td>
					</table>
					<h2>
						<font color="red">一容毕业人员</font>
					</h2>
					<table class="table text-nowrap">
						<caption>
							<h2>2019年毕业学生</h2>
						</caption>
						<tr>
							<th></th>
							<th></th>
							<th></th>
						</tr>
						<tbody>
							<tr>
								<td>
									<div class="media">
										<div class="media-left">
											<img src="../images/zou.webp" class="media-object"
												style="width: 60px">
										</div>
										<div class="media-body">
											<h4 class="media-heading">邹想云</h4>
											<h3>原田家炳实验中学毕业</h3>
											<p>2019年3月上班</p>
											<p>薪资：9k</p>
											<p>来一容一年多，如今我与同学们相继找到了理想的工作，渐渐
												步入社会的大门，心中满是感慨；在一容的时光里我获得了许多 关怀，得出许多感悟，学习了许多技术，结识了不同性格的朋友，
												在这么久的日子里，有难过，有不如意，但是带给我更多的是开心，
												一容是我在编程学习之路上的一块正确的指路牌，指引着我们往越来越好的方向发展。</p>
										</div>
									</div>
								</td>
								<td>
									<div>
										<div class="media">
											<div class="media-left">
												<img src="../images/lin.webp" class="media-object"
													style="width: 60px">
											</div>
											<div class="media-body">
												<h4 class="media-heading">林鑫敏</h4>
												<h3>原二中毕业</h3>
												<p>2019年3月上班</p>
												<p>薪资：10k</p>
												<p>一容给了我开导，让我相信自己，改变自己，在一容多学习的这段期间，学识和生活上过的很充足
													在学习上，我们学习到的不仅仅是技术还学到了如何在面对困难时快速调解自己。在日常生活上，老师
													就如姐姐和兄长般照顾我们，在日常聊天谈话中，慢慢的传授了我们步入社会的本领，也在同学的交流之间
													，慢慢的我对技术之间的理解越来越深入，感谢一容的老师们！一年半时间以来的知道，也很庆幸自己当初
													选择了一容，我现在已经就业，很完美！</p>
											</div>
										</div>
									</div>
								</td>
								<td>
									<div class="media">
										<div class="media-left">
											<img src="../images/li.webp" class="media-object"
												style="width: 60px">
										</div>
										<div class="media-body">
											<h4 class="media-heading">李莉</h4>
											<h3>原双牌二中毕业</h3>
											<p>2019年3月上班</p>
											<p>薪资：9k</p>
											<p>毕业啦!来一容一年半收获了很多，就好像一个大家庭，同学之间，沟通很有趣也很亲近没有陌生感，
												很快就能融入，我有两位很亲近的老师，他们交给我们知识的同时，还告诉我们社会的经验没刚来时
												学习java语言让我觉得很陌生直到和组员在第一次写项目的时候，才发现原来java这么强大，可以做很多东西
												，写项目次数多了几乎可以说，没有java做不到的，特别当自己解决问题的能力变强时会发现自己真的很不错
												，在一容我们将大部分时间投入在学习上，只要是在上课时间老师都会在教室里天天守在我们身边教我们解决问题
												，同时在这里我们学到的技术都是现在企业里用到的高级技术，我希望能来此学习的同学，好好珍惜这一年多的时间
												不要放弃，在此，很感谢我的两位老师，还有和我学习的同学，还有我的家人的支持，谢谢！</p>
										</div>
									</div>
								</td>
							</tr>
					</table>

				</div>
				<h2>
					<font color="red">一容的在校人员</font>
				</h2>
				<h2>
					<font color="red">一容的集体活动</font>
				</h2>


				<h2>
					<font color="red">一容软件的优势</font>
				</h2>
				<font></font>


				<h2>
					<font color="red">一容的的成就</font>
				</h2>
				<p></p>
			</div>


		</div>
	</div>

	<footer>
	<p class="pull-right">
		Collect from <a href="http://www.11467.com/qiye/45122272.htm"
			title="一容软件" target="_blank">一容软件</a>
	</p>
	<p>
		&copy; 2018 <a
			href="https://baike.baidu.com/item/%E6%B7%B1%E5%9C%B3/140588?fr=aladdin">Shenzhen</a>
	</p>
	</footer>
</body>
</html>


