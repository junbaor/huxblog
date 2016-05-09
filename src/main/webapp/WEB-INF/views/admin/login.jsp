<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
    <title>后台管理</title>
    <link href="<c:url value="/static/material-1.4.0/css/base.min.css" />" rel="stylesheet">
    <link href="<c:url value="/static/material-1.4.0/css/project.min.css" />" rel="stylesheet">
    <link href="<c:url value="/static/wangEditor-2.1.7/dist/css/wangEditor.min.css" />" rel="stylesheet">
    <style>
    </style>
</head>
<body class="page-brand">
<header class="header header-brand ui-header">
    <span class="header-logo">Admin Manager</span>
</header>
<main class="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-lg-push-4 col-sm-6 col-sm-push-3">
                <section class="content-inner">
                    <div class="card">
                        <div class="card-main">
                            <div class="card-header">
                                <div class="card-inner">
                                    <h1 class="card-heading">Login</h1>
                                </div>
                            </div>
                            <div class="card-inner">
                                <p class="text-center">
										<span class="avatar avatar-inline avatar-lg">
											<img alt="Login"
                                                 src="<c:url value="/static/material-1.4.0/images/users/avatar-001.jpg"/>">
										</span>
                                </p>
                                <div class="form-group form-group-label">
                                    <div class="row">
                                        <div class="col-md-10 col-md-push-1">
                                            <label class="floating-label" for="username">用户名</label>
                                            <input class="form-control" id="username" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-group-label">
                                    <div class="row">
                                        <div class="col-md-10 col-md-push-1">
                                            <label class="floating-label" for="password">密码</label>
                                            <input class="form-control" id="password" type="password">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="row">
                                        <div class="col-md-10 col-md-push-1">
                                            <button class="btn btn-block btn-brand waves-attach waves-light"
                                                    id="submit" onclick="submit()">登陆
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</main>
<%--<footer class="ui-footer">
    <div class="container">
        <p>版权声明</p>
    </div>
</footer>--%>

<script src="//cdn.bootcss.com/jquery/2.2.1/jquery.min.js"></script>
<script src="<c:url value="/static/material-1.4.0/js/base.min.js"/>"></script>
<script src="<c:url value="/static/material-1.4.0/js/project.min.js"/>"></script>
<script>
    $(function () {
        $("body").keypress(function (event) {
            if (event.keyCode == 13) {
                submit();return true;
            }
        });
    });
    function submit() {
        var username = $("#username").val();
        var password = $("#password").val();
        $.ajax({
            url: 'login',
            type: 'post',
            data: {
                'username': username,
                'password': password
            },
            success: function (data) {
                if (data == 1) {
                    window.location = "../admin";
                } else {
                    alert("登陆失败");
                }
            },
            error: function () {
                alert("失败");
            }
        });
    }
</script>
</body>
</html>
