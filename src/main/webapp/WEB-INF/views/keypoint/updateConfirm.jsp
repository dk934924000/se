<div class="col-sm-12">
	<form:form action="${pageContext.request.contextPath}/user/update"
		modelAttribute="keyPointForm" class="form-horizontal">
		<fieldset>
			<legend>Update User</legend>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">KeyPoint Id</form:label>
				<div class="col col-sm-10">
					${f:h(keyPointForm.id)}
					<form:input path="id" type="hidden" />
					<form:errors path="id" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="name" class="col col-sm-2 control-label">KeyPoint Name</form:label>
				<div class="col col-sm-10">
					${f:h(keyPointForm.name)}
					<form:hidden path="name" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="email" class="col col-sm-2 control-label">E-mail</form:label>
				<div class="col col-sm-10">
					${f:h(keyPointForm.email)}
					<form:hidden path="email" />
					<form:errors path="email" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="birth" class="col col-sm-2 control-label">KeyPoint Birth</form:label>
				<div class="col col-sm-10">
					<fmt:formatDate pattern="yyyy-MM-dd" value="${keyPointForm.birth}" />
					<form:hidden path="birth" />
					<form:errors path="birth" cssClass="text-danger" />
					(* yyyy-MM-dd)
				</div>
			</div>
			<div class="form-group">
				<form:label path="password" class="col col-sm-2 control-label">KeyPoint Password</form:label>
				<div class="col col-sm-10">
					******
					<form:hidden path="password" />
					<form:errors path="password" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<form:label path="confirmPassword"
					class="col col-sm-2 control-label">KeyPoint Password (confirm)</form:label>
				<div class="col col-sm-10">
					******
					<form:hidden path="confirmPassword" />
					<form:errors path="confirmPassword" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<div class="col col-sm-10 col-sm-offset-2">
        <form:hidden path="id" />
        <form:hidden path="version" />
        <input type="submit" class="btn btn-primary" name="update"
          value="Update" /> <input type="submit" class="btn btn-default"
          name="redo" value="Back to Form" />
				</div>
			</div>
		</fieldset>
	</form:form>
</div>
