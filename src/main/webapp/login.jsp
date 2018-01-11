<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">

    <title>登录界面</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/css/materialize.min.css">
    <style type="text/css">
        html,
        body {
            height: 100%;
        }
        html {
            display: table;
            margin: auto;
        }
        body {
            display: table-cell;
            vertical-align: middle;
            color:#404d5b;
        }

        .margin {
            margin: 0 !important;
        }

        .card-panel{ min-width:350px;}
    </style>
    <!--[if IE]>
    <script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body style="background-image:url(static/img/cbabackground.jpg); background-position:center; background-repeat:repeat-y">
<div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
        <form class="login-form" name='f' id="form_login"
              action='${pageContext.request.contextPath}/j_spring_security_check'
              method='POST'>

            <div class="row">
                <div class="input-field col s12 center">
                    <img src="http://w3lessons.info/logo.png" alt="" class="responsive-img valign profile-image-login">
                    <p class="center login-form-text">请登录</p>
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-social-person-outline prefix"></i>
                    <input id="j_username" name="j_username" placeholder='用户名' maxlength="16" type='text' autocomplete="off" value="1"/>
                    <label for="j_username" data-error="wrong" data-success="right" class="center-align">Username</label>
                </div>
            </div>
            <div class="row margin">
                <div class="input-field col s12">
                    <i class="mdi-action-lock-outline prefix"></i>
                    <input id="j_password" name="j_password" placeholder='密码' maxlength="16" type='password' autocomplete="off" value="demo">
                    <label for="j_password">Password</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12 m12 l12  login-text">
                    <input type="checkbox" id="remember-me" />
                    <label for="remember-me">记住我</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s12">
                    <a href="#" onclick="document.getElementById('form_login').submit()" class="btn waves-effect waves-light col s12">登　录</a>
                </div>
            </div>

            <div class="row">
                <div class="input-field col s6 m6 l6">
                    <p class="margin medium-small"><a href="register.html">现在注册!</a></p>
                </div>
                <div class="input-field col s6 m6 l6">
                    <p class="margin right-align medium-small"><a href="forgot-password.html">忘记密码?</a></p>
                </div>
            </div>
        </form>
    </div>
</div>
</div>

<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.11.1/jquery.min.js"></script>

<!--materialize js-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>
</body>
</html>