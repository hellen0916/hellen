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

<title>My JSP 'myaccount.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
table {
	width: 800px;
	height: 80px;
}
.ptable{
			margin: 0px auto;
			width:600px;
			border: 1px solid #9A9A9A;
			background-color: #F0F8FF;
		}
		.ptable tr{
			line-height: 30px;
			
		}
		.ptable tr th{
			background-color: #DCDCDC;
		}
		.ptable tr td{
		height:30px;
			text-align: center;
		}
</style>
</head>

<body>
	<jsp:include page="/client/head.jsp"></jsp:include>
	<strong class="conT"><a href="/ptwoploan/myaccount">个人信息</a> | <a href="/ptwoploan/myloan">我的借款</a> | <a href="/ptwoploan/myinvest">我的投资</a> | <a href="/ptwoploan/recharge">充值</a></strong>
		<form>
			<table class="ptable" cellspacing="0px" rules="rows">
				<tr>
					<td>账户</td>
					<td>${requestScope.user.account}</td>
				</tr>
				<tr>
					<td>账户余额(¥)</td>
					<td> ${requestScope.blance}</td>
				</tr>
				<tr>
					<td>真实姓名</td>
					<td>${requestScope.user.name}</td>
				</tr>
				<tr>
					<td>联系方式</td>
					<td>${requestScope.user.tel}</td>
				</tr>
				<tr>
					<td>联系地址</td>
					<td>${requestScope.user.address}</td>
				</tr>
				<tr>
					<td>身份证号</td>
					<td class="alignL">${requestScope.user.idcart}</td>
				</tr>
				<tr>
					<td>公司</td>
					<td class="alignL">${requestScope.user.company}</td>
				</tr>
				<tr>
					<td>工资</td>
					<td>${requestScope.user.salary}</td>
				</tr>
				<tr>
					<td>详细信息</td>
					<td><textarea rows="5" readonly="readonly"  cols="50">${requestScope.user.otherinfor}</textarea></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="修改资料" onclick="window.location.href='client/myaccount/updateaccount.jsp'"/>
						<input type="button" value="返回" onclick="javascript:history.back();" />
					</td>
				</tr>
			</table>
		</form>
	<jsp:include page="/client/foot.jsp"></jsp:include>
</body>
</html>
