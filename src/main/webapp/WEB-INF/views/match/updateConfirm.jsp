
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
                    <fmt:formatDate pattern="yyyy-MM-dd" value="${matchForm.ptime}" />
                    <form:hidden path="ptime" />
                    <form:errors path="ptime" cssClass="text-danger" />
                    (* yyyy-MM-dd)
                </div>
            </div>
            <div class="form-group">
                <form:label path="loc" class="col col-sm-2 control-label">Loc</form:label>
                <div class="col col-sm-10">
                        ${f:h(matchForm.loc)}
                    <form:hidden path="loc" />
                    <form:errors path="loc" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="team1" class="col col-sm-2 control-label">team1</form:label>
                <div class="col col-sm-10">
                        ${f:h(matchForm.team1)}
                    <form:hidden path="team1" />
                    <form:errors path="team1" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="team2" class="col col-sm-2 control-label">team2</form:label>
                <div class="col col-sm-10">
                        ${f:h(matchForm.team2)}
                    <form:hidden path="team2" />
                    <form:errors path="team2" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="result" class="col col-sm-2 control-label">team2</form:label>
                <div class="col col-sm-10">
                        ${f:h(matchForm.result)}
                    <form:hidden path="result" />
                    <form:errors path="result" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <div class="col col-sm-10 col-sm-offset-2">
                    <form:hidden path="id" />
                    <input type="submit" class="btn btn-primary" name="update"
                           value="Update" /> <input type="submit" class="btn btn-default"
                                                    name="redo" value="Back to Form" />
                </div>
            </div>
        </fieldset>
    </form:form>
</div>
