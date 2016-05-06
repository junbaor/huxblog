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
<header class="intro-header" style="background-image: url('<c:url value="/static/img/home-bg.jpg"/>')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 ">
                <div class="site-heading">
                    <h1>About</h1>
                    <!--<hr class="small">-->
                    <span class="subheading">Hey, this is ${meUserName}.</span>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Main Content -->
<div class="container">
    <div class="row">


        <!-- USE SIDEBAR -->
        <!-- PostList Container -->
        <div class="
                col-lg-8 col-lg-offset-1
                col-md-8 col-md-offset-1
                col-sm-12
                col-xs-12
                postlist-container
            ">

            <div class="post-container">
                <blockquote><p>${meDescrption}</p></blockquote>
                ${info.content}
            </div>

            <!-- 多说评论框 start -->
            <div class="comment">
                <div class="ds-thread"
                     data-thread-id="<%=path%>"
                     data-title="About"
                     data-url="<%=path%>"></div>
            </div>
            <!-- 多说评论框 end -->

            <!-- 多说公共JS代码 start (一个网页只需插入一次) -->
            <script type="text/javascript">
                var _user = '${duoshuoUserName}';

                // duoshuo comment query.
                var duoshuoQuery = {short_name: _user};
                (function () {
                    var ds = document.createElement('script');
                    ds.type = 'text/javascript';
                    ds.async = true;
                    ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
                    ds.charset = 'UTF-8';
                    (document.getElementsByTagName('head')[0]
                    || document.getElementsByTagName('body')[0]).appendChild(ds);
                })();
            </script>
            <!-- 多说公共JS代码 end -->


        </div>
        <!-- Sidebar Container -->
        <div class="
                col-lg-3 col-lg-offset-0
                col-md-3 col-md-offset-0
                col-sm-12
                col-xs-12
                sidebar-container
            ">
            <!-- Featured Tags -->

            <section>
                <hr class="hidden-sm hidden-xs">
                <h5><a href="/tags/">FEATURED TAGS</a></h5>
                <div class="tags">
                    <c:forEach items="${cache_tag}" var="item" varStatus="status" end="10">
                        <a href="javascript:void(0);" title="${item.tagName}" rel="${status.index+1}">
                                ${item.tagName}
                        </a>
                    </c:forEach>
                </div>
            </section>


            <!-- Short About -->
            <section class="visible-md visible-lg">
                <hr>
                <h5><a href="/about/">ABOUT ME</a></h5>
                <div class="short-about">

                    <img src="${meHeadImg}"/>

                    <p>${meDescrption}</p>

                    <!-- SNS Link -->
                    <ul class="list-inline">
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
                </div>
            </section>
            <!-- Friends Blog -->

            <hr>
            <h5>FRIENDS</h5>
            <ul class="list-inline">

                <li><a href="http://qianduan.guru/">前端外刊评论</a></li>

                <li><a href="http://lingyu.wang/">天镶的博客</a></li>

                <li><a href="http://hmqk1995.github.io">Luke的自留地</a></li>

                <li><a href="http://ebnbin.com/">Ebn's Blog</a></li>

                <li><a href="http://blog.smdcn.net">SmdCn's Blog</a></li>

                <li><a href="http://xieminis.me/">解旻的博客</a></li>

                <li><a href="http://dhong.co">DHong Say</a></li>

                <li><a href="http://ingf.github.io/">尹峰以为</a></li>

                <li><a href="http://wepiaofei.github.io/blog/">前端神盾局</a></li>

            </ul>

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


<!-- Baidu Tongji -->

<%--<script>
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
</script>--%>


<!-- Side Catalog -->


</body>
</html>
