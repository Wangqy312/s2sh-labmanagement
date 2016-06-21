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

<title>邮箱找回密码？</title>
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

<body class="easyui-layout"
	style="background-image: url(images/findCode.jpg)">
	<div
		style="padding-left: 70px;padding-top: 120px;font-size: 30px;font-family: 黑体">
		<form action="secureAction!sendEmailChangeCode" method="post">
			<table>
				<tr>
					<td>编号：</td>
					<td><input id="idToFetch" name="idToFetch"
						class="easyui-validatebox"
						data-options="required:true,missMessage:'请输入编号'" /></td>
				</tr>
				<tr>
					<td>姓名：</td>
					<td><input id="nameToFetch" name="nameToFetch"
						class="easyui-validatebox"
						data-options="required:true,missingMessage:'请输入姓名'" />
					</td>
				</tr>
				<tr>
					<td>安全邮箱：</td>
					<td><input id="emailToFetch" name="emailToFetch"
						class="easyui-validatebox"
						data-options="required:true,missingMessage:'请输入安全邮箱'" />
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="找回密码" /></td>
					<td><input type="reset" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center" id="etccTrans_message"
						style="color: red">${etccTrans_message }&nbsp;</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
