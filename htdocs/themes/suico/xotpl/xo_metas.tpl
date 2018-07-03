<!-- Title and meta -->
<title><{if $xoops_pagetitle !=''}><{$xoops_pagetitle}> : <{/if}><{$xoops_sitename}></title>
<meta http-equiv="content-type" content="text/html; charset=<{$xoops_charset}>"/>
<meta name="robots" content="<{$xoops_meta_robots}>"/>
<meta name="keywords" content="<{$xoops_meta_keywords}>"/>
<meta name="description" content="<{$xoops_meta_description}>"/>
<meta name="rating" content="<{$xoops_meta_rating}>"/>
<meta name="author" content="<{$xoops_meta_author}>"/>
<meta name="copyright" content="<{$xoops_meta_copyright}>"/>
<meta name="generator" content="XOOPS"/>

<{if $url}>
    <meta http-equiv="Refresh" content="<{$time}>; url=<{$url}>"/>
<{/if}>

<!-- Force MSIE without  javascript actived to take the default theme. not conforms to the standards but functional -->
<{if $isMsie}>
    <noscript>
        <meta http-equiv="refresh" content="0; url=<{xoAppUrl . xoops_theme_select=default}>"/>
    </noscript>
<{/if}>

<!-- Rss -->
<link rel="alternate" type="application/rss+xml" title="<{$smarty.const.THEME_RSS}>" href="<{xoAppUrl backend.php}>"/>

<!-- Favicon -->
<link rel="shortcut icon" type="image/ico" href="<{xoImgUrl icons/favicon.ico}>"/>
<link rel="icon" type="image/png" href="<{xoImgUrl icons/favicon.png}>"/>

<!-- Xoops style sheet -->
<link rel="stylesheet" type="text/css" media="screen" href="<{xoAppUrl xoops.css}>"/>
<!-- Theme style sheets -->
<link rel="stylesheet" type="text/css" media="screen,projection,print" href="<{xoImgUrl css/layout-soup.css}>"/><!-- canvas theme style sheet -->
<link rel="stylesheet" type="text/css" media="screen" title="Color" href="<{xoImgUrl css/style.css}>"/> <!--for production -->
<link rel="stylesheet" type="text/css" media="print" href="<{xoImgUrl css/print.css}>"/>  <!-- print style sheet experimental -->
<!--[if lt IE 8]>
<style type="text/css">
    #xo-canvas-leftcolumn {
        display: inline;
        zoom: 1;
    }

    #xo-page {
        display: inline;
        zoom: 1;
    }

    #xo-canvas.threecolumns-layout #xo-page {
        width: 585px;
    }

    #xo-canvas.leftcolumn-layout #xo-page, #xo-canvas.rightcolumn-layout #xo-page {
        width: 830px;
    }

    #xo-canvas-rightcolumn {
        display: inline;
        zoom: 1;
    }
</style>
<![endif]-->
<!-- scripts xoops.js and instructions header.php files-->
<{$xoops_module_header}>
