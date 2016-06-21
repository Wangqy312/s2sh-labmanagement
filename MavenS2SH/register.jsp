<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册页面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="mycss/css_default.css">
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.4/themes/default/easyui.css">
<!--引入easyui核心UI文件css  -->
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.4.4/themes/icon.css">
<!--引入easyui图标文件 -->
<script type="text/javascript" src="jquery-easyui-1.4.4/jquery.min.js"></script>
<!--引入jquery核心库  -->
<script type="text/javascript"
	src="jquery-easyui-1.4.4/jquery.easyui.min.js"></script>
<!--引入jquery easyui核心库  -->
<script type="text/javascript"
	src="jquery-easyui-1.4.4/locale/easyui-lang-zh_CN.js"></script>
<!--引入easyui中文提示信息  -->
<script type="text/javascript" src="myjs/js_default.js"></script>
</head>

<body class="easyui-layout">
	<div region="north"
		style="background-color: white;height: 80px;font-size: 40px;padding-top: 4px"
		align="center">---欢迎来到Med-X研究院实验室管理注册中心---<img src="images/head.gif" style="height: 70px;vertical-align: middle;"></div>
	<div region="center" align="center"
		style="background-image: url(images/register.jpg)">
		<form action="memberRegistration" method="post" id="registerForm">
			<table
				style="width: 400px;height: 300px;margin-top: 5px;background-color: white;"
				border="3px;">
				<tr height="22%">
					<td colspan="2" style="font-size: 25px"><b>请如实填写以下信息：</b></td>
				</tr>
				<tr height="13%">
					<td>真实姓名：</td>
					<td><input type="text" name="name" id="name_reg" />
					</td>
				</tr>
				<tr height="13%">
					<td>登陆密码：</td>
					<td><input type="password" name="password" id="pass_reg" />
					</td>
				</tr>
				<tr height="13%">
					<td>重复密码：</td>
					<td><input type="password" name="password2" id="pass2_reg" />
					</td>
				</tr>
				<tr height="13%">
					<td>学号：</td>
					<td><input type="text" name="studentId" id="stuId_reg" />
					</td>
				</tr>
				<tr height="13%">
					<td>身份证号：</td>
					<td><input type="text" name="idCard" id="idCard_reg" /></td>
				</tr>
				<tr height="13%">
					<td>验证码：<img title="换一张试试" name="randImageWhenReg" id="randImageWhenReg"
						src="image.jsp" width="50" height="20" border="1"
						align="absmiddle"></td>
					<td><input type="text" name="imageCodeWhenReg" id="imageCodeWhenReg"/>
					</td>
				</tr>
			</table>
			<br /> <a class="easyui-linkbutton"
				data-options="id:'validateRegister',iconCls:'icon-ok',text:'注册'"></a>
			</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="easyui-linkbutton"
				data-options="id:'resetRegister',iconCls:'icon-reload',text:'重置'"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				class="easyui-linkbutton" href="login.jsp"
				data-options="id:'goToLogin',iconCls:'icon-back',text:'登录'"></a><br /><br />
			<div align="center" id="errorMessageWhenReg">
				<b><font>${errorMessageWhenReg }</font> </b>
			</div>
		</form>
	</div>
</body>
</html>
