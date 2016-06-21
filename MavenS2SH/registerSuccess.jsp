<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册成功</title>
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
<script type="text/javascript">
	var seconds = 10;
	timer = setInterval("redirect()", 1000);

	function redirect() {
		if (seconds < 0) {
			$("#second").html(seconds);
			window.location = "login.jsp";
		} else {
			$("#second").html(seconds);
		}
		seconds--;
	}
</script>
</head>

<body class="easyui-layout"
	style="background-image: url(images/registerSuccess.jpg)">
	<div
		style="padding-left: 40px;padding-top: 80px;font-size: 30px;font-family: 黑体">
		<font size="20px">"</font>你已经注册好啦！！<br />你的编号是“<font size="20px"
			color="red">${sessionScope.currentUserId_account }</font>”，请牢记~<font
			size="20px">"</font><br /> <font size="20px" color="red"><span
			id="second"></span> </font>秒后跳转至登陆界面~<br/><a href="login.jsp">立即跳转戳我yo^_^</a>
	</div>
</body>
</html>
