<div id="xo-footer" <{if $xoops_isadmin}>class="xo-footbottom"<{/if}>>
    <div id="xo-rss">
        <a href="<{xoAppUrl backend.php}>" title="<{$smarty.const.THEME_RSS}>">
            <img src="<{xoImgUrl icons/action/feed.png}>" alt="<{$smarty.const.THEME_RSS}>"/>
        </a>
    </div>
    <div id="xo-searchfooter">
        <form name="search" method="get" action="<{xoAppUrl /search.php}>">
            <input type="text" id="query" name="query" class="keyword" value="" maxlength="255" tabindex="1" title="<{$smarty.const.THEME_KEYWORDS}>"/>
            <input type="hidden" name="action" id="action" value="results"/>
            <input class="xo-formbuttons" type="submit" value="<{$smarty.const.THEME_SEARCH}>" title="<{$smarty.const.THEME_DESC_SEARCH}>"/>
        </form>
    </div>
    <div id="xo-copyright"><{$xoops_footer}></div>
</div>
