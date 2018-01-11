
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
    <form:form action="${pageContext.request.contextPath}/match/create"
               modelAttribute="matchForm" class="form-horizontal">
        <fieldset>
            <section class="mt-50 pb-150">
                <div class="container">
                    <div class="col-md-12 col-sm-12 mt-50">
                        <h2 class="text-uppercase ls-3 bb text-center">NEW<span class="yellow">&nbsp;MATCH</span></h2>
                    </div>
                </div>
            </section>
            <div class="form-group">
                <form:label path="ptime" class="col col-sm-2 control-label">Ptime</form:label>
                <div class="col col-sm-10">
                    <form:input path="ptime" class="form-control" />
                    <form:errors path="ptime" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="loc" class="col col-sm-2 control-label">Loc</form:label>
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
                    <input type="submit" class="btn btn-primary" name="confirm" value="CONFIRM" />
                    <input type="submit" class="btn btn-default" name="redirectToList" value="BACK" />
                </div>
            </div>
        </fieldset>
    </form:form>
</div>
