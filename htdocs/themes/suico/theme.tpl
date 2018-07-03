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

    <{php}>
    /** If a module defines its own canvas template (located themes/themename/modules/dirname/xo_canvas.tpl), take it; otherwise the default canvas
    (themes/themename/xotpl/xo_canvas.tpl) is used. */
    if(file_exists(XOOPS_ROOT_PATH."/themes/".$this->_tpl_vars["xoops_theme"]."/modules/".$this->_tpl_vars["xoops_dirname"]."/xo_canvas.tpl")) {
    $this->assign("canvas_template", $this->_tpl_vars["xoops_theme"]."/modules/".$this->_tpl_vars["xoops_dirname"]."/xo_canvas.tpl");
    }else{
    $this->assign("canvas_template", $this->_tpl_vars["xoops_theme"]."/xotpl/xo_canvas.tpl");
    }
    /** Defined an extra SMARTY variable $xoops_themeurl, which is identical to $xoops_imageurl, for literal consistence only
    (siteurl/themes/themename) */
    $this->assign("xoops_themeurl", $this->_tpl_vars["xoops_url"]."/themes/".$this->_tpl_vars["xoops_theme"]);
    /** Defined an extra SMARTY variable $xoops_module_theme (themename/module/modulename) */
    $this->assign("xoops_module_theme", $this->_tpl_vars["xoops_theme"]."/modules/".$this->_tpl_vars["xoops_dirname"]);
    /** Defined an extra SMARTY variable $xoops_module_themeurl (siteurl/themes/themename/modules/modulename)*/
    $this->assign("xoops_module_themeurl", $this->_tpl_vars["xoops_themeurl"]."/modules/".$this->_tpl_vars["xoops_dirname"]);
    /** If a module has its own css (located themes/themename/modules/dirname/style.css), append it to $xoops_module_header */
    if(file_exists(XOOPS_ROOT_PATH."/themes/".$this->_tpl_vars["xoops_theme"]."/modules/".$this->_tpl_vars["xoops_dirname"]."/style.css")) {
    $this->assign("xoops_module_header",
    $this->_tpl_vars["xoops_module_header"]."\n".
    "
    <link rel=\"stylesheet\" type=\"text/css\" media=\"screen,projection\" href=\"".$this->
    _tpl_vars["xoops_themeurl"]."/modules/".$this->_tpl_vars["xoops_dirname"]."/style.css\"/>\n");
    }
    /** Defined an extra SMARTY variable $modulename for display current module name defined by webmaster in xoops administration */
    GLOBAL $xoopsModule;
    $modulename = (isset($xoopsModule) ? $xoopsModule->getVar('name') :'system');
    $GLOBALS['xoopsTpl']->assign('modulename', $modulename);

    /** add JQuery and JQuery UI */
    global $xoTheme;
    $xoTheme->addScript("browse.php?Frameworks/jquery/jquery.js");
    $xoTheme->addScript("browse.php?Frameworks/jquery/plugins/jquery.ui.js");
    $this->assign('xoops_module_header', $xoTheme->renderMetas(null, true));
    <{/php}>

    <{includeq file="$canvas_template"}>
