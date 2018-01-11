<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html xmlns:th="http://www.thymeleaf.org"
	  xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<section class="mt-50 pb-150">
	<div class="container">
		<div class="col-md-12 col-sm-12 mt-50">
			<h2 class="text-uppercase ls-3 bb text-center">USER&nbsp;<span class="yellow">&nbsp;LIST</span></h2>
		</div>
	</div>
</section>
${request}

<head>
	<!-- Place favicon.ico in the root directory -->
	<link rel="stylesheet" href="../../../static/Wikideo/css/bootstrap.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/font-awesome.min.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/owl.carousel.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/owl.theme.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/normalize.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/main.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/responsive.css">
</head>

<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>

	<div class="well">

		<form:form action="${pageContext.request.contextPath}/user/search"
			method="get" modelAttribute="userSearchForm"
			class="form-inline my-inline" id="form_user">
			<div class="sb-search" align="center">
				<div class="input-group">
					&nbsp;
					<form:input path="name" class="form-control" />
					<a href="#" onclick="document.getElementById('form_user').submit()" class="input-group-addon work-sans fz-13 text-semi-bold text-uppercase">Search</a>
					&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/user/create?form" class="input-group-addon work-sans fz-13 text-semi-bold text-uppercase">New user</a>
				</div>
			</div>
		</form:form>
	</div>

	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>编号</th>
				<th>姓名</th>
				<th>邮箱</th>
				<th>生日</th>
				<th>操作</th>
			</tr>
		</thead>
		<%
			UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication() .getPrincipal();
			String username = userDetails.getUsername();
			request.setAttribute("un",username);
		%>
		<tbody>

		<sec:authorize ifAllGranted="ROLE_ADMIN">
			<c:forEach var="user" items="${page.content}">
					<tr>
						<td>${f:h(user.id)}</td>
						<td>${f:h(user.name)}</td>
						<td>${f:h(user.email)}</td>
						<td>${f:h(user.birth)}</td>
						<td><form:form
								action="${pageContext.request.contextPath}/user"
								class="form-inline">
							<input type="hidden" name="id" value="${f:h(user.id)}" />
							<input type="submit" class="btn btn-default"
								   name="redirectToUpdate" value="UPDATE" />
							<input type="submit" class="btn btn-danger"
								   name="redirectToDelete" value="DELETE" />
						</form:form></td>
					</tr>
			</c:forEach>
		</sec:authorize>

		<sec:authorize ifNotGranted="ROLE_ADMIN">
			<c:forEach var="user" items="${page.content}">
				<c:if test="${un==f:h(user.name)}">
					<tr>
						<td>${f:h(user.id)}</td>
						<td>${f:h(user.name)}</td>
						<td>${f:h(user.email)}</td>
						<td>${f:h(user.birth)}</td>
						<td><form:form
								action="${pageContext.request.contextPath}/user"
								class="form-inline">
							<input type="hidden" name="id" value="${f:h(user.id)}" />
							<input type="submit" class="btn btn-default"
								   name="redirectToUpdate" value="更新信息" />
							<input type="button" class="btn btn-danger"
								   name="redirectToDelete" value="删除" />
						</form:form></td>
					</tr>
				</c:if>
			</c:forEach>
		</sec:authorize>
		</tbody>
	</table>
	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
