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

<body>
	<table id="membersInfo"></table>

	<div id="toolBarForAll">
		<div>
			&nbsp;姓名：&nbsp;<input type="text" name="s_d_name" id="s_d_name" size="5" />
			&nbsp;学号：&nbsp;<input type="text" name="s_d_studentId" id="s_d_studentId"
				size="10" /> &nbsp;性别：&nbsp;<select class="easyui-combobox"
				id="s_d_sex" name="s_d_sex" editable="false" panelHeight="auto">
				<option value="">请选择...</option>
				<option value="男">男</option>
				<option value="女">女</option>
			</select> &nbsp;出生日期：&nbsp;<input class="easyui-datebox" name="s_bbirthday"
				id="s_bbirthday" editable="false" size="10" />-><input
				class="easyui-datebox" name="s_ebirthday" id="s_ebirthday"
				editable="false" size="10" /> &nbsp;办公位置：&nbsp;<input
				class="easyui-combobox" id="s_d_roomNo" name="s_d_roomNo" size="10"
				data-options="panelHeight:'auto',editable:false,valueField:'id',textField:'roomNo',url:'membersAction!listRoomNo'" />
			&nbsp;导师姓名：&nbsp;<input type="text" name="s_d_instructorName"
				id="s_d_instructorName" size="5" /> <a id="refreshData" class="easyui-linkbutton"
				iconCls="icon-search" plain="true">搜索</a>
		</div>
	</div>
</body>
</html>
