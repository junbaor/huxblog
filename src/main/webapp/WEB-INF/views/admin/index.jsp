<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
    <title>Admin Manager</title>
    <link href="<c:url value="/static/material-1.4.0/css/base.min.css" />" rel="stylesheet">
    <link href="<c:url value="/static/material-1.4.0/css/project.min.css" />" rel="stylesheet">
    <link href="<c:url value="/static/wangEditor-2.1.7/dist/css/wangEditor.min.css" />" rel="stylesheet">
    <style>
    </style>
</head>

<body class="page-brand">
<header class="header header-transparent header-waterfall ui-header">
    <ul class="nav nav-list pull-left">
        <li>
            <a data-toggle="menu" href="#ui_menu">
                <span class="icon icon-lg">menu</span>
            </a>
        </li>
    </ul>
    <a class="header-logo header-affix-hide margin-left-no margin-right-no" data-offset-top="213" data-spy="affix"
       href="<%=path%>/admin/">Admin</a>
    <span class="header-logo header-affix margin-left-no margin-right-no" data-offset-top="213"
          data-spy="affix">Manager</span>
    <ul class="nav nav-list pull-right">
        <li class="dropdown margin-right">
            <a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
                <span class="access-hide">John Smith</span>
                <span class="avatar avatar-sm"><img alt="alt text for John Smith avatar"
                                                    src="<c:url value="/static/material-1.4.0/images/users/avatar-001.jpg"/> "></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <a class="padding-right-lg waves-attach" href="<%=path%>/admin/info"><span
                            class="icon icon-lg margin-right">account_box</span>修改个人简介</a>
                    <a class="padding-right-lg waves-attach waves-effect" href="<%=path%>/admin/logout"><span
                            class="icon icon-lg margin-right">exit_to_app</span>安全退出</a>
                </li>
            </ul>
        </li>
    </ul>
</header>
<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2">
                    <h1 class="content-heading">后台管理</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2">
                <section class="content-inner margin-top-no">
                    <%--<div class="card">
                        <div class="card-main">
                            <div class="card-inner">
                                要不要支持 Markdown 语法呢 ?
                            </div>
                        </div>
                    </div>--%>
                    <div class="card">
                        <div class="card-main">
                            <div class="card-inner">
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="title">标题</label>
                                    <input class="form-control" id="title" type="text"
                                           style="width: 40%;display: inline;">
                                    <div id="tags" style="display: inline;"></div>
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="titleSub">小标题</label>
                                    <input class="form-control" id="titleSub" type="text">
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="theme">头部主题色(RGB或16进制)</label>
                                    <input id="theme" class="form-control" type="text">
                                </div>
                                <div class="form-group form-group-label">
                                    <label class="floating-label" for="tags">标签</label>
                                    <input id="tagName" class="form-control" type="text"
                                           style="display: inline;width:80%">
                                    <a class="btn pull-right waves-attach" onclick="addTag()">添加标签</a>
                                </div>
                            </div>
                            <div class="card-action">
                                <div class="card-action-btn pull-left">
                                    <a class="btn btn-flat btn-brand waves-attach waves-effect"
                                       onclick="submit()">发表</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <div id="content" style="height:500px;"></div>
    </div>
</main>
<footer class="ui-footer">
    <div class="container">
        <p> &copy; ${blogTitle} 2016</p>
    </div>
</footer>
<%--<div class="fbtn-container">
    <div class="fbtn-inner">
        <a class="fbtn fbtn-lg fbtn-brand-accent waves-attach waves-circle waves-light" data-toggle="dropdown"><span class="fbtn-text fbtn-text-left">Links</span><span class="fbtn-ori icon">apps</span><span class="fbtn-sub icon">close</span></a>
        <div class="fbtn-dropup">
            <a class="fbtn waves-attach waves-circle" href="https://github.com/Daemonite/material" target="_blank"><span class="fbtn-text fbtn-text-left">Fork me on GitHub</span><span class="icon">code</span></a>
            <a class="fbtn fbtn-brand waves-attach waves-circle waves-light" href="https://twitter.com/daemonites" target="_blank"><span class="fbtn-text fbtn-text-left">Follow Daemon on Twitter</span><span class="icon">share</span></a>
            <a class="fbtn fbtn-green waves-attach waves-circle" href="http://www.daemon.com.au/" target="_blank"><span class="fbtn-text fbtn-text-left">Visit Daemon Website</span><span class="icon">link</span></a>
        </div>
    </div>
</div>--%>
<script src="//cdn.bootcss.com/jquery/2.2.1/jquery.min.js"></script>
<script src="<c:url value="/static/material-1.4.0/js/base.min.js"/>"></script>
<script src="<c:url value="/static/material-1.4.0/js/project.min.js"/>"></script>
<script src="<c:url value="/static/wangEditor-2.1.7/dist/js/wangEditor.min.js"/>"></script>
<script type="text/javascript">
    var editor = new wangEditor('content');
    editor.create();
    function addTag() {
        if ($("#tagName").val() == '') {
            return false;
        }
        $("#tags").append("<span class=\"label label-brand-accent margin-right\" onclick='$(this).remove()' style='cursor:pointer'>" + $("#tagName").val() + "</span>");
        $("#tagName").val('');
    }
    function submit() {
        var title = $("#title").val();
        var titleSub = $("#titleSub").val();
        var theme = $("#theme").val();
        var content = editor.$txt.html();
        if (content == "<p><br></p>" || title == "") {
            return false;
        }
        var tags = '';
        $("#tags .label").each(function (i, item) {
            tags += $(this).text() + ",";
        });
        $.ajax({
            url: '<%=path%>/admin/save',
            type: 'post',
            data: {
                'title': title,
                'titleSub': titleSub,
                'content': content,
                'tags': tags,
                'theme':theme
            },
            success: function (data) {
                if (data > 0) {
                    alert("已保存");
                    window.location = '<%=path%>/'
                }
            }
        });
    }
    $(function () {
        $("#tagName").keypress(function (event) {
            if (event.keyCode == 13) {
                addTag();
                return true;
            }
        });
    });
</script>
</body>
</html>
