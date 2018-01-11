<%@ page import="org.springframework.security.core.userdetails.UserDetails" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity4">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<head>
    <meta charset="utf-8" />
    <title>Smarty - Multipurpose + Admin</title>
    <meta name="description" content="" />
    <meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

    <!-- mobile settings -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

    <!-- WEB FONTS : use %7C instead of | (pipe) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700" rel="stylesheet" type="text/css" />

    <!-- CORE CSS -->
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- THEME CSS -->
    <link href="assets/css/essentials.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/layout.css" rel="stylesheet" type="text/css" />

    <!-- PAGE LEVEL SCRIPTS -->
    <link href="assets/css/header-1.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/color_scheme/green.css" rel="stylesheet" type="text/css" id="color_scheme" />
</head>

<h2>收藏夹</h2>
${request}
<div class="col-sm-12">
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-error">${f:h(errorMessage)}</div>
    </c:if>
    <script>
        function firm(id , n)
        {
            if(confirm("你确信要删除吗？"))
            {
                location.href="DeleteCollect?id="+id+"&name="+n;
            }
            else
            {//否则说明下了，赫赫
                alert("取消了");
            }
        }
    </script>

    <table class="table table-striped table-bordered table-condensed">
        <%--<thead>--%>
        <%--<tr>--%>
            <%--<th>TYPE</th>--%>
            <%--<th>OID</th>--%>
            <%--<th>ONAME</th>--%>
            <%--<th>TIME</th>--%>
            <%--<th>CONTENT</th>--%>
            <%--<th>MANIPULATION</th>--%>
        <%--</tr>--%>
        <%--</thead>--%>

        <%--<tbody>--%>
        <c:forEach var="emp" items="${mp}">
            <div class="blog-post-item col-md-3 col-sm-6">

                <!-- IMAGE -->
                <figure class="mb-20">
                    <img class="img-fluid" src="demo_files/images/720x400/1-min.jpg" alt="">
                </figure>

                <h2><a href="redirectToBrowse?id=${f:h(emp.key.oid)}">${f:h(emp.key.oname)}</a></h2>

                <ul class="blog-post-info list-inline">
                    <li>
                        <a href="#">
                            <i class="fa fa-clock-o"></i>
                            <span class="font-lato">${f:h(emp.key.time)}</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fa fa-comment-o"></i>
                            <span class="font-lato">${f:h(emp.value.author)}</span>
                        </a>
                    </li>
                </ul>

                <p>${f:h(emp.value.text)}</p>

                <a href="redirectToBrowse?id=${f:h(emp.key.oid)}" class="btn btn-reveal btn-default">
                    <i class="fa fa-plus"></i>
                    <span>Read More</span>
                </a>

            </div>
            <%--<tr>--%>
                <%--<td>${f:h(emp.key.type)}</td>--%>
                <%--<td>${f:h(emp.key.oid)}</td>--%>
                <%--<td>${f:h(emp.key.oname)}</td>--%>
                <%--<td>${f:h(emp.key.time)}</td>--%>
                <%--<td>${f:h(emp.value.heading)}</td>--%>
                <%--<td><form:form--%>
                        <%--action="${pageContext.request.contextPath}/news"--%>
                        <%--class="form-inline">--%>
                    <%--<input type="hidden" name="id" value="${f:h(emp.key.oid)}" />--%>
                    <%--<input type="submit" class="btn btn-default"--%>
                           <%--name="redirectToBrowse" value="访问" />--%>
                    <%--<input type="button" class="btn btn-danger"--%>
                           <%--onclick="firm('${emp.key.oid}','${emp.key.name}')" value="删除" />--%>
                <%--</form:form></td>--%>
            <%--</tr>--%>
        </c:forEach>

        <%--</tbody>--%>
    </table>
    <util:pagination page="${page}" query="name=${f:h(param.name)}" />
</div>
