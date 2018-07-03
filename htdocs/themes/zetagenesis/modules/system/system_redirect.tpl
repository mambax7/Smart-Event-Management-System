<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<{$xoops_langcode}>" lang="<{$xoops_langcode}>">
<head>
    <{assign var=theme_name value=$xoTheme->folderName|cat:'/xotpl'}>

    <!-- Metas -->
    <{includeq file="$theme_name/xometas.tpl"}>

</head>
<body id="xo-refresh">
<div id="xo-wrapper" class="container center">
    <div id="xo-redirect">
        <div class="message">
            <{$message}>
            <br/>
            <img src="<{xoImgUrl img/ajax_indicator_01.gif}>" alt="<{$message}>"/>
        </div>
        <div class="notreload">
            <{$lang_ifnotreload}>
        </div>

        <{if $xoops_logdump != ''}>
            <div><{$xoops_logdump}></div>
        <{/if}>
    </div>
</div>

</body>
</html>
