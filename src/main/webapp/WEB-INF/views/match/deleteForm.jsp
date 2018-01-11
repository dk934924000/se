<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="col-sm-12">
    <form:form action="${pageContext.request.contextPath}/match/delete"
               modelAttribute="matchForm" class="form-horizontal">
        <fieldset>
            <legend>Delete Match</legend>
            <div class="form-group">
                <form:label path="id" class="col col-sm-2 control-label">ID</form:label>
                <div class="col col-sm-10">${f:h(match.id)}</div>
            </div>
            <div class="form-group">
                <form:label path="ptime" class="col col-sm-2 control-label">Ptime</form:label>
                <div class="col col-sm-10">
                    <fmt:formatDate pattern="yyyy-MM-dd" value="${match.ptime}" />
                </div>
            </div>
            <div class="form-group">
                <form:label path="loc" class="col col-sm-2 control-label">Loc</form:label>
                <div class="col col-sm-10">${f:h(match.loc)}</div>
            </div>
            <div class="form-group">
                <form:label path="loc" class="col col-sm-2 control-label">Team1</form:label>
                <div class="col col-sm-10">${f:h(match.team1)}</div>
            </div>
            <div class="form-group">
                <form:label path="loc" class="col col-sm-2 control-label">Team2</form:label>
                <div class="col col-sm-10">${f:h(match.team2)}</div>
            </div>
            <div class="form-group">
                <form:label path="loc" class="col col-sm-2 control-label">Result</form:label>
                <div class="col col-sm-10">${f:h(match.result)}</div>
            </div>
            <div class="form-group">
                <div class="col col-sm-10 col-sm-offset-2">

                    <form:hidden path="id" value="${f:h(match.id)}" />
                    <input type="submit" class="btn btn-danger" name="delete"
                           value="删除" /> <input type="submit" class="btn btn-default"
                                                name="redirectToList" value="返回列表" />
                </div>
            </div>
        </fieldset>
    </form:form>
</div>
