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

<body class="easyui-layout">
	<div>
		<form action="labAction!updateLab" method="post" id="myReserveForm">
			<table>
				<tr>
					<td width="500px" align="center">
						<table id="myReserveInfo"></table>
						<div id="toolBarForMyReserve">
							<a id="reloadMyReserve" class="easyui-linkbutton"
								iconCls="icon-reload" plain="true">刷新</a>
						</div></td>
					<td width="700px">
						<table id="myReserveInfoFig"></table>
						<div id="toolBarForMyReserveFig">
							<select class="easyui-combobox" id="r_labRoom" name="r_labRoom"
								editable="false" panelHeight="auto">
								<option value="none">请选择...</option>
								<option value="109">109流式细胞仪</option>
								<option value="117">117双光子显微镜</option>
								<option value="303">303细胞房A</option>
								<option value="305">305细胞房B</option>
								<option value="313">313水迷宫</option>
								<option value="404">404共聚焦显微镜</option>
								<option value="412">412冷冻切片机</option>
							</select> <a id="reloadMyReserveFig" class="easyui-linkbutton"
								iconCls="icon-reload" plain="true">刷新</a>
						</div>
					</td>
				</tr>
			</table>
		</form>
		<div id="confirmCancel">
			<p>
				<font size="4px">&nbsp;&nbsp;确认取消吗？</font>
			</p>
		</div>
	</div>

	</div>
</body>
</html>
