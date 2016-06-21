$(function() {
	// login.jsp————————————————————————————————————————————————————————————————————————————————————————————————————————
	$("#login").click(function() {
		$("#loginForm").attr('action', 'memberValidation').submit();
	});

	$("#register").click(function() {
		$("#loginForm").attr('action', 'register.jsp').submit();
	});

	$("#reset").click(function() {
		$("#loginForm")[0].reset();
	});

	// register.jsp—————————————————————————————————————————————————————————————————————————————————————————————————————
	$("#name_reg").validatebox({
		required : true,
		missingMessage : "请输入真实姓名"
	});

	$.extend($.fn.validatebox.defaults.rules, {
		equals : {
			validator : function(value, param) {
				return value == $(param[0]).val();
			},
			message : '两次密码不一致！'
		}
	});

	$("#pass_reg").validatebox({
		required : true,
		missingMessage : "请输入6-15位密码",
		validType : "length[6,15]"
	});

	$("#pass2_reg").validatebox({
		required : true,
		missingMessage : "两次密码请保持一致",
		validType : "equals['#pass_reg']"
	});

	$.extend($.fn.validatebox.defaults.rules, {
		exactNum : {
			validator : function(value, param) {
				return value.length == param[0];
			},
			message : '请输入{0}位号码.'
		}
	});

	$("#stuId_reg").validatebox({
		required : true,
		missingMessage : "请输入12位学号",
		validType : "exactNum[12]"
	});

	$("#idCard_reg").validatebox({
		required : true,
		missingMessage : "请输入18位身份证号",
		validType : "exactNum[18]"
	});

	$("#imageCodeWhenReg").validatebox({
		required : true,
		missingMessage : "请输入验证码",
	});

	$("#validateRegister").click(function() {
		var codeLength = $("#pass_reg").validatebox('isValid');
		var codeEqual = $("#pass2_reg").validatebox('isValid');
		var sNoLength = $("#stuId_reg").validatebox('isValid');
		var idLength = $("#idCard_reg").validatebox('isValid');
		var flag = codeLength && codeEqual && sNoLength && idLength;
		if (flag) {
			$("#registerForm").submit();
		} else {
			$.messager.alert('警告', '有信息不符合格式要求，请检查之后再提交！');
		}
	});

	$("#resetRegister").click(function() {
		$("#registerForm")[0].reset();
	});

	// main.jsp——————————————————————————————————————————————————————————————————————————————————————————————————————————
	$("#logout").click(function() {

	});

	// 树控件相关设置*************************************************************************
	var treeData = [ {
		text : "主页",
		children : [ {
			text : "预约信息",
			children : [ {
				text : "实验房间借用",
				attributes : {
					url : "labInfo.jsp"
				}
			}, {
				text : "我的预约信息",
				attributes : {
					url : "myReserveInfo.jsp"
				}
			} ]
		}, {
			text : "人员信息",
			children : [ {
				text : "我的个人信息",
				attributes : {
					url : "memberInfoManage.jsp"
				}
			}, {
				text : "全员信息",
				attributes : {
					url : "membersInfoManage.jsp"
				}
			} ]
		}, {
			text : "安全中心",
			children : [ {
				text : "安全信息修改",
				children : [ {
					text : "安全邮箱",
					attributes : {
						url : "secureAction!dispatcherInEmailSetting"
					}
				}, {
					text : "密码修改",
					attributes : {
						url : "mySecureCode.jsp"
					}
				} ]
			}, {
				text : "常见问题",
				attributes : {
					url : "tips.jsp"
				}
			} ]
		} ]
	} ];

	// 实例化树菜单
	$("#tree").tree({
		data : treeData,
		lines : true,
		animate : true,
		onClick : function(node) {
			if (node.attributes) {
				openTab(node.text, node.attributes.url);
			}
		}
	});

	// 新增Tab的方法
	function openTab(text, url) {
		if ($("#tabs").tabs('exists', text)) {
			$("#tabs").tabs('select', text);
		} else {
			var content = "<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="
					+ url + "></iframe>";
			$("#tabs").tabs('add', {
				title : text,
				closable : true,
				content : content
			});
		}
	}
	// 验证码相关刷新功能设置login.jsp和register.jsp都有————————————————————————————————————————————————————————————————————
	// $("#randImage").attr('src', "image.jsp?" + Math.random());

	$('#randImage').click(function() {
		$('#randImage').attr('src', 'image.jsp?' + Math.random());
	});

	// labInfo.jsp————————————————————————————————————————————————————————————————————————————————————————————————
	// 实验室借用信息datagrid设置*******************************************************************
	$("#labInfo")
			.datagrid(
					{
						title : '实验房借用信息',
						fixed : true,
						url : "labAction!showLabReserve?roomNoToReserve=none",
						columns : [ [
								{
									title : '时间段',
									field : 'period',
									align : 'center',
									width : '140',
									resizable : false
								},
								{
									title : '周日',
									field : 'Sunday',
									align : 'center',
									width : '150',
									resizable : false,
									styler : function(value, row, index) {
										var currentUser = $(
												"input[type=hidden]").val();
										if (value == currentUser) {
											return "background-color:#ff6666";
										} else if (value != "空闲") {
											return "background-color:#9999ff";
										}
									}
								},
								{
									title : '周一',
									field : 'Monday',
									align : 'center',
									width : '150',
									resizable : false,
									styler : function(value, row, index) {
										var currentUser = $(
												"input[type=hidden]").val();
										if (value == currentUser) {
											return "background-color:#ff6666";
										} else if (value != "空闲") {
											return "background-color:#9999ff";
										}
									}
								},
								{
									title : '周二',
									field : 'Tuesday',
									align : 'center',
									width : '150',
									resizable : false,
									styler : function(value, row, index) {
										var currentUser = $(
												"input[type=hidden]").val();
										if (value == currentUser) {
											return "background-color:#ff6666";
										} else if (value != "空闲") {
											return "background-color:#9999ff";
										}
									}
								},
								{
									title : '周三',
									field : 'Wednesday',
									align : 'center',
									width : '150',
									resizable : false,
									styler : function(value, row, index) {
										var currentUser = $(
												"input[type=hidden]").val();
										if (value == currentUser) {
											return "background-color:#ff6666";
										} else if (value != "空闲") {
											return "background-color:#9999ff";
										}
									}
								},
								{
									title : '周四',
									field : 'Thursday',
									align : 'center',
									width : '150',
									resizable : false,
									styler : function(value, row, index) {
										var currentUser = $(
												"input[type=hidden]").val();
										if (value == currentUser) {
											return "background-color:#ff6666";
										} else if (value != "空闲") {
											return "background-color:#9999ff";
										}
									}
								},
								{
									title : '周五',
									field : 'Friday',
									align : 'center',
									width : '150',
									resizable : false,
									styler : function(value, row, index) {
										var currentUser = $(
												"input[type=hidden]").val();
										if (value == currentUser) {
											return "background-color:#ff6666";
										} else if (value != "空闲") {
											return "background-color:#9999ff";
										}
									}
								},
								{
									title : '周六',
									field : 'Saturday',
									align : 'center',
									width : '150',
									resizable : false,
									styler : function(value, row, index) {
										var currentUser = $(
												"input[type=hidden]").val();
										if (value == currentUser) {
											return "background-color:#ff6666";
										} else if (value != "空闲") {
											return "background-color:#9999ff";
										}
									}
								} ] ],
						toolbar : '#toolBarForAll',
						onClickCell : function(index, field, value) {
							if (value == '空闲') {
								$('#confirmReserve')
										.dialog(
												{
													title : "Confirm?",
													width : 400,
													height : 200,
													closed : true,
													buttons : [
															{
																text : "确认",
																iconCls : "icon-ok",
																handler : function() {
																	$(
																			'#reserveForm')
																			.form(
																					{
																						onSubmit : function(
																								param) {
																							param.period = index;
																							param.reserveDate = field;
																							param.roomNoToReserve = $(
																									'#s_labRoom')
																									.combobox(
																											'getValue');
																						},
																						success : function(
																								data) {
																							$(
																									'#labInfo')
																									.datagrid(
																											'reload');
																						}
																					});
																	$(
																			'#reserveForm')
																			.form(
																					'submit');
																	$(
																			'#confirmReserve')
																			.dialog(
																					'close');
																}
															},
															{
																text : "取消",
																iconCls : "icon-cancel",
																handler : function() {
																	$(
																			'#confirmReserve')
																			.dialog(
																					'close');
																}
															} ]
												});
								$('#confirmReserve').dialog("open");
							} else {
								$.messager
										.alert('不好啦！', '该房间该时间段已被预订！请更换预约时间~');
							}
						},
						onClickRow : function(index, row) {
							$('#labInfo').datagrid('clearSelections');
						} // 取消选中栏目的高亮状态
					});
	// 保证开始加载界面时窗口关闭
	$('#confirmReserve').dialog({
		closed : true
	});
	// reload实验室预订情况
	$("#reloadLabInfo").click(function() {
		$('#labInfo').datagrid('reload');
	});
	// **实验室借用信息的combobox设置************************************************************
	$('#s_labRoom').combobox({
		onChange : function(newValue, oldValue) {
			var url = "labAction!showLabReserve?roomNoToReserve=" + newValue;
			$("#labInfo").datagrid('load', url);
			if (newValue == "none") {
				$('#labInfo').datagrid('loadData', {
					total : 0,
					rows : []
				});
			}
		}
	});

	// myReserveInfo.jsp————————————————————————————————————————————————————————————————————————————————————————
	// 个人预订信息datagrid设置*************************************************************************
	$('#myReserveInfo')
			.datagrid(
					{
						title : "我的预订",
						fixed : true,
						url : "labAction!listMyReserve",
						columns : [ [
								{
									title : '预订实验时间段',
									field : 'period',
									align : 'center',
									width : '120',
									resizable : false
								},
								{
									title : '预订实验星期',
									field : 'reserveDate',
									align : 'center',
									width : '120',
									resizable : false
								},
								{
									title : '预订实验房间',
									field : 'roomReserved',
									align : 'center',
									width : '120',
									resizable : false,
									order : 'asc',
									sortable : true
								},
								{
									field : 'cancelReserve',
									align : 'center',
									width : '133',
									resizable : false,
									formatter : function(value, row, index) {
										var cancelbtn = '<a id="cancelReserve'
												+ index + '" >取消</a>';
										return cancelbtn;
									}
								} ] ],
						toolbar : "#toolBarForMyReserve",
						onLoadSuccess : function(data) {
							var total = data.rows.length;
							for ( var i = 0; i < total; i++) {
								$('#cancelReserve' + i).linkbutton({
									text : '取消预订',
									iconCls : 'icon-cancel',
									width : '128'
								});
								// 取消预订的button设置************************************************************************************
								$('#cancelReserve' + i)
										.click(
												function() {
													var id = this.id;
													$('#confirmCancel')
															.dialog(
																	{
																		title : 'Cancel?',
																		width : '500',
																		height : '200',
																		buttons : [
																				{
																					text : "确认",
																					iconCls : "icon-ok",
																					handler : function() {
																						var row = $(
																								'#myReserveInfo')
																								.datagrid(
																										'getData').rows[id
																								.substring(13)];
																						var periodToCancel = row.period;
																						var reserveDateToCancel = row.reserveDate;
																						var roomReservedToCancel = row.roomReserved;
																						$(
																								'#myReserveForm')
																								.form(
																										{
																											url : 'labAction!cancelReserved',
																											onSubmit : function(
																													param) {
																												param.period = periodToCancel;
																												param.reserveDate = reserveDateToCancel;
																												param.roomNoToReserve = roomReservedToCancel;
																											},
																											success : function(
																													data) {
																												$(
																														'#reserveForm')
																														.datagrid(
																																'reload');
																												$(
																														'#myReserveInfo')
																														.datagrid(
																																'reload');
																											}
																										});
																						$(
																								'#myReserveForm')
																								.form(
																										'submit');
																						$(
																								'#confirmCancel')
																								.dialog(
																										'close');
																					}
																				},
																				{
																					text : "取消",
																					iconCls : "icon-cancel",
																					handler : function() {
																						$(
																								'#confirmCancel')
																								.dialog(
																										'close');
																					}
																				} ]
																	});
													$("#confirmCancel").dialog(
															'open');
												});
							}
						},
						onClickRow : function(index, row) {
							$('#myReserveInfo').datagrid('clearSelections');
						},// 取消选中栏目的高亮状态
						height : '500',
						width : '500'
					});
	$("#reloadMyReserve").click(function() {
		$("#myReserveInfo").datagrid('reload');
	});

	$("#confirmCancel").dialog({
		closed : true
	});
	// 个人预订信息的图表显示***************************************************************************
	$('#myReserveInfoFig').datagrid({
		title : "我的预订图表",
		fixed : true,
		url : "labAction!listMyReserveFig?roomNoToReserve=none",
		columns : [ [ {
			title : '预订实验时间段',
			field : 'period',
			align : 'center',
			width : '100',
			resizable : false
		}, {
			title : '周日',
			field : 'sunday',
			align : 'center',
			width : '85',
			resizable : false,
			styler : function(value, row, index) {
				if (value == "预订") {
					return "background-color:#ff6666";
				}
			}
		}, {
			title : '周一',
			field : 'monday',
			align : 'center',
			width : '85',
			resizable : false,
			styler : function(value, row, index) {
				if (value == "预订") {
					return "background-color:#ff6666";
				}
			}
		}, {
			title : '周二',
			field : 'tuesday',
			align : 'center',
			width : '85',
			resizable : false,
			styler : function(value, row, index) {
				if (value == "预订") {
					return "background-color:#ff6666";
				}
			}
		}, {
			title : '周三',
			field : 'wednesday',
			align : 'center',
			width : '85',
			resizable : false,
			styler : function(value, row, index) {
				if (value == "预订") {
					return "background-color:#ff6666";
				}
			}
		}, {
			title : '周四',
			field : 'thursday',
			align : 'center',
			width : '85',
			resizable : false,
			styler : function(value, row, index) {
				if (value == "预订") {
					return "background-color:#ff6666";
				}
			}
		}, {
			title : '周五',
			field : 'friday',
			align : 'center',
			width : '85',
			resizable : false,
			styler : function(value, row, index) {
				if (value == "预订") {
					return "background-color:#ff6666";
				}
			}
		}, {
			title : '周六',
			field : 'saturday',
			align : 'center',
			width : '85',
			resizable : false,
			styler : function(value, row, index) {
				if (value == "预订") {
					return "background-color:#ff6666";
				}
			}
		} ] ],
		toolbar : "#toolBarForMyReserveFig",
		onClickRow : function(index, row) {
			$('#myReserveInfoFig').datagrid('clearSelections');
		},// 取消选中栏目的高亮状态
		height : '500',
		width : '700'
	});
	// 图表显示的combobox
	$('#r_labRoom').combobox({
		onChange : function(newValue, oldValue) {
			var url = "labAction!listMyReserveFig?roomNoToReserve=" + newValue;
			$("#myReserveInfoFig").datagrid('load', url);
			if (newValue == "none") {
				$('#labInfo').datagrid('loadData', {
					total : 0,
					rows : []
				});
			}
		}
	});

	$("#reloadMyReserveFig").click(function() {
		$("#myReserveInfoFig").datagrid('reload');
	});
	// memberInfoManage.jsp————————————————————————————————————————————————————————————————————————————————————————
	// 个人信息属性框架的数据获取设置**************************************************************
	$("#memberInfo").propertygrid({
		url : "membersAction!listMemberMessage",
		showGroup : true,
		toolbar : '#toolBarForOne',
		rowStyler : function(index, row) {
			return 'font-size:10px';
		}
	});

	$("#resetChange").click(function() {
		$('#memberInfo').propertygrid('load');
	});

	$('#saveChange')
			.click(
					function() {
						var rows = $('#memberInfo').propertygrid('getRows');
						$('#saveChange')
								.attr(
										'href',
										encodeURI(encodeURI('membersAction!updateMemberMessage?d_id_base='
												+ rows[0].value
												+ '&s_d_name='
												+ rows[1].value
												+ '&s_d_sex='
												+ rows[2].value
												+ '&d_birthday='
												+ rows[3].value
												+ '&d_email='
												+ rows[4].value
												+ '&d_idCard='
												+ rows[5].value
												+ '&d_phoneNo='
												+ rows[6].value
												+ '&s_d_studentId='
												+ rows[7].value
												+ '&s_d_roomNo='
												+ rows[8].value
												+ '&s_d_instructorName='
												+ rows[9].value)));
					});
	// 获取全部人信息的datagrid设置********************************************************************
	$("#membersInfo").datagrid({
		title : '全员信息',
		fixed : true,
		pagination : true,
		rownumbers : true,
		url : "membersAction!listAllMembers",
		fit : true,
		pageList : [ 5, 10, 15, 20 ],
		pageSize : 15,
		columns : [ [ {
			title : '编号',
			field : 'id_base',
			align : 'center',
			width : "12.5%"
		}, {
			title : '姓名',
			field : 'name',
			align : 'center',
			width : "12.5%"
		}, {
			title : '性别',
			field : 'sex',
			align : 'center',
			width : "12.5%"
		}, {
			title : '学号',
			field : 'studentId',
			align : 'center',
			width : "12.5%"
		}, {
			title : '生日',
			field : 'birthday',
			align : 'center',
			width : "12.5%"
		}, {
			title : '办公位置',
			field : 'roomNo',
			align : 'center',
			width : "12.5%"
		}, {
			title : '联系电话',
			field : 'phoneNo',
			align : 'center',
			width : "12.5%"
		}, {
			title : '导师姓名',
			field : 'instructorName',
			align : 'center',
			width : "12.5%"
		} ] ],
		toolbar : '#toolBarForAll'
	});
	// datagrid中的搜索按键的事件响应绑定
	$("#refreshData").click(function() {
		$('#membersInfo').datagrid('load', {
			s_d_name : $('#s_d_name').val(),
			s_d_studentId : $('#s_d_studentId').val(),
			s_d_sex : $('#s_d_sex').combobox("getValue"),
			s_bbirthday : $('#s_bbirthday').datebox("getValue"),
			s_ebirthday : $('#s_ebirthday').datebox("getValue"),
			s_d_roomNo : $('#s_d_roomNo').combobox("getValue"),
			s_d_instructorName : $('#s_d_instructorName').val()
		});
	});

	// mySecureCode.jsp————————————————————————————————————————————————————————————————————————————————————————————————
	// validatebox的设置
	$("#se_oldPass").validatebox({
		required : true,
		missingMessage : "请输入原密码"
	});
	$("#se_newPass").validatebox({
		required : true,
		missingMessage : "请输入原密码",
		validType : "length[6,15]"
	});
	$("#se_newPassConfirm").validatebox({
		required : true,
		missingMessage : "请输入原密码",
		validType : "equals['#se_newPass']"
	});

	$("#se_codeConfirm").click(function() {
		var passLength = $("#se_newPass").validatebox('isValid');
		var passEqual = $("#se_newPassConfirm").validatebox('isValid');
		var flag = passLength && passEqual;
		if (flag) {
			$("#codeConfirmForm").submit();
		} else {
			$.messager.alert('警告', '有信息不符合格式要求，请检查之后再提交！');
		}
	})

	// mySecureEmailCreate.jsp &&
	// mySecureEmailChange.jsp——————————————————————————————————————————————————————————————————
		$.extend($.fn.validatebox.defaults.rules, {
		email_equals : {
			validator : function(value, param) {
				return value == $(param[0]).val();
			},
			message : '两次邮箱不一致！'
		}
	});
	$("#se_newEmail").validatebox({
		required : true,
		missingMessage : "请输入安全邮箱",
		validType : "email"
	});
	$("#se_newEmailConfirm").validatebox({
		required : true,
		missingMessage : "请重复安全邮箱",
		validType : "email_equals['#se_newEmail']"
	});

	$("#se_oldEmail").validatebox({
		required : true,
		missingMessage : "请输入原安全邮箱",
		validType : "email"
	})

	$("#se_emailCreate").click(function() {
		var emailForm = $("#se_newEmail").validatebox('isValid');
		var emailEqual = $("#se_newEmailConfirm").validatebox('isValid');
		var flag = emailForm && emailEqual;
		if (flag) {
			$("#emailCreateForm").submit();
		} else {
			$.messager.alert('警告', '有信息不符合格式要求，请检查之后再提交！');
		}

	})
});
