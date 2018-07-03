<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<{$xoops_langcode}>" lang="<{$xoops_langcode}>">
<head>
    <!-- Theme name -->
    <{assign var=theme_name value=$xoTheme->folderName}>
    <!-- Directory html blocks files or additional html files by include -->
    <{assign var=theme_name value=$xoTheme->folderName|cat:'/xotpl'}>
    <!-- Directory html plugins files -->
    <{assign var=theme_plugin value=$xoTheme->folderName|cat:'/xoplugins'}>
    <!-- Directory html javascript files -->
    <{assign var=theme_js value=$xoTheme->folderName|cat:'/js'}>
    <!-- Metas -->
    <{includeq file="$theme_name/xo_metas.tpl"}>
    <!-- Theme others parameters -->
    <{includeq file="$theme_name/xo_thm_parameters.tpl"}>
</head>
<body id="xo-sitemaintenance">
<div id="xo-canvas"
        <{if $columns_layout}> class="<{$columns_layout}>"<{/if}>>
    <div class="xo-wrapper">
        <div id="xo-bgstatic" class="<{$xoops_dirname}>"></div>
        <!-- Start header -->
        <div id="xo-header">
            <div id="xo-banner" class="<{$xoops_dirname}>">
                <div id="xo-headerlogo"><a href="<{xoAppUrl /}>" title=""><img src="<{xoImgUrl img/logo.png}>" alt="<{$xoops_sitename}>"/></a></div>
                <{if $xoops_banner and $xoops_banner != '&nbsp;'}>
                    <div id="xo-headerbanner"><{$xoops_banner|smarty:nodefaults}></div>
                <{/if}>
            </div>
            <div id="xo-globalnav">&nbsp;</div>
        </div>
        <!-- End header -->

        <div id="xo-canvas-content">
            <div id="xo-page-siteclose">
                <div id="xo-siteclose"><{$lang_siteclosemsg}></div>
                <div id="login_window">
                    <form action="<{$xoops_url}>/user.php" method="post" class="login_form">
                        <div class="credentials">
                            <label for="login_form-login"><{$lang_login}></label><input type="text" name="uname" id="login_form-login" size="12"
                                                                                        value=""/><br/>
                            <label for="login_form-password"><{$lang_password}></label><input type="password" name="pass" id="login_form-password"
                                                                                              size="12"/>
                            <input type="hidden" name="xoops_redirect" value="<{$xoops_requesturi}>"/>
                            <input type="hidden" name="xoops_login" value="1"/>
                        </div>
                        <div class="actions"><input type="submit" value="<{$lang_login}>"/></div>
                    </form>
                </div>
            </div>
        </div>
        <!--{xo-logger-output}-->
    </div>
</div>
</body>
</html>
