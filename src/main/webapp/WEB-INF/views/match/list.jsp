<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html xmlns:th="http://www.thymeleaf.org"
	  xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<head>
	<!-- Place favicon.ico in the root directory -->
	<link rel="stylesheet" href="../../../static/Wikideo/css/bootstrap.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/font-awesome.min.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/owl.carousel.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/owl.theme.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/normalize.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/main.css">
	<link rel="stylesheet" href="../../../static/Wikideo/css/responsive.css">

	<link href="../../../static/GamePlay/js/dl-menu/component.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/slick.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/slick-theme.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/font-awesome.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/svg-icons.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/prettyPhoto.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/typography.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/widget.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/shortcodes.css" rel="stylesheet">
	<link href="../../../static/GamePlay/style.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/color.css" rel="stylesheet">
	<link href="../../../static/GamePlay/css/responsive.css" rel="stylesheet">
</head>

<section class="mt-50 pb-150">
	<div class="container">
		<div class="col-md-12 col-sm-12 mt-50">
			<h2 class="text-uppercase ls-3 bb text-center">MATCH<span class="yellow">&nbsp;INFO</span></h2>
		</div>
	</div>
</section>


${request}
<div class="col-sm-12">
	<c:if test="${not empty errorMessage}">
		<div class="alert alert-error">${f:h(errorMessage)}</div>
	</c:if>
<div class="col-sm-12">
	<form class="form-inline my-inline">
	<div class="well" >
		<div class="sb-search" align="center">
			<div class="input-group">
				<a href="${pageContext.request.contextPath}/match/create?form"
				   class="input-group-addon work-sans fz-13 text-semi-bold text-uppercase"
				   style="height: 65px;width: 140px">NEW MATCH</a><br> <br>
			</div>
		</div>
	</div>
	</form>
</div>
	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>id</th>
				<th>loc</th>
				<th>ptime</th>
				<th>team1</th>
				<th>team2</th>
				<th>result</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="match" items="${page.content}">
					<tr>
						<td>${f:h(match.id)}</td>
						<td>${f:h(match.loc)}</td>
						<td>${f:h(match.ptime)}</td>
						<td>${f:h(match.team1)}</td>
						<td>${f:h(match.team2)}</td>
						<td>${f:h(match.result)}</td>
						<td><form:form
								action="${pageContext.request.contextPath}/match"
								class="form-inline">
							<input type="hidden" name="id" value="${f:h(match.id)}" />
							<input type="submit" class="btn btn-default"
								   name="redirectToUpdate" value="UPDATE" />
							<input type="submit" class="btn btn-danger"
								   name="redirectToDelete" value="DELETE" />
						</form:form></td>
					</tr>
			</c:forEach>

		</tbody>
	</table>
	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
