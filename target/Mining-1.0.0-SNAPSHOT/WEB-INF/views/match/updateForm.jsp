
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
    <form:form action="${pageContext.request.contextPath}/match/update"
               modelAttribute="matchForm" class="form-horizontal">
        <fieldset>
            <div class="container">
                <div class="col-md-12 col-sm-12 mt-50">
                    <h2 class="text-uppercase ls-3 bb text-center">UPDATE<span class="yellow">&nbsp;MATCH</span></h2>
                </div>
            </div>
            <br>
            <br>
            <br>
            <div class="form-group">
                <form:label path="id" class="col col-sm-2 control-label">Id</form:label>
                <div class="col col-sm-10">
                        ${f:h(matchForm.id)}
                    <form:input path="id" type="hidden" />
                    <form:errors path="id" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="ptime" class="col col-sm-2 control-label">Ptime</form:label>
                <div class="col col-sm-10">
                    <form:input path="ptime" class="form-control" />
                    <form:errors path="ptime" cssClass="text-danger" />
                    (* yyyy-MM-dd)
                </div>
            </div>
            <div class="form-group">
                <form:label path="loc" class="col col-sm-2 control-label">loc</form:label>
                <div class="col col-sm-10">
                    <form:input path="loc" class="form-control" />
                    <form:errors path="loc" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="team1" class="col col-sm-2 control-label">team1</form:label>
                <div class="col col-sm-10">
                    <form:input path="team1" class="form-control" />
                    <form:errors path="team1" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="team2" class="col col-sm-2 control-label">team2</form:label>
                <div class="col col-sm-10">
                    <form:input path="team2" class="form-control" />
                    <form:errors path="team2" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="result" class="col col-sm-2 control-label">result</form:label>
                <div class="col col-sm-10">
                    <form:input path="result" class="form-control" />
                    <form:errors path="result" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <div class="col col-sm-10 col-sm-offset-2">
                    <%--<form:hidden path="version" />--%>
                    <%--<form:errors path="version" cssClass="text-danger" />--%>
                    <input type="submit" class="btn btn-primary" name="confirm"
                           value="Confirm" /> <input type="submit" class="btn btn-default"
                                                     name="redirectToList" value="Back to List" />
                </div>
            </div>
        </fieldset>
    </form:form>
</div>
