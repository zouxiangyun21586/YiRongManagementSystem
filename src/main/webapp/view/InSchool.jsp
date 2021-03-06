<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>学生信息</title>
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
                <a class="brand" href="/view/introduce.jsp"><span class="first">School </span> <span class="second">information</span></a>
            </div>
        </div>
    </div>
    
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span3">
                <div class="sidebar-nav">
					<div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>学校信息</div>
					<ul id="dashboard-menu" class="nav nav-list collapse in">
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
            <h1 class="page-title">Users</h1>
			<div class="btn-toolbar">
			    <button class="btn btn-primary"><i class="icon-plus"></i><a href="#addModal" data-toggle="modal"> 添加学生</a></button>
			    <button class="btn">导入</button>
			    <button class="btn">导出</button>
				<div class="btn-group">
				</div>
			</div>
			<div class="well">
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
			          <th style="width: 26px;"></th>
			        </tr>
			      </thead>
				  <tbody id="linkStudentMessage"></tbody>
			    </table>
			</div>
			<div class="pagination">
			    <ul>
			        <li><a href="#">Prev</a></li>
			        <li><a href="#">1</a></li>
			        <li><a href="#">2</a></li>
			        <li><a href="#">3</a></li>
			        <li><a href="#">4</a></li>
			        <li><a href="#">Next</a></li>
			    </ul>
			</div>
	
			<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			    <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
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
			
			<div class="modal small hide fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
			    <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
			        <h3 id="addModalLabel">学生信息添加</h3>
			    </div>
			    <div class="modal-body">
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
						</select>
					</form>
			    </div>
			    <div class="modal-footer">
			        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
			        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
			    </div>
			</div>
		  </div>
		</div>
    </div>
    <footer>
		<p class="pull-right">Collect from <a href="http://www.11467.com/qiye/45122272.htm" title="一容软件" target="_blank">一容软件</a></p>
        <p>&copy; 2018 <a href="https://baike.baidu.com/item/%E6%B7%B1%E5%9C%B3/140588?fr=aladdin">Shenzhen</a></p>        
    </footer>
  </body>
  <script type="text/javascript">
	$(document).ready(function(){ // 页面加载完成后出现
		queryAll();
	});
	
	function queryAll() {
		$.ajax({
			type : "get",
			url : '<%=request.getContextPath()%>/student',
			dataType:"json",
			success : function(dataObj) {
				var html = "";
				for(var i in dataObj){
					if (dataObj[i].stuStatus == "0") {
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
							"<td  align='center'>" + "" + "</td>"+
							"<td  align='center'>"+
								"<a href=\"user.jsp\"><i class=\"icon-pencil\"></i></a>"+
								"<a href=\#myModal\ role=\button\" data-toggle=\"modal\"><i class=\"icon-remove\"></i></a>"+
							"</td></tr>";
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
							"<td  align='center'>" + dataObj[i].graduationTime + "</td>"+
							"<td  align='center'>"+
								"<a href=\"user.jsp\"><i class=\"icon-pencil\"></i></a>"+
								"<a href=\#myModal\ role=\button\" data-toggle=\"modal\"><i class=\"icon-remove\"></i></a>"+
							"</td></tr>";
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
							"<td  align='center'>" + "" + "</td>"+
							"<td  align='center'>"+
								"<a href=\"user.jsp\"><i class=\"icon-pencil\"></i></a>"+
								"<a href=\#myModal\ role=\button\" data-toggle=\"modal\"><i class=\"icon-remove\"></i></a>"+
							"</td></tr>";
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
							"<td  align='center'>" + dataObj[i].graduationTime + "</td>"+
							"<td  align='center'>"+
								"<a href=\"user.jsp\"><i class=\"icon-pencil\"></i></a>"+
								"<a href=\#myModal\ role=\button\" data-toggle=\"modal\"><i class=\"icon-remove\"></i></a>"+
							"</td></tr>";
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