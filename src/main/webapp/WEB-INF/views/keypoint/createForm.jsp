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
	<form:form action="${pageContext.request.contextPath}/keypoint/create"
		modelAttribute="keyPointForm" class="form-horizontal">

			<fieldset>
				<div class="container">
					<div class="col-md-12 col-sm-12 mt-50">
						<h2 class="text-uppercase ls-3 bb text-center">NEW<span class="yellow">&nbsp;COMMENT</span></h2>
					</div>
				</div>
				<br>
				<br>
				<br>
				<div class="form-group">
					<form:label path="name" class="col col-sm-2 control-label">问题题目:</form:label>
					<div class="col col-sm-10">
						<form:input path="name" class="form-control" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<form:label path="description" class="col col-sm-2 control-label">问题描述:</form:label>
					<div class="col col-sm-10">
						<form:textarea rows="3" path="description" class="form-control" />
						<form:errors path="description" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<div class="col col-sm-10 col-sm-offset-2">
						<input type="submit" class="btn btn-warning" name="Confirm" value="CONFIRM" />
						<input type="submit" class="btn btn-default" name="redirectToList" value="BACK" />
					</div>
				</div>
			</fieldset>
	</form:form>
</div>
