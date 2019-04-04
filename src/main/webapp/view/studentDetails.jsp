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

    <link rel="stylesheet" type="text/css" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../stylesheets/theme.css">
    <link rel="stylesheet" href="../lib/font-awesome/css/font-awesome.css">

	<script src="../lib/bootstrap/js/bootstrap.js"></script>
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

    <!-- Le fav and touch icons -->
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
                <a class="brand" href="/view/exhibition.jsp"><span class="first">School </span> <span class="second">information</span></a>
            </div>
        </div>
    </div>
    
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span3">
                <div class="sidebar-nav">
					<div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>学校信息</div>
					<ul id="dashboard-menu" class="nav nav-list collapse in">
						<li><a href="/view/exhibition.jsp">首页</a></li>
						<li><a href="/view/introduce.jsp">学校介绍</a></li>
						<li><a href="/view/index.jsp">学校课程</a></li>
						<li><a href="/view/studentDetails.jsp">专业咨询</a></li>
						<li><a href="/view/certificate.jsp">资质证书</a></li>
					</ul>
					<div class="nav-header" data-toggle="collapse" data-target="#accounts-menu"><i class="icon-briefcase"></i>学生信息</div>
					<ul id="accounts-menu" class="nav nav-list collapse in">
						<li><a href="/view/studentDetails.jsp">学生详情</a></li>
						<li><a href="/view/InSchool.jsp">在校学生</a></li>
						<li><a href="/view/graduation.jsp">毕业学生</a></li>
					</ul>
					<div class="nav-header" data-toggle="collapse" data-target="#settings-menu"><i class="icon-legal"></i>教师信息</div>
					<ul id="settings-menu" class="nav nav-list collapse in">
						<li ><a href="*">教师详情</a></li>
					</ul>
				</div>
        	</div>
        	<div class="span9">
	            <h1 class="page-title">编辑学生信息</h1>
				<div class="btn-toolbar">
				    <button class="btn btn-primary"><i class="icon-save"></i> 保存</button>
				    <a href="#myModal" data-toggle="modal" class="btn">删除</a>
					<div class="btn-group">
					</div>
				</div>
				<div class="well">
				    <ul class="nav nav-tabs">
				      <li class="active"><a href="#home" data-toggle="tab">Profile</a></li>
				      <li><a href="#profile" data-toggle="tab">Password</a></li>
				    </ul>
				    <div id="myTabContent" class="tab-content">
				      <div class="tab-pane active in" id="home">
				    <form id="tab">
				        <label>Username</label>
				        <input type="text" value="jsmith" class="input-xlarge">
				        <label>First Name</label>
				        <input type="text" value="John" class="input-xlarge">
				        <label>Last Name</label>
				        <input type="text" value="Smith" class="input-xlarge">
				        <label>Email</label>
				        <input type="text" value="jsmith@yourcompany.com" class="input-xlarge">
				        <label>Address</label>
				        <textarea value="Smith" rows="3" class="input-xlarge">
							2817 S 49th
							Apt 314
							San Jose, CA 95101
				        </textarea>
				        <label>Time Zone</label>
				        <select name="DropDownTimezone" id="DropDownTimezone" class="input-xlarge">
				          <option value="-12.0">(GMT -12:00) Eniwetok, Kwajalein</option>
				          <option value="-11.0">(GMT -11:00) Midway Island, Samoa</option>
				          <option value="-10.0">(GMT -10:00) Hawaii</option>
				          <option value="-9.0">(GMT -9:00) Alaska</option>
				          <option selected="selected" value="-8.0">(GMT -8:00) Pacific Time (US &amp; Canada)</option>
				          <option value="-7.0">(GMT -7:00) Mountain Time (US &amp; Canada)</option>
				          <option value="-6.0">(GMT -6:00) Central Time (US &amp; Canada), Mexico City</option>
				          <option value="-5.0">(GMT -5:00) Eastern Time (US &amp; Canada), Bogota, Lima</option>
				          <option value="-4.0">(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz</option>
				          <option value="-3.5">(GMT -3:30) Newfoundland</option>
				          <option value="-3.0">(GMT -3:00) Brazil, Buenos Aires, Georgetown</option>
				          <option value="-2.0">(GMT -2:00) Mid-Atlantic</option>
				          <option value="-1.0">(GMT -1:00 hour) Azores, Cape Verde Islands</option>
				          <option value="0.0">(GMT) Western Europe Time, London, Lisbon, Casablanca</option>
				          <option value="1.0">(GMT +1:00 hour) Brussels, Copenhagen, Madrid, Paris</option>
				          <option value="2.0">(GMT +2:00) Kaliningrad, South Africa</option>
				          <option value="3.0">(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg</option>
				          <option value="3.5">(GMT +3:30) Tehran</option>
				          <option value="4.0">(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi</option>
				          <option value="4.5">(GMT +4:30) Kabul</option>
				          <option value="5.0">(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent</option>
				          <option value="5.5">(GMT +5:30) Bombay, Calcutta, Madras, New Delhi</option>
				          <option value="5.75">(GMT +5:45) Kathmandu</option>
				          <option value="6.0">(GMT +6:00) Almaty, Dhaka, Colombo</option>
				          <option value="7.0">(GMT +7:00) Bangkok, Hanoi, Jakarta</option>
				          <option value="8.0">(GMT +8:00) Beijing, Perth, Singapore, Hong Kong</option>
				          <option value="9.0">(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk</option>
				          <option value="9.5">(GMT +9:30) Adelaide, Darwin</option>
				          <option value="10.0">(GMT +10:00) Eastern Australia, Guam, Vladivostok</option>
				          <option value="11.0">(GMT +11:00) Magadan, Solomon Islands, New Caledonia</option>
				          <option value="12.0">(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka</option>
				    </select>
				    </form>
				      </div>
				      <div class="tab-pane fade" id="profile">
				    <form id="tab2">
				        <label>New Password</label>
				        <input type="password" class="input-xlarge">
				        <div>
				            <button class="btn btn-primary">Update</button>
				        </div>
				    </form>
				      </div>
				  </div>
				</div>
			</div>

			<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-header">
			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã</button>
			    <h3 id="myModalLabel">Delete Confirmation</h3>
			  </div>
			  <div class="modal-body">
			    
			    <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
			  </div>
			  <div class="modal-footer">
			    <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
			    <button class="btn btn-danger" data-dismiss="modal">Delete</button>
			  </div>
			</div>
	      </div>
	    </div>
    
      <footer>
		<p class="pull-right">Collect from <a href="http://www.11467.com/qiye/45122272.htm" title="一容软件" target="_blank">一容软件</a></p>
        <p>&copy; 2018 <a href="https://baike.baidu.com/item/%E6%B7%B1%E5%9C%B3/140588?fr=aladdin">Shenzhen</a></p>        
    </footer>
    </footer>
  </body>
</html>


