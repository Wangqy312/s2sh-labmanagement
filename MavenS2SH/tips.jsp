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

<title>Tips</title>
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

<body style="background-image: url(images/tips.jpg)">
	<div style="padding-left: 120px;padding-top: 50px">
		<font style="font-family: fantasy;font-size: 50px">Tips:</font>
		<ul style="font-family: '宋体';font-size: 20px">
			<li>本系统采取完全的实名制，<font color="red"><b>严禁利用他人账号进行注册预约</b> </font>，一旦发现，取消该同学预约实验资格</li>
			<li>同学间预约请按需预约，以免造成不必要的资源浪费。对预约后不按时实验，爽约者，第一次<font color="red"><b>通报批评</b>
			</font>，<br />再犯时视情节轻重，给与账号<font color="red"><b>3-7天封停</b> </font>惩罚.如果多次违反，则上报实验中心<font
				color="red"><b>永久取消该同学预约<br />实验资格</b> </font>，后果自负。如果确实不能按时参与实验，应及时取消实验预约</li>
			<li>实验人员必须经过培训，掌握设备性能和操作方法后方可使用相关设备。操作时应严格按照说明操作，<br />做好自身防护；实验中注意环境温度、湿度，严禁随意移动和借出设备。设备使用完毕后收整好，<br />违反设备使用操作规程导致设备损坏者，维修费用由实验者本人或导师所在课题组<font
				color="red"><b>照价赔偿</b> </font></li>
			<li>注册中心绑定了各位入学时的信息，注册、修改时请格外谨慎，以防发生不必要的麻烦</li>
			<li>实验室实际使用情况请大家相互监督，共同维护预约使用管理系统</li>
			<li>如果在预约方面出现了问题，请致电021-21831121（王老师）</li>
		</ul>

	</div>
</body>
</html>
