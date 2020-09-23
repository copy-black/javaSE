<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>编辑图书</title>
	<%@include file="/pages/common/head.jsp"%>
	<style type="text/css">
		h1 {
			text-align: center;
			margin-top: 200px;
		}

		h1 a {
			color:red;
		}

		input {
			text-align: center;
		}
	</style>
</head>
<body>
<%--是否添加操作：${empty requestScope.book? "add":"update"}--%>
<div id="header">
	<img class="logo_img" alt="" src="../../static/img/logo.gif" >
	<span class="wel_word">编辑图书</span>
<%--静态包含manage 管理菜单--%>
	<%@include file="/pages/common/manage_menu.jsp"%>
</div>

<div id="main">
	<form action="manager/bookServlet" method="get">
		<input type="hidden" name="action" value="${empty param.id? "add":"update"}">
		<input type="hidden" name="id" value="${requestScope.book.id}">
		<table>
			<tr>
				<td>名称</td>
				<td>价格</td>
				<td>作者</td>
				<td>销量</td>
				<td>库存</td>
				<td colspan="2">操作</td>
			</tr>
			<tr>
				<td><input name="name" type="text" value="时间简史"/></td>
				<td><input name="price" type="text" value="30.00"/></td>
				<td><input name="author" type="text" value="霍金"/></td>
				<td><input name="sales" type="text" value="200"/></td>
				<td><input name="stock" type="text" value="300"/></td>
				<td><input type="submit" value="提交"/></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>