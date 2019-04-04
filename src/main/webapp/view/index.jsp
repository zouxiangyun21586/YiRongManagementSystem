<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>后台系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../stylesheets/theme.css">
    <link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">

    <script src="../lib/jquery-1.8.1.min.js" type="text/javascript"></script>

    <!-- Demo page code -->
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <link rel="shortcut icon" href="../../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body> 
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <ul class="nav pull-right">
                    
                    <li id="fat-menu" class="dropdown">
                        <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i> Jack Smith
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="#">Settings</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
                        </ul>
                    </li>
                    
                </ul>
                <a class="brand" href="/view/index.jsp"><span class="first">Your</span> <span class="second">Company</span></a>
            </div>
        </div>
    </div>

    <div class="container-fluid">
		<div class="row-fluid">
			<div class="span3">
                <div class="sidebar-nav">
                  <div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>Dashboard</div>
                    <ul id="dashboard-menu" class="nav nav-list collapse in">
                        <li><a href="/view/index.jsp">Home</a></li>
                        <li ><a href="/view/users.jsp">Sample List</a></li>
                        <li ><a href="/view/user.jsp">Sample Item</a></li>
                        <li ><a href="gallery.html">Gallery</a></li>
                        <li ><a href="calendar.html">Calendar</a></li>
                        <li ><a href="faq.html">Faq</a></li>
                        <li ><a href="help.html">Help</a></li>
                        
                    </ul>
                <div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>Account<span class="label label-info">+10</span></div>
                <ul id="accounts-menu" class="nav nav-list collapse in">
                  <li ><a href="sign-in.html">Sign In</a></li>
                  <li ><a href="sign-up.html">Sign Up</a></li>
                  <li ><a href="reset-password.html">Reset Password</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#settings-menu"><i class="icon-exclamation-sign"></i>Error Pages</div>
                <ul id="settings-menu" class="nav nav-list collapse in">
                  <li ><a href="403.html">403 page</a></li>
                  <li ><a href="404.html">404 page</a></li>
                  <li ><a href="500.html">500 page</a></li>
                  <li ><a href="503.html">503 page</a></li>
                </ul>

                <div class="nav-header" data-toggle="collapse" data-target="#legal-menu"><i class="icon-legal"></i>Legal</div>
                <ul id="legal-menu" class="nav nav-list collapse in">
                  <li ><a href="privacy-policy.html">Privacy Policy</a></li>
                  <li ><a href="terms-and-conditions.html">Terms and Conditions</a></li>
                </ul>
            </div>
        </div>
        <div class="span9">
            <script type="text/javascript" src="../lib/jqplot/jquery.jqplot.min.js"></script>
			<script type="text/javascript" charset="utf-8" src="../javascripts/graphDemo.js"></script>
	
			<div class="stats">
			    <p class="stat"><span class="number">53</span>tickets</p>
			    <p class="stat"><span class="number">27</span>tasks</p>
			    <p class="stat"><span class="number">15</span>waiting</p>
			</div>
			<h1 class="page-title">仪表板</h1>
	
			<div class="row-fluid">
			    <div class="block span8">
			        <p class="block-heading" data-toggle="collapse" data-target="#chart-container">绩效图表</p>
			        <div id="chart-container" class="block-body collapse in">
			            <div id="line-chart"></div>
			        </div>
			    </div>
			</div>
	
			<div class="block span2">
		        <div class="block-heading" data-toggle="collapse" data-target="#widget1container">Collapsible </div>
		        <div id="widget1container" class="block-body collapse in">
		            <h2>Using Ruby?</h2>
		            <p>This template was developed with <a href="http://middlemanapp.com/" target="_blank">Middleman</a> and includes .erb layouts and views.</p>
		            <p>All of the views you see here (sign in, sign up, users, etc) are already split up so you don't have to waste your time doing it yourself!</p>
		        </div>
		    </div>
	
			<div class="row-fluid">
			    <div class="block span9">
					<div class="block-heading" data-toggle="collapse" data-target="#tablewidget">学生信息</div>
			        <div id="tablewidget" class="block-body collapse in">
						<table class="table">
							<thead>
								<tr>
									<th>编号</th>
									<th>姓名</th>
									<th>性别</th>
									<th>电话</th>
									<th>住址</th>
									<th>状态</th>
									<th>监护人</th>
									<th>监护人电话</th>
									<th>入学时间</th>
									<th>毕业时间</th>
				                </tr>
							</thead>
							<tbody id="linkStudentMessage"></tbody>
						</table>
			            <p><a href="/view/users.jsp">More...</a></p>
			        </div>
			    </div>
			</div>
		</div>
	</div>
    
    <footer>
        <hr>
        <p class="pull-right">Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
        <p>&copy; 2012 <a href="#">Portnine</a></p>
    </footer>

    <script src="../lib/bootstrap/js/bootstrap.js"></script>

  </body>
  <script type="text/javascript">
	$(document).ready(function(){ // 页面加载完成后出现
		query();
	});
	
	function query() {
		$.ajax({
			type : "get",
			url : '<%=request.getContextPath()%>/student',
			dataType:"json",
			success : function(dataObj) {
				var html = "";
				for(var i in dataObj){
					if (dataObj[i].stuStatus == "0") { // 0 在校, 1 毕业
						if(dataObj[i].graduationTime == null){
							html += "<tr><td align='center'>" + dataObj[i].stuId + "</td>"+
							"<td  align='center'>" + dataObj[i].stuName + "</td>"+
							"<td  align='center'>" + dataObj[i].stuSex + "</td>"+
							"<td  align='center'>" + dataObj[i].stuTell + "</td>"+
							"<td  align='center'>" + dataObj[i].stuAddr + "</td>"+
							"<td  align='center'>" + "在校" + "</td>"+
							"<td  align='center'>" + "***" + "</td>"+
							"<td  align='center'>" + "12345" + "</td>"+
							"<td  align='center'>" + dataObj[i].admissionTime + "</td>"+
							"<td  align='center'>" + "" + "</td></tr>";
						} else {
							html += "<tr><td align='center'>" + dataObj[i].stuId + "</td>"+
							"<td  align='center'>" + dataObj[i].stuName + "</td>"+
							"<td  align='center'>" + dataObj[i].stuSex + "</td>"+
							"<td  align='center'>" + dataObj[i].stuTell + "</td>"+
							"<td  align='center'>" + dataObj[i].stuAddr + "</td>"+
							"<td  align='center'>" + "在校" + "</td>"+
							"<td  align='center'>" + "***" + "</td>"+
							"<td  align='center'>" + "12345" + "</td>"+
							"<td  align='center'>" + dataObj[i].admissionTime + "</td>"+
							"<td  align='center'>" + dataObj[i].graduationTime + "</td></tr>";
						}
					} else if (dataObj[i].stuStatus == "1") {
						if(dataObj[i].graduationTime == null){
							html += "<tr><td align='center'>" + dataObj[i].stuId + "</td>"+
							"<td  align='center'>" + dataObj[i].stuName + "</td>"+
							"<td  align='center'>" + dataObj[i].stuSex + "</td>"+
							"<td  align='center'>" + dataObj[i].stuTell + "</td>"+
							"<td  align='center'>" + dataObj[i].stuAddr + "</td>"+
							"<td  align='center'>" + "毕业" + "</td>"+
							"<td  align='center'>" + "***" + "</td>"+
							"<td  align='center'>" + "12345" + "</td>"+
							"<td  align='center'>" + dataObj[i].admissionTime + "</td>"+
							"<td  align='center'>" + "" + "</td></tr>";
						} else {
							html += "<tr><td align='center'>" + dataObj[i].stuId + "</td>"+
							"<td  align='center'>" + dataObj[i].stuName + "</td>"+
							"<td  align='center'>" + dataObj[i].stuSex + "</td>"+
							"<td  align='center'>" + dataObj[i].stuTell + "</td>"+
							"<td  align='center'>" + dataObj[i].stuAddr + "</td>"+
							"<td  align='center'>" + "毕业" + "</td>"+
							"<td  align='center'>" + "***" + "</td>"+
							"<td  align='center'>" + "12345" + "</td>"+
							"<td  align='center'>" + dataObj[i].admissionTime + "</td>"+
							"<td  align='center'>" + dataObj[i].graduationTime + "</td></tr>";
						}
					}
				}
				$('#linkStudentMessage').append(html);
			},
			error: function(XMLHttpRequest, textStatus, errorThrown) {
                alert(XMLHttpRequest.status+","+XMLHttpRequest.readyState+","+textStatus);
            }
		})
	}
  </script>
</html>


