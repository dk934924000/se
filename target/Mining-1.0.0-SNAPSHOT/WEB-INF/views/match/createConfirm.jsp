
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
                        <h2 class="text-uppercase ls-3 bb text-center">CONFIRM<span class="yellow">&nbsp;MATCH</span></h2>
                    </div>
                </div>
            </section>
            <%--<div class="form-group">--%>
                <%--<form:label path="name" class="col col-sm-2 control-label">User Name</form:label>--%>
                <%--<div class="col col-sm-10">--%>
                        <%--${f:h(matchForm.id)}--%>
                    <%--<form:hidden path="id" />--%>
                    <%--<form:errors path="id" cssClass="text-danger" />--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="form-group">--%>
                <%--<form:label path="ptime" class="col col-sm-2 control-label">Match Time</form:label>--%>
                <%--<div class="col col-sm-10">--%>
                        <%--${f:h(matchForm.ptime)}--%>
                    <%--<form:hidden path="ptime" />--%>
                    <%--<form:errors path="ptime" cssClass="text-danger" />--%>
                <%--</div>--%>
            <%--</div>--%>
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
                <form:label path="loc" class="col col-sm-2 control-label">Match Location</form:label>
                <div class="col col-sm-10">
                    <%--<fmt:formatDate  value="${matchForm.loc}" />--%>
                            ${matchForm.loc}
                    <form:hidden path="loc" />
                    <form:errors path="loc" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="team1" class="col col-sm-2 control-label">Team 1</form:label>
                <div class="col col-sm-10">
                    <%--<fmt:formatDate pattern="yyyy-MM-dd" value="${matchForm.team1}" />--%>
                            ${matchForm.team1}
                    <form:hidden path="team1" />
                    <form:errors path="team1" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="team2" class="col col-sm-2 control-label">Team 2</form:label>
                <div class="col col-sm-10">
                    <%--<fmt:formatDate pattern="yyyy-MM-dd" value="${matchForm.loc}" />--%>
                            ${matchForm.team2}
                    <form:hidden path="team2" />
                    <form:errors path="team2" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="result" class="col col-sm-2 control-label">Result</form:label>
                <div class="col col-sm-10">
                        <%--<fmt:formatDate pattern="yyyy-MM-dd" value="${matchForm.loc}" />--%>
                        ${matchForm.result}
                    <form:hidden path="result" />
                    <form:errors path="result" cssClass="text-danger" />
                </div>
            </div>
            <div class="form-group">
                <div class="col col-sm-10 col-sm-offset-2">
                    <input type="submit" class="btn btn-primary" name="create"
                           value="Create" />
                    <input type="submit" class="btn btn-default"
                                                    name="redo" value="Back to Form" />
                </div>
            </div>
        </fieldset>
    </form:form>
</div>
