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

    <title>黄玄的博客 | Hux Blog</title>

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
    var $body   = document.body;
    var $toggle = document.querySelector('.navbar-toggle');
    var $navbar = document.querySelector('#huxblog_navbar');
    var $collapse = document.querySelector('.navbar-collapse');

    var __HuxNav__ = {
        close: function(){
            $navbar.className = " ";
            // wait until animation end.
            setTimeout(function(){
                // prevent frequently toggle
                if($navbar.className.indexOf('in') < 0) {
                    $collapse.style.height = "0px"
                }
            },400)
        },
        open: function(){
            $collapse.style.height = "auto"
            $navbar.className += " in";
        }
    }

    // Bind Event
    $toggle.addEventListener('click', function(e){
        if ($navbar.className.indexOf('in') > 0) {
            __HuxNav__.close()
        }else{
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
    document.addEventListener('click', function(e){
        if(e.target == $toggle) return;
        if(e.target.className == 'icon-bar') return;
        __HuxNav__.close();
    })
</script>


<!-- Page Header -->
<header class="intro-header" style="background-image: url('<c:url value="/static/img/tag-bg.jpg" />')">
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

                <a href="#知乎" title="知乎" rel="7">知乎</a>

                <a href="#MIUI" title="MIUI" rel="1">MIUI</a>

                <a href="#Android" title="Android" rel="2">Android</a>

                <a href="#交互设计" title="交互设计" rel="4">交互设计</a>

                <a href="#阿里巴巴" title="阿里巴巴" rel="3">阿里巴巴</a>

                <a href="#前端开发" title="前端开发" rel="8">前端开发</a>

                <a href="#职业病" title="职业病" rel="3">职业病</a>

                <a href="#生活" title="生活" rel="2">生活</a>

                <a href="#Apple" title="Apple" rel="1">Apple</a>

                <a href="#Macbook" title="Macbook" rel="1">Macbook</a>

                <a href="#Apple Watch" title="Apple Watch" rel="1">Apple Watch</a>

                <a href="#hUX 随想录" title="hUX 随想录" rel="2">hUX 随想录</a>

                <a href="#English-only" title="English-only" rel="1">English-only</a>

                <a href="#UX Design" title="UX Design" rel="3">UX Design</a>

                <a href="#OS" title="OS" rel="2">OS</a>

                <a href="#Unix" title="Unix" rel="1">Unix</a>

                <a href="#Linux" title="Linux" rel="1">Linux</a>

                <a href="#Windows" title="Windows" rel="1">Windows</a>

                <a href="#Metro" title="Metro" rel="1">Metro</a>

                <a href="#JavaScript" title="JavaScript" rel="5">JavaScript</a>

                <a href="#产品设计" title="产品设计" rel="1">产品设计</a>

                <a href="#在线旅行" title="在线旅行" rel="1">在线旅行</a>

                <a href="#电子商务" title="电子商务" rel="1">电子商务</a>

                <a href="#翻译" title="翻译" rel="1">翻译</a>

                <a href="#iOS" title="iOS" rel="1">iOS</a>

                <a href="#译文" title="译文" rel="2">译文</a>

                <a href="#CSS" title="CSS" rel="1">CSS</a>

            </div>

            <!--<blockquote class="tag-comments">
                标签命名规范：
                    <li>行业观察、职位、公司优先使用中文</li>
                    <li>外国产品、术语优先使用英文</li>
            </blockquote>-->

            <!-- 标签列表 -->

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="知乎">
                    <span class="tag-text">知乎</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-10-28">2015-10-28</time>
                <a href="/2015/10/28/how-designer-learn-fe/" title="「知乎」设计师如何学习前端？">「知乎」设计师如何学习前端？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/10/28/how-designer-learn-fe/">
                        <h2 class="post-title">
                            「知乎」设计师如何学习前端？
                        </h2>

                        <h3 class="post-subtitle">
                            How designers learn front-end development?
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-10-28</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-03-10">2015-03-10</time>
                <a href="/2015/03/10/apple-event-2015/" title="「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？">「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/10/apple-event-2015/">
                        <h2 class="post-title">
                            「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊科技与新式奢侈品
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-10</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-12-13">2014-12-13</time>
                <a href="/2014/12/13/wechat-block-kuaidi/" title="「知乎」如何看待微信屏蔽快的打车事件？">「知乎」如何看待微信屏蔽快的打车事件？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/12/13/wechat-block-kuaidi/">
                        <h2 class="post-title">
                            「知乎」如何看待微信屏蔽快的打车事件？
                        </h2>

                        <h3 class="post-subtitle">
                            恰有小感。
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2014-12-13</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-11-20">2014-11-20</time>
                <a href="/2014/11/20/responsive-web-design/" title="「知乎」你们觉得响应式好呢，还是手机和PC端分开来写？">「知乎」你们觉得响应式好呢，还是手机和PC端分开来写？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/11/20/responsive-web-design/">
                        <h2 class="post-title">
                            「知乎」你们觉得响应式好呢，还是手机和PC端分开来写？
                        </h2>

                    </a>
                    <!-- <p class="post-meta">2014-11-20</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-10-01">2014-10-01</time>
                <a href="/2014/10/01/why-alibaba-ux-sucks/" title="「知乎」为什么阿里系软件体验都不好？">「知乎」为什么阿里系软件体验都不好？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/10/01/why-alibaba-ux-sucks/">
                        <h2 class="post-title">
                            「知乎」为什么阿里系软件体验都不好？
                        </h2>

                        <h3 class="post-subtitle">
                            或许这就是所谓的企业 DNA
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2014-10-01</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-09-04">2014-09-04</time>
                <a href="/2014/09/04/is-pure-android-better/" title="「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？">「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/09/04/is-pure-android-better/">
                        <h2 class="post-title">
                            「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？
                        </h2>

                        <h3 class="post-subtitle">

                        </h3>

                    </a>
                    <!-- <p class="post-meta">2014-09-04</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-08-16">2014-08-16</time>
                <a href="/2014/08/16/miui6/" title="「知乎」如何评价 MIUI 6？">「知乎」如何评价 MIUI 6？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/08/16/miui6/">
                        <h2 class="post-title">
                            「知乎」如何评价 MIUI 6？
                        </h2>

                    </a>
                    <!-- <p class="post-meta">2014-08-16</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="MIUI">
                    <span class="tag-text">MIUI</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2014-08-16">2014-08-16</time>
                <a href="/2014/08/16/miui6/" title="「知乎」如何评价 MIUI 6？">「知乎」如何评价 MIUI 6？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/08/16/miui6/">
                        <h2 class="post-title">
                            「知乎」如何评价 MIUI 6？
                        </h2>

                    </a>
                    <!-- <p class="post-meta">2014-08-16</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="Android">
                    <span class="tag-text">Android</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2014-09-04">2014-09-04</time>
                <a href="/2014/09/04/is-pure-android-better/" title="「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？">「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/09/04/is-pure-android-better/">
                        <h2 class="post-title">
                            「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？
                        </h2>

                        <h3 class="post-subtitle">

                        </h3>

                    </a>
                    <!-- <p class="post-meta">2014-09-04</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-08-16">2014-08-16</time>
                <a href="/2014/08/16/miui6/" title="「知乎」如何评价 MIUI 6？">「知乎」如何评价 MIUI 6？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/08/16/miui6/">
                        <h2 class="post-title">
                            「知乎」如何评价 MIUI 6？
                        </h2>

                    </a>
                    <!-- <p class="post-meta">2014-08-16</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="交互设计">
                    <span class="tag-text">交互设计</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-03-31">2015-03-31</time>
                <a href="/2015/03/31/e2e_user_scenarios/" title="Definition of End to End User Scenarios">Definition of End to End User Scenarios</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/31/e2e_user_scenarios/">
                        <h2 class="post-title">
                            Definition of End to End User Scenarios
                        </h2>

                        <h3 class="post-subtitle">
                            Paper wrote on my birthday
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-31</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-03-25">2015-03-25</time>
                <a href="/2015/03/25/digital-native/" title="hUX 随想录（一）：Digital native 数字原住民">hUX 随想录（一）：Digital native 数字原住民</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/25/digital-native/">
                        <h2 class="post-title">
                            hUX 随想录（一）：Digital native 数字原住民
                        </h2>

                        <h3 class="post-subtitle">
                            两岁的侄女天天叫着手机手机
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-25</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-10-01">2014-10-01</time>
                <a href="/2014/10/01/why-alibaba-ux-sucks/" title="「知乎」为什么阿里系软件体验都不好？">「知乎」为什么阿里系软件体验都不好？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/10/01/why-alibaba-ux-sucks/">
                        <h2 class="post-title">
                            「知乎」为什么阿里系软件体验都不好？
                        </h2>

                        <h3 class="post-subtitle">
                            或许这就是所谓的企业 DNA
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2014-10-01</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-09-04">2014-09-04</time>
                <a href="/2014/09/04/is-pure-android-better/" title="「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？">「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/09/04/is-pure-android-better/">
                        <h2 class="post-title">
                            「知乎」对中国用户而言，Pure Android 是否比 MIUI 或 Flyme 体验更好？
                        </h2>

                        <h3 class="post-subtitle">

                        </h3>

                    </a>
                    <!-- <p class="post-meta">2014-09-04</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="阿里巴巴">
                    <span class="tag-text">阿里巴巴</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-06-15">2015-06-15</time>
                <a href="/2015/06/15/alitrip-strategy/" title="聊聊「阿里旅行 · 去啊」—— 行业与战略 ">聊聊「阿里旅行 · 去啊」—— 行业与战略 </a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/06/15/alitrip-strategy/">
                        <h2 class="post-title">
                            聊聊「阿里旅行 · 去啊」—— 行业与战略
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊在线旅行行业与老东家的产品思路
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-06-15</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-05-11">2015-05-11</time>
                <a href="/2015/05/11/see-u-ali/" title="See you, Alibaba ">See you, Alibaba </a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/05/11/see-u-ali/">
                        <h2 class="post-title">
                            See you, Alibaba
                        </h2>

                        <h3 class="post-subtitle">
                            再见，阿里。
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-05-11</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-10-01">2014-10-01</time>
                <a href="/2014/10/01/why-alibaba-ux-sucks/" title="「知乎」为什么阿里系软件体验都不好？">「知乎」为什么阿里系软件体验都不好？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/10/01/why-alibaba-ux-sucks/">
                        <h2 class="post-title">
                            「知乎」为什么阿里系软件体验都不好？
                        </h2>

                        <h3 class="post-subtitle">
                            或许这就是所谓的企业 DNA
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2014-10-01</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="前端开发">
                    <span class="tag-text">前端开发</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2016-02-01">2016-02-01</time>
                <a href="/2016/02/01/React-vs-Angular2/" title="React vs Angular 2：冰与火之歌「译」">React vs Angular 2：冰与火之歌「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2016/02/01/React-vs-Angular2/">
                        <h2 class="post-title">
                            React vs Angular 2：冰与火之歌「译」
                        </h2>

                        <h3 class="post-subtitle">
                            React versus Angular 2: There Will Be Blood
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2016-02-01</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-12-28">2015-12-28</time>
                <a href="/2015/12/28/css-sucks-2015/" title="都 2015 年了，CSS 怎么还是这么糟糕">都 2015 年了，CSS 怎么还是这么糟糕</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/12/28/css-sucks-2015/">
                        <h2 class="post-title">
                            都 2015 年了，CSS 怎么还是这么糟糕
                        </h2>

                        <h3 class="post-subtitle">
                            Keynote: CSS Still Sucks 2015
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-12-28</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-12-15">2015-12-15</time>
                <a href="/2015/12/15/ios9-safari-web/" title="iOS 9，为前端世界都带来了些什么？「译」">iOS 9，为前端世界都带来了些什么？「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/12/15/ios9-safari-web/">
                        <h2 class="post-title">
                            iOS 9，为前端世界都带来了些什么？「译」
                        </h2>

                        <h3 class="post-subtitle">
                            iOS 9, Safari and the Web: 3D Touch, new Responsive Web Design, Native integration and HTML5 APIs
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-12-15</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-10-28">2015-10-28</time>
                <a href="/2015/10/28/how-designer-learn-fe/" title="「知乎」设计师如何学习前端？">「知乎」设计师如何学习前端？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/10/28/how-designer-learn-fe/">
                        <h2 class="post-title">
                            「知乎」设计师如何学习前端？
                        </h2>

                        <h3 class="post-subtitle">
                            How designers learn front-end development?
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-10-28</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-09-22">2015-09-22</time>
                <a href="/2015/09/22/js-version/" title="ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」">ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/09/22/js-version/">
                        <h2 class="post-title">
                            ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」
                        </h2>

                        <h3 class="post-subtitle">
                            ES5, ES6, ES2016, ES.Next: What's going on with JavaScript versioning?
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-09-22</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-07-09">2015-07-09</time>
                <a href="/2015/07/09/js-module-7day/" title="JavaScript 模块化七日谈">JavaScript 模块化七日谈</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/07/09/js-module-7day/">
                        <h2 class="post-title">
                            JavaScript 模块化七日谈
                        </h2>

                        <h3 class="post-subtitle">
                            Keynote: JavaScript Modularization Journey
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-07-09</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-05-25">2015-05-25</time>
                <a href="/2015/05/25/js-module-loader/" title="Example Post with Code Highlight">Example Post with Code Highlight</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/05/25/js-module-loader/">
                        <h2 class="post-title">
                            Example Post with Code Highlight
                        </h2>

                        <h3 class="post-subtitle">
                            CommonJS，RequireJS，SeaJS 归纳笔记
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-05-25</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-11-20">2014-11-20</time>
                <a href="/2014/11/20/responsive-web-design/" title="「知乎」你们觉得响应式好呢，还是手机和PC端分开来写？">「知乎」你们觉得响应式好呢，还是手机和PC端分开来写？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/11/20/responsive-web-design/">
                        <h2 class="post-title">
                            「知乎」你们觉得响应式好呢，还是手机和PC端分开来写？
                        </h2>

                    </a>
                    <!-- <p class="post-meta">2014-11-20</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="职业病">
                    <span class="tag-text">职业病</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-03-25">2015-03-25</time>
                <a href="/2015/03/25/digital-native/" title="hUX 随想录（一）：Digital native 数字原住民">hUX 随想录（一）：Digital native 数字原住民</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/25/digital-native/">
                        <h2 class="post-title">
                            hUX 随想录（一）：Digital native 数字原住民
                        </h2>

                        <h3 class="post-subtitle">
                            两岁的侄女天天叫着手机手机
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-25</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-03-10">2015-03-10</time>
                <a href="/2015/03/10/apple-event-2015/" title="「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？">「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/10/apple-event-2015/">
                        <h2 class="post-title">
                            「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊科技与新式奢侈品
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-10</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2014-12-13">2014-12-13</time>
                <a href="/2014/12/13/wechat-block-kuaidi/" title="「知乎」如何看待微信屏蔽快的打车事件？">「知乎」如何看待微信屏蔽快的打车事件？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2014/12/13/wechat-block-kuaidi/">
                        <h2 class="post-title">
                            「知乎」如何看待微信屏蔽快的打车事件？
                        </h2>

                        <h3 class="post-subtitle">
                            恰有小感。
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2014-12-13</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="生活">
                    <span class="tag-text">生活</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-05-11">2015-05-11</time>
                <a href="/2015/05/11/see-u-ali/" title="See you, Alibaba ">See you, Alibaba </a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/05/11/see-u-ali/">
                        <h2 class="post-title">
                            See you, Alibaba
                        </h2>

                        <h3 class="post-subtitle">
                            再见，阿里。
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-05-11</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-01-29">2015-01-29</time>
                <a href="/2015/01/29/hello-2015/" title="Hello 2015">Hello 2015</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/01/29/hello-2015/">
                        <h2 class="post-title">
                            Hello 2015
                        </h2>

                        <h3 class="post-subtitle">
                            "Hello World, Hello Blog"
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-01-29</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="Apple">
                    <span class="tag-text">Apple</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-03-10">2015-03-10</time>
                <a href="/2015/03/10/apple-event-2015/" title="「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？">「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/10/apple-event-2015/">
                        <h2 class="post-title">
                            「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊科技与新式奢侈品
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-10</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="Macbook">
                    <span class="tag-text">Macbook</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-03-10">2015-03-10</time>
                <a href="/2015/03/10/apple-event-2015/" title="「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？">「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/10/apple-event-2015/">
                        <h2 class="post-title">
                            「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊科技与新式奢侈品
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-10</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="Apple Watch">
                    <span class="tag-text">Apple Watch</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-03-10">2015-03-10</time>
                <a href="/2015/03/10/apple-event-2015/" title="「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？">「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/10/apple-event-2015/">
                        <h2 class="post-title">
                            「知乎」如何评价 2015 年 3 月 9 日 Apple 春季发布会？
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊科技与新式奢侈品
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-10</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="hUX 随想录">
                    <span class="tag-text">hUX 随想录</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-04-15">2015-04-15</time>
                <a href="/2015/04/15/os-metro/" title="hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇">hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/04/15/os-metro/">
                        <h2 class="post-title">
                            hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇
                        </h2>

                        <h3 class="post-subtitle">
                            信息、载体、抽象、UI 设计乱谈
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-04-15</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-03-25">2015-03-25</time>
                <a href="/2015/03/25/digital-native/" title="hUX 随想录（一）：Digital native 数字原住民">hUX 随想录（一）：Digital native 数字原住民</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/25/digital-native/">
                        <h2 class="post-title">
                            hUX 随想录（一）：Digital native 数字原住民
                        </h2>

                        <h3 class="post-subtitle">
                            两岁的侄女天天叫着手机手机
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-25</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="English-only">
                    <span class="tag-text">English-only</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-03-31">2015-03-31</time>
                <a href="/2015/03/31/e2e_user_scenarios/" title="Definition of End to End User Scenarios">Definition of End to End User Scenarios</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/31/e2e_user_scenarios/">
                        <h2 class="post-title">
                            Definition of End to End User Scenarios
                        </h2>

                        <h3 class="post-subtitle">
                            Paper wrote on my birthday
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-31</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="UX Design">
                    <span class="tag-text">UX Design</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-10-28">2015-10-28</time>
                <a href="/2015/10/28/how-designer-learn-fe/" title="「知乎」设计师如何学习前端？">「知乎」设计师如何学习前端？</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/10/28/how-designer-learn-fe/">
                        <h2 class="post-title">
                            「知乎」设计师如何学习前端？
                        </h2>

                        <h3 class="post-subtitle">
                            How designers learn front-end development?
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-10-28</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-04-15">2015-04-15</time>
                <a href="/2015/04/15/os-metro/" title="hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇">hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/04/15/os-metro/">
                        <h2 class="post-title">
                            hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇
                        </h2>

                        <h3 class="post-subtitle">
                            信息、载体、抽象、UI 设计乱谈
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-04-15</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-03-31">2015-03-31</time>
                <a href="/2015/03/31/e2e_user_scenarios/" title="Definition of End to End User Scenarios">Definition of End to End User Scenarios</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/03/31/e2e_user_scenarios/">
                        <h2 class="post-title">
                            Definition of End to End User Scenarios
                        </h2>

                        <h3 class="post-subtitle">
                            Paper wrote on my birthday
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-03-31</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="OS">
                    <span class="tag-text">OS</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-04-15">2015-04-15</time>
                <a href="/2015/04/15/os-metro/" title="hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇">hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/04/15/os-metro/">
                        <h2 class="post-title">
                            hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇
                        </h2>

                        <h3 class="post-subtitle">
                            信息、载体、抽象、UI 设计乱谈
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-04-15</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-04-14">2015-04-14</time>
                <a href="/2015/04/14/unix-linux-note/" title="Unix/Linux 扫盲笔记">Unix/Linux 扫盲笔记</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/04/14/unix-linux-note/">
                        <h2 class="post-title">
                            Unix/Linux 扫盲笔记
                        </h2>

                        <h3 class="post-subtitle">
                            不适合人类阅读，非常水的自我笔记
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-04-14</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="Unix">
                    <span class="tag-text">Unix</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-04-14">2015-04-14</time>
                <a href="/2015/04/14/unix-linux-note/" title="Unix/Linux 扫盲笔记">Unix/Linux 扫盲笔记</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/04/14/unix-linux-note/">
                        <h2 class="post-title">
                            Unix/Linux 扫盲笔记
                        </h2>

                        <h3 class="post-subtitle">
                            不适合人类阅读，非常水的自我笔记
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-04-14</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="Linux">
                    <span class="tag-text">Linux</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-04-14">2015-04-14</time>
                <a href="/2015/04/14/unix-linux-note/" title="Unix/Linux 扫盲笔记">Unix/Linux 扫盲笔记</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/04/14/unix-linux-note/">
                        <h2 class="post-title">
                            Unix/Linux 扫盲笔记
                        </h2>

                        <h3 class="post-subtitle">
                            不适合人类阅读，非常水的自我笔记
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-04-14</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="Windows">
                    <span class="tag-text">Windows</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-04-15">2015-04-15</time>
                <a href="/2015/04/15/os-metro/" title="hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇">hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/04/15/os-metro/">
                        <h2 class="post-title">
                            hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇
                        </h2>

                        <h3 class="post-subtitle">
                            信息、载体、抽象、UI 设计乱谈
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-04-15</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="Metro">
                    <span class="tag-text">Metro</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-04-15">2015-04-15</time>
                <a href="/2015/04/15/os-metro/" title="hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇">hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/04/15/os-metro/">
                        <h2 class="post-title">
                            hUX 随想录（二）：操作系统的浪漫主义 —— Metro 篇
                        </h2>

                        <h3 class="post-subtitle">
                            信息、载体、抽象、UI 设计乱谈
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-04-15</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="JavaScript">
                    <span class="tag-text">JavaScript</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2016-02-01">2016-02-01</time>
                <a href="/2016/02/01/React-vs-Angular2/" title="React vs Angular 2：冰与火之歌「译」">React vs Angular 2：冰与火之歌「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2016/02/01/React-vs-Angular2/">
                        <h2 class="post-title">
                            React vs Angular 2：冰与火之歌「译」
                        </h2>

                        <h3 class="post-subtitle">
                            React versus Angular 2: There Will Be Blood
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2016-02-01</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-12-15">2015-12-15</time>
                <a href="/2015/12/15/ios9-safari-web/" title="iOS 9，为前端世界都带来了些什么？「译」">iOS 9，为前端世界都带来了些什么？「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/12/15/ios9-safari-web/">
                        <h2 class="post-title">
                            iOS 9，为前端世界都带来了些什么？「译」
                        </h2>

                        <h3 class="post-subtitle">
                            iOS 9, Safari and the Web: 3D Touch, new Responsive Web Design, Native integration and HTML5 APIs
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-12-15</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-09-22">2015-09-22</time>
                <a href="/2015/09/22/js-version/" title="ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」">ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/09/22/js-version/">
                        <h2 class="post-title">
                            ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」
                        </h2>

                        <h3 class="post-subtitle">
                            ES5, ES6, ES2016, ES.Next: What's going on with JavaScript versioning?
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-09-22</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-07-09">2015-07-09</time>
                <a href="/2015/07/09/js-module-7day/" title="JavaScript 模块化七日谈">JavaScript 模块化七日谈</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/07/09/js-module-7day/">
                        <h2 class="post-title">
                            JavaScript 模块化七日谈
                        </h2>

                        <h3 class="post-subtitle">
                            Keynote: JavaScript Modularization Journey
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-07-09</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-05-25">2015-05-25</time>
                <a href="/2015/05/25/js-module-loader/" title="Example Post with Code Highlight">Example Post with Code Highlight</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/05/25/js-module-loader/">
                        <h2 class="post-title">
                            Example Post with Code Highlight
                        </h2>

                        <h3 class="post-subtitle">
                            CommonJS，RequireJS，SeaJS 归纳笔记
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-05-25</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="产品设计">
                    <span class="tag-text">产品设计</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-06-15">2015-06-15</time>
                <a href="/2015/06/15/alitrip-strategy/" title="聊聊「阿里旅行 · 去啊」—— 行业与战略 ">聊聊「阿里旅行 · 去啊」—— 行业与战略 </a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/06/15/alitrip-strategy/">
                        <h2 class="post-title">
                            聊聊「阿里旅行 · 去啊」—— 行业与战略
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊在线旅行行业与老东家的产品思路
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-06-15</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="在线旅行">
                    <span class="tag-text">在线旅行</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-06-15">2015-06-15</time>
                <a href="/2015/06/15/alitrip-strategy/" title="聊聊「阿里旅行 · 去啊」—— 行业与战略 ">聊聊「阿里旅行 · 去啊」—— 行业与战略 </a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/06/15/alitrip-strategy/">
                        <h2 class="post-title">
                            聊聊「阿里旅行 · 去啊」—— 行业与战略
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊在线旅行行业与老东家的产品思路
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-06-15</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="电子商务">
                    <span class="tag-text">电子商务</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-06-15">2015-06-15</time>
                <a href="/2015/06/15/alitrip-strategy/" title="聊聊「阿里旅行 · 去啊」—— 行业与战略 ">聊聊「阿里旅行 · 去啊」—— 行业与战略 </a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/06/15/alitrip-strategy/">
                        <h2 class="post-title">
                            聊聊「阿里旅行 · 去啊」—— 行业与战略
                        </h2>

                        <h3 class="post-subtitle">
                            聊聊在线旅行行业与老东家的产品思路
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-06-15</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="翻译">
                    <span class="tag-text">翻译</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-09-22">2015-09-22</time>
                <a href="/2015/09/22/js-version/" title="ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」">ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/09/22/js-version/">
                        <h2 class="post-title">
                            ES5, ES6, ES2016, ES.Next: JavaScript 的版本是怎么回事？「译」
                        </h2>

                        <h3 class="post-subtitle">
                            ES5, ES6, ES2016, ES.Next: What's going on with JavaScript versioning?
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-09-22</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="iOS">
                    <span class="tag-text">iOS</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-12-15">2015-12-15</time>
                <a href="/2015/12/15/ios9-safari-web/" title="iOS 9，为前端世界都带来了些什么？「译」">iOS 9，为前端世界都带来了些什么？「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/12/15/ios9-safari-web/">
                        <h2 class="post-title">
                            iOS 9，为前端世界都带来了些什么？「译」
                        </h2>

                        <h3 class="post-subtitle">
                            iOS 9, Safari and the Web: 3D Touch, new Responsive Web Design, Native integration and HTML5 APIs
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-12-15</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="译文">
                    <span class="tag-text">译文</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2016-02-01">2016-02-01</time>
                <a href="/2016/02/01/React-vs-Angular2/" title="React vs Angular 2：冰与火之歌「译」">React vs Angular 2：冰与火之歌「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2016/02/01/React-vs-Angular2/">
                        <h2 class="post-title">
                            React vs Angular 2：冰与火之歌「译」
                        </h2>

                        <h3 class="post-subtitle">
                            React versus Angular 2: There Will Be Blood
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2016-02-01</p> -->
                </div>
                <hr>

                <!-- <li class="listing-item">
                <time datetime="2015-12-15">2015-12-15</time>
                <a href="/2015/12/15/ios9-safari-web/" title="iOS 9，为前端世界都带来了些什么？「译」">iOS 9，为前端世界都带来了些什么？「译」</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/12/15/ios9-safari-web/">
                        <h2 class="post-title">
                            iOS 9，为前端世界都带来了些什么？「译」
                        </h2>

                        <h3 class="post-subtitle">
                            iOS 9, Safari and the Web: 3D Touch, new Responsive Web Design, Native integration and HTML5 APIs
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-12-15</p> -->
                </div>
                <hr>

            </div>

            <div class="one-tag-list">
			  	<span class="fa fa-tag listing-seperator" id="CSS">
                    <span class="tag-text">CSS</span>
                </span>

                <!-- <li class="listing-item">
                <time datetime="2015-12-28">2015-12-28</time>
                <a href="/2015/12/28/css-sucks-2015/" title="都 2015 年了，CSS 怎么还是这么糟糕">都 2015 年了，CSS 怎么还是这么糟糕</a>
                </li> -->
                <div class="post-preview">
                    <a href="/2015/12/28/css-sucks-2015/">
                        <h2 class="post-title">
                            都 2015 年了，CSS 怎么还是这么糟糕
                        </h2>

                        <h3 class="post-subtitle">
                            Keynote: CSS Still Sucks 2015
                        </h3>

                    </a>
                    <!-- <p class="post-meta">2015-12-28</p> -->
                </div>
                <hr>

            </div>


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
        if (c) { o.addEventListener('load', function (e) { c(null, e); }, false); }
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
    if($('#tag_cloud').length !== 0){
        async('/js/jquery.tagcloud.js',function(){
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
    async("http://cdn.bootcss.com/fastclick/1.0.6/fastclick.min.js", function(){
        var $nav = document.querySelector("nav");
        if($nav) FastClick.attach($nav);
    })
</script>


<!-- Google Analytics -->

<script>
    // dynamic User by Hux
    var _gaId = 'UA-49627206-1';
    var _gaDomain = 'huangxuan.me';

    // Originial
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', _gaId, _gaDomain);
    ga('send', 'pageview');
</script>



<!-- Baidu Tongji -->

<script>
    // dynamic User by Hux
    var _baId = '4cc1f2d8f3067386cc5cdb626a202900';

    // Originial
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?" + _baId;
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>




<!-- Side Catalog -->





<!-- Image to hack wechat -->
<img src="/img/icon_wechat.png" width="0" height="0" />
<!-- Migrate from head to bottom, no longer block render and still work -->

</body>
</html>
