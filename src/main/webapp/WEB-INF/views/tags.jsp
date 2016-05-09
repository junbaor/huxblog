<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/include/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${seoDescription}">
    <meta name="keyword" content="${seoKeyword}">
    <link rel="shortcut icon" href="/img/favicon.ico">

    <title>${blogTitle}</title>

    <link rel="canonical" href="http://huangxuan.me/">

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<c:url value="/static/css/bootstrap.min.css" />">


    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/static/css/hux-blog.min.css" />">

    <!-- Pygments Github CSS -->
    <link rel="stylesheet" href="<c:url value="/static/css/syntax.css" />">

    <!-- Custom Fonts -->
    <!-- <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
    <!-- Hux change font-awesome CDN to qiniu -->
    <link href="http://cdn.staticfile.org/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- Hux Delete, sad but pending in China
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/
    css'>
    -->

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- ga & ba script hoook -->
    <script></script>
</head>

<!-- hack iOS CSS :active style -->
<body ontouchstart="">

<!-- Navigation -->
<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<%=path%>">${blogTitle}</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div id="huxblog_navbar">
            <div class="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="<%=path%>/">Home</a>
                    </li>

                    <li>
                        <a href="<%=path%>/about/">About</a>
                    </li>

                    <li>
                        <a href="<%=path%>/tags/">Tags</a>
                    </li>

                </ul>
            </div>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<script>
    // Drop Bootstarp low-performance Navbar
    // Use customize navbar with high-quality material design animation
    // in high-perf jank-free CSS3 implementation
    var $body = document.body;
    var $toggle = document.querySelector('.navbar-toggle');
    var $navbar = document.querySelector('#huxblog_navbar');
    var $collapse = document.querySelector('.navbar-collapse');

    var __HuxNav__ = {
        close: function () {
            $navbar.className = " ";
            // wait until animation end.
            setTimeout(function () {
                // prevent frequently toggle
                if ($navbar.className.indexOf('in') < 0) {
                    $collapse.style.height = "0px"
                }
            }, 400)
        },
        open: function () {
            $collapse.style.height = "auto"
            $navbar.className += " in";
        }
    }

    // Bind Event
    $toggle.addEventListener('click', function (e) {
        if ($navbar.className.indexOf('in') > 0) {
            __HuxNav__.close()
        } else {
            __HuxNav__.open()
        }
    })

    /**
     * Since Fastclick is used to delegate 'touchstart' globally
     * to hack 300ms delay in iOS by performing a fake 'click',
     * Using 'e.stopPropagation' to stop 'touchstart' event from
     * $toggle/$collapse will break global delegation.
     *
     * Instead, we use a 'e.target' filter to prevent handler
     * added to document close HuxNav.
     *
     * Also, we use 'click' instead of 'touchstart' as compromise
     */
    document.addEventListener('click', function (e) {
        if (e.target == $toggle) return;
        if (e.target.className == 'icon-bar') return;
        __HuxNav__.close();
    })
</script>


<!-- Page Header -->
<header class="intro-header" style="background-image: url('<c:url value="/static/img/tag-bg.jpg"/>')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading" id="tag-heading">
                    <h1>Tags</h1>
                    <span class="subheading">keep hungry keep foolish</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <!-- 标签云 -->
            <div id='tag_cloud' class="tags">
                <c:forEach items="${tagList}" var="tag" varStatus="status">
                    <a href="#${tag.tagName}" title="${tag.tagName}" rel="${status.index}">${tag.tagName}</a>
                </c:forEach>
                <%--
                                <a href="#知乎" title="知乎" rel="7">知乎</a>

                                <a href="#MIUI" title="MIUI" rel="1">MIUI</a>

                                <a href="#CSS" title="CSS" rel="1">CSS</a>--%>

            </div>

            <!--<blockquote class="tag-comments">
                标签命名规范：
                    <li>行业观察、职位、公司优先使用中文</li>
                    <li>外国产品、术语优先使用英文</li>
            </blockquote>-->

            <!-- 标签列表 -->
            <c:forEach var="tag" items="${tagList}" varStatus="status">
                <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="${tag.tagName}">
                    <span class="tag-text">${tag.tagName}</span>
                </span>
                    <c:forEach varStatus="s" items="${tag.articleList}" var="article">
                        <%--<li class="listing-item">
                            <time datetime="<fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/>">
                                <fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></time>
                            <a href="<%=path%>/article/${article.id}" title="${article.title}">${article.title}</a>
                        </li>--%>
                        <div class="post-preview">
                            <a href="<%=path%>/article/${article.id}">
                                <h2 class="post-title">
                                        ${article.title}
                                </h2>
                                <h3 class="post-subtitle">
                                        ${article.titleSub}
                                </h3>
                            </a>
                        </div>
                        <hr>
                    </c:forEach>
                </div>
            </c:forEach>
        </div>
    </div>
</div>


<!-- Footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <ul class="list-inline text-center">
                    <c:if test="${zhihu != ''}">
                        <li>
                            <a target="_blank" href="https://www.zhihu.com/people/${zhihu}">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa  fa-stack-1x fa-inverse">知</i>
                            </span>
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${weibo != ''}">
                        <li>
                            <a target="_blank" href="http://weibo.com/${weibo}">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-weibo fa-stack-1x fa-inverse"></i>
                            </span>
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${github != ''}">
                        <li>
                            <a target="_blank" href="https://github.com/${github}">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                            </span>
                            </a>
                        </li>
                    </c:if>
                </ul>
                <p class="copyright text-muted">
                    Copyright &copy; ${blogTitle} 2016
                    <br>
                    Theme by <a href="http://huangxuan.me">Hux</a>
                </p>
            </div>
        </div>
    </div>
</footer>

<!-- jQuery -->
<script src="<c:url value="/static/js/jquery.min.js" />"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<c:url value="/static/js/bootstrap.min.js" />"></script>

<!-- Custom Theme JavaScript -->
<script src="<c:url value="/static/js/hux-blog.min.js" />"></script>


<!-- async load function -->
<script>
    function async(u, c) {
        var d = document, t = 'script',
                o = d.createElement(t),
                s = d.getElementsByTagName(t)[0];
        o.src = u;
        if (c) {
            o.addEventListener('load', function (e) {
                c(null, e);
            }, false);
        }
        s.parentNode.insertBefore(o, s);
    }
</script>

<!--
     Because of the native support for backtick-style fenced code blocks
     right within the Markdown is landed in Github Pages,
     From V1.6, There is no need for Highlight.js,
     so Huxblog drops it officially.

     - https://github.com/blog/2100-github-pages-now-faster-and-simpler-with-jekyll-3-0
     - https://help.github.com/articles/creating-and-highlighting-code-blocks/
     - https://github.com/jneen/rouge/wiki/list-of-supported-languages-and-lexers
-->
<!--
    <script>
        async("http://cdn.bootcss.com/highlight.js/8.6/highlight.min.js", function(){
            hljs.initHighlightingOnLoad();
        })
    </script>
    <link href="http://cdn.bootcss.com/highlight.js/8.6/styles/github.min.css" rel="stylesheet">
-->


<!-- jquery.tagcloud.js -->
<script>
    // only load tagcloud.js in tag.html
    if ($('#tag_cloud').length !== 0) {
        async('/js/jquery.tagcloud.js', function () {
            $.fn.tagcloud.defaults = {
                //size: {start: 1, end: 1, unit: 'em'},
                color: {start: '#bbbbee', end: '#0085a1'},
            };
            $('#tag_cloud a').tagcloud();
        })
    }
</script>

<!--fastClick.js -->
<script>
    async("http://cdn.bootcss.com/fastclick/1.0.6/fastclick.min.js", function () {
        var $nav = document.querySelector("nav");
        if ($nav) FastClick.attach($nav);
    })
</script>


<!-- Google Analytics -->

<script>
    // dynamic User by Hux
    var _gaId = 'UA-49627206-1';
    var _gaDomain = 'huangxuan.me';

    // Originial
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
        a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', _gaId, _gaDomain);
    ga('send', 'pageview');
</script>


<!-- Baidu Tongji -->

<script>
    // dynamic User by Hux
    var _baId = '4cc1f2d8f3067386cc5cdb626a202900';

    // Originial
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?" + _baId;
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>


<!-- Side Catalog -->


<!-- Image to hack wechat -->
<img src="/img/icon_wechat.png" width="0" height="0"/>
<!-- Migrate from head to bottom, no longer block render and still work -->

</body>
</html>
