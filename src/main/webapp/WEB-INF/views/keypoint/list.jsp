<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<section class="mt-50 pb-150">
	<div class="container">
		<div class="col-md-12 col-sm-12 mt-50">
			<h2 class="text-uppercase ls-3 bb text-center">COMMENT&nbsp;<span class="yellow">&nbsp;BOARD</span></h2>
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

		<form:form action="${pageContext.request.contextPath}/keypoint/search"
			method="get" modelAttribute="keyPointSearchForm"
			class="form-inline my-inline" id="form_search" >
			<div class="sb-search" align="center">
				<div class="input-group">
					&nbsp;
					<form:input path="name" class="form-control" placeholder="请输入问题关键词" />
					<a href="#" onclick="document.getElementById('form_search').submit()" class="input-group-addon work-sans fz-13 text-semi-bold text-uppercase">Search</a>
					&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/keypoint/create?form" onclick="document.getElementById('form_search').submit()"
					   class="input-group-addon work-sans fz-13 text-semi-bold text-uppercase">Write Comments</a><br> <br>
				</div>
			</div>
		</form:form>
	</div>

	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th align="center">留言编号</th>
				<th align="center">留言内容</th>
				<th align="center">点赞数</th>
				<th align="center">创建时间</th>
				<th align="center">相关操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="keypoint" items="${page.content}">
				<tr>
					<td># ${f:h(keypoint.id)}</td>
					<td>${f:h(keypoint.name)}</td>
					<td>${f:h(keypoint.agreed)}</td>
					<td>${f:h(keypoint.createdAt)}</td>
					<td align="center" ><form:form
						action="${pageContext.request.contextPath}/keypoint"
						class="form-inline">
							<input type="hidden" name="id" value="${f:h(keypoint.id)}" />
							<input type="submit" class="btn btn-warning" name="add" value="LIKE" />
					</form:form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
