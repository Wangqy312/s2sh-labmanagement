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

<title>修改安全邮箱</title>
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

<body style="background-image: url(images/secure.jpg)">
	<div style="padding-left: 50px;padding-top: 10px">
		<form action="secureAction!changeSecureEmail">
			<div style="font-family: 黑体;font-size: 25px;color: red">您已经有了安全邮箱并已确认，如需要更改，请如下操作。</div>
			<table style="border-style: dashed;padding: 10px">
				<tr>
					<td>旧安全邮箱：</td>
					<td><input type="text" id="se_oldEmail" name="se_oldEmail">
					</td>
				</tr>
				<tr>
					<td>新安全邮箱：</td>
					<td><input type="text" id="se_newEmail" name="se_newEmail">
					</td>
				</tr>
				<tr>
					<td>重复新安全邮箱：</td>
					<td><input type="text" id="se_newEmailConfirm" name="se_newEmailConfirm"></td>
				</tr>
				<tr>
					<td><input type="submit"></td>
					<td><input type="reset"></td>
				</tr>
				<tr>
					<td colspan="2" align="center" id="se_mess_emailChange"
						style="color: red"><b>${se_mess_emailChange }</b>&nbsp;</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
