<{if $lcr=='l'}><{assign var=lcr value='left'}>
<{elseif $lcr=='r'}><{assign var=lcr value='right'}>
<{else}><{assign var=lcr value='center'}>
<{/if}>

<{assign var=zone value="page_$topbottom$lcr"}>

<{if $xoBlocks[$zone]}>
    <div id="xo-page-<{$topbottom}><{$lcr}>blocks" class="xo-blockszone">
        <{foreach from=$xoBlocks[$zone] item=block}>
            <div id="xo-block-<{$block.module}>-<{$block.id}>" class="xo-block <{$block.module}>">
                <{if $theme_viewall_content && $block.module !='system' && $block.module !=''}>
                    <div id="xo-blockviewall">
                        <a href="<{$xoops_url}>/modules/<{$block.module}>" title="<{$smarty.const.THEME_VIEWALL}>">
                            <img src="<{xoImgUrl icons/action/14_layer_novisible.png}>" alt="<{$smarty.const.THEME_VIEWALL}>"/>
                        </a>
                    </div>
                <{/if}>
                <{if $block.title}>
                    <div class="xo-blocktitle">
                        <{$block.title}>
                        <{if $xoops_isadmin}>
                            <a rel="external" href="<{xoAppUrl /modules/system/admin.php?fct=blocksadmin&op=edit&bid=}><{$block.id}>"
                               title="<{$smarty.const.THEME_THISBLOCK_EDIT}>">
                                <img class="xo-blockquickedit" src="<{xoImgUrl icons/action/edit-block.png}>" alt="<{$smarty.const.THEME_THISBLOCK_EDIT}>"/>
                            </a>
                        <{/if}>
                    </div>
                <{else}>
                    <{if $xoops_isadmin}>
                        <div class="xo-blockquicklink">
                            <a rel="external" href="<{xoAppUrl /modules/system/admin.php?fct=blocksadmin&op=edit&bid=}><{$block.id}>"
                               title="<{$smarty.const.THEME_THISBLOCK_EDIT}>">
                                <img class="xo-blockquickedit" src="<{xoImgUrl icons/action/edit-block.png}>" alt="<{$smarty.const.THEME_THISBLOCK_EDIT}>"/><{$smarty.const.THEME_THISBLOCK_EDIT}>
                            </a>
                        </div>
                    <{/if}>
                <{/if}>
                <div class="xo-blockcontent"><{$block.content}></div>
            </div>
        <{/foreach}>
    </div>
<{/if}>
