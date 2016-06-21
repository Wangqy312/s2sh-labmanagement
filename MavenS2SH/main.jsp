<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>实验室房间预约管理系统</title>
<%
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "No-cache");
	response.setDateHeader("Expires", -1);
	response.setHeader("Cache-Control", "No-store");
	// 权限验证
	if (session.getAttribute("currentUser") == null) {
		response.sendRedirect("login.jsp");
		return;
	}
%>
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
<body class="easyui-layout" fit=true
	style="overflow: auto;width: 1370px;height: 645px">
	<div region="north"
		style="height: 80px;background-image: url(images/mainTitle.jpg);width: 900px">
		<div align="right" style="padding-top: 50px;padding-right: 30px;">
			当前用户：&nbsp;${sessionScope.currentUser }&nbsp;<a href="logoutAction"
				class="easyui-linkbutton"
				data-options="id:'logout',iconCls:'icon-cancel',text:'注销'"></a>
		</div>
	</div>
	<div region="center" style="width: 300px">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页" style="background-image: url(images/medx-back.jpg)">
				<div align="left" style="width: 540px;" id="scrollWords">
					<font size="5px"><marquee><b>欢迎来到Med-X研究院实验室管理系统！</b></marquee> </font>
				</div>
				<div style="width: 520px;height:460px;padding-left: 20px;padding-top: 20px;">
					<font size="3px">&nbsp;&nbsp;Med-X研究院是上海交通大学“985工程”建设的重要科技创新平台之一，是学校直属的从事医工、医理交叉研究的科研教育机构。由长江特聘教授、国家杰出青年基金获得者徐学敏担任院长，澳大利亚工程院冯大淦院士担任首席科学顾问及国际顾问委员会主任，中国工程院戴尅戎院士、陈亚珠院士担任国内顾问委员会主任。推动生物医学和工程学/物理科学的交叉科学研究对于这些领域未来的发展有着至关重要的意义。<br/>
						&nbsp;&nbsp;MIT校长Susan Hockfield博士对于这一交叉发展已提出了以下观点：生命科学和物理科学及工程学的交汇可能正孕育着第三次生命科学的革命。<br />
						&nbsp;&nbsp;为了抓住这一令人兴奋的历史性机遇,
						有力地推动我国医工(理)交叉科学赶超世界先进水平，Med-X研究院拥有的使命是：运用尖端的工程学和物理科学研究手段对重大的医学问题进行国际前沿性的转化型研究。<br/>
						&nbsp;&nbsp;上海交大拥有一流的工程学科和包括了十二所附属三级甲等医院的一流临床医学学科。上海交大的生物医学工程学科也在全国名列前茅。这些独特的优势使得上海交大具有极大的潜力发展有国际先进水平的、从事于医工(理)交叉科学的大规模研究平台。
						在2005年与原上海第二医科大学“强-强”合并后，上海交大将大力发展医工、医理交叉科学作为其主要的战略之一。<br/>
						&nbsp;&nbsp;在校领导的大力支持下，Med-X研究院于2007年11月12日正式成立。Med-X研究院是上海交通大学“985工程”建设的重要科技创新平台之一，是学校直属的从事医工、医理交叉研究的科研教育机构。
						上海交通大学Med-X研究院是上海交通大学“985工程”建设的重要科技创新平台之一， </font>
				</div>
			</div>
		</div>
	</div>
	<div region="west" style="width: 150px;" title="导航菜单">
		<table>
			<tr height="220px">
				<td valign="top"><ul id="tree"></ul>
				</td>
			</tr>
			<tr height="285px">
				<td valign="bottom" align="center"><div class="easyui-calendar" style="width:140px"></div>
				</td>
			</tr>
		</table>
	</div>
	<div region="south" style="height: 25px;padding-top: 3px" align="center" >
		版权所有:cn.wqy.sjtu&nbsp;&nbsp;Tel:021-2132132&nbsp;&nbsp;Fax:021-2144121</div>
</body>
</html>