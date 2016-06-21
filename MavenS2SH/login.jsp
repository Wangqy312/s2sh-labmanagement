<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
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

<title>欢迎来到Med-x研究院实验室管理系统</title>
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

<body
	style="background-image: url(images/login_base.jpg);background-position: center;background-repeat: repeat;">
	<div align="center" style="padding-top: 50px;">
		<form action="memberValidation" method="post" id="loginForm">
			<table width="740" height="500"
				style="border-style: dashed;border-color: white">
				<!-- border="1px"> -->

				<tr height="180">
					<td colspan="4" align="center"
						style="font-size: 50px;font-family: 楷体;color: white"><b>Med-X实验室管理预约系统</b>
						<hr>
					</td>
				</tr>
				<tr height="10">
					<td width="35%"></td>
					<td width="10%"><b>编 号：</b>
					</td>
					<td><input type="text" name="id_account" id="id_account"
						class="easyui-validatebox" data-options="required:true" />
					</td>
					<td width="35%"></td>
				</tr>
				<tr height="10">
					<td width="35%"></td>
					<td width="10%"><b>姓 名：</b>
					</td>
					<td><input type="text" name="name" id="name"
						class="easyui-validatebox" data-options="required:true" />
					</td>
					<td width="35%"></td>
				</tr>
				<tr height="10">
					<td width="35%"></td>
					<td width="10%"><b>密 码：</b>
					</td>
					<td><input type="password" name="password" id="password"
						class="easyui-validatebox" data-options="required:true" /></td>
					<td width="35%"></td>
				</tr>
				<tr height="10">
					<td width="35%"></td>
					<td width="10%"><b>验证码：</b>
					</td>
					<td><input type="text" value="${imageCode }" name="imageCode"
						id="imageCode" size="10" />&nbsp;<img title="换一张试试"
						name="randImage" id="randImage" src="image.jsp" width="50"
						height="20" border="1" align="absmiddle">
					</td>
					<td width="35%"></td>
				</tr>
				<tr height="10">
					<td width="35%"></td>
					<td width="10%" align="center"><a class="easyui-linkbutton"
						data-options="id:'login',iconCls:'icon-ok',text:'登录'"></a>
					<td width="20%" align="center"><a class="easyui-linkbutton"
						data-options="id:'register',iconCls:'icon-add',text:'注册'"></a>&nbsp;&nbsp;<a
						class="easyui-linkbutton"
						data-options="id:'reset',iconCls:'icon-reload',text:'重置'"></a>
					<td width="35%"><a href="emailToChangeCodeTrans.jsp"
						style="font-family: 微软雅黑;color:#ff6666"><font><b>忘记密码？o(╯□╰)o</b>
						</font> </a></td>
				</tr>
				<tr height="30">
					<td width="35%"></td>
					<td width="30%" colspan="2" id="errorMessage" align="center"><b><font
							color="#ff6666">${errormessage }</font> </b>
					</td>
					<td width="35%"></td>
				</tr>
				<tr>
					<td></td>
				</tr>
			</table>
		</form>
	</div>
	<hr align="center"
		style="height:40px;border: none;border-bottom: 2px dotted #ffffff;">
	<div align="center"
		style="color: white;font-size: smaller;font-style: inherit;">版权所有org.sjtu.wqy</div>

</body>
</html>
