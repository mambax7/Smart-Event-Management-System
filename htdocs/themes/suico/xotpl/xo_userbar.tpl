<{xoMemberInfo assign=member_info}>

<div id="xo-userbar">
    <{if !$xoops_isuser}>
        <!-- menu in anonymous mode-->
        <a class="register" href="javascript:XoShowDiv('marcello');" title="<{$smarty.const._LOGIN}>"><{$smarty.const._LOGIN}></a>
        &nbsp;|&nbsp;
        <a
                href="<{xoAppUrl /register.php}>" class="register" title="<{$smarty.const.THEME_REGISTER}>"><{$smarty.const.THEME_REGISTER}></a>
    <{else}>
        <!-- menu in user mode-->
    <a href="javascript:XoShowDiv('brandao');" title="<{$smarty.const.THEME_MYACCOUNT}>"><img class="xo-icons opac5"
                                                                                              src="<{xoImgUrl icons/users/vcard_edit.png}>"
                                                                                              alt="<{$smarty.const.THEME_MYACCOUNT}>"/></a><{xoInboxCount
    assign=pmcount}><{if $pmcount}><a class="highlight" href="<{xoAppUrl viewpmsg.php}>" title="<{$pmcount}> <{$smarty.const.THEME_NOTREAD}>">(<{$pmcount}>
        Msg)</a><{/if}>
        <{if $xoops_isadmin}>
            <!-- additional link if I have rights of administration of module -->
            <a href="<{xoAppUrl /admin.php}>" title="<{$smarty.const._CPHOME}>"><img class="xo-icons opac5" src="<{xoImgUrl icons/users/cog_go.png}>"
                                                                                     alt="<{$smarty.const._CPHOME}>"/></a>
        <{/if}>
        <a href="<{xoAppUrl /user.php op=logout}>" title="<{$smarty.const._LOGOUT}>"><img class="xo-icons opac5"
                                                                                          src="<{xoImgUrl icons/users/shutdown.png}>"
                                                                                          alt="<{$smarty.const._LOGOUT}>"/></a>
    <{/if}>
</div>

<!-- Login Popup-->
<div id="marcello" class="xo-hideshow" style="visibility:hidden;">
    <div id="xo-fade"></div>
    <div class="xo-popup_block">
        <div class="xo-popup">
            <a href="javascript:XoHideDiv('marcello');" title="<{$smarty.const.THEME_CLOSEPOPUP}>"><img src="<{xoImgUrl img/icon_close.png}>"
                                                                                                        class="cntrl" alt="X"/></a>
            <fieldset>
                <legend><{$smarty.const._LOGIN}></legend>
                <form action="<{xoAppUrl /user.php op=login}>" method="post" class="login_form">
                    <div class="credentials">
                        <label for="login_form-login"><{$smarty.const.THEME_PSEUDO}> :</label><input type="text" name="uname"
                                                                                                     title="<{$smarty.const.THEME_DESC_PSEUDO}>"/><br/>
                        <label for="login_form-password"><{$smarty.const.THEME_PASSWORD}> :</label><input type="password" name="pass"
                                                                                                          title="<{$smarty.const.THEME_DESC_PASSWORD}>"/>

                        <div class="actions"><input type="checkbox" name="rememberme" value="On" checked/> <{$smarty.const.THEME_REMEMBER}></div>
                        <input type="hidden" name="xoops_redirect" value="<{$smarty.server.REQUEST_URI}>"/>
                        <input type="hidden" name="op" value="login"/>
                    </div>
                    <div class="center"><input class="xo-formbuttons" type="submit" value="<{$smarty.const.THEME_CONNECT}>"
                                               title="<{$smarty.const.THEME_CONNECT}>"/></div>
                </form>
            </fieldset>
            <div class="center">
                <a href="<{xoAppUrl user.php#lost}>" title="<{$smarty.const.THEME_LOSTACCOUNT}>"><{$smarty.const.THEME_LOSTACCOUNT}></a>
                <br/>
                <a href="<{xoAppUrl register.php}>" title="<{$smarty.const.THEME_REGISTER}>"><{$smarty.const.THEME_REGISTER}></a>
            </div>
        </div>
    </div>
</div>
<!-- End Login Popup-->

<!-- Userinfo Popup-->
<div id="brandao" class="xo-hideshow" style="visibility:hidden;">
    <div id="xo-fade"></div>
    <div class="xo-popup_block1">
        <div class="xo-popup">
            <a href="javascript:XoHideDiv('brandao');" title="<{$smarty.const.THEME_CLOSEPOPUP}>"><img src="<{xoImgUrl img/icon_close.png}>"
                                                                                                       class="cntrl" alt="X"/></a>
            <table>
                <tr class="center">
                    <td class="width33">
                        <{if $xoops_isuser}>
                            <{if $member_info.user_avatar && $member_info.user_avatar!='blank.gif'}>
                                <img class="xo-uavatar boxshadow" src="<{$xoops_avatar}>" alt="<{$xoops_uname}>" title="<{$xoops_uname}>"/>
                            <{else}>
                                <a href="<{$xoops_url}>/edituser.php?op=avatarform" title="<{$smarty.const.THEME_UEDITAVATAR}>">
                                    <img class="xo-uavatar boxshadow" src="<{xoImgUrl icons/users/noavatar.jpg}>" alt="<{$smarty.const.THEME_UEDITAVATAR}>"/>
                                </a>
                            <{/if}>
                        <{/if}>
                    </td>
                    <td class=" width66 middle"><span class="bold maxi shadow"><{$xoops_uname}></span><br/><span class="italic"><{$xoops_name}></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <span class="xo-ulabel"><img class="xo-icons" src="<{xoImgUrl icons/users/web.png}>" alt=""/></span>: <span
                                class="xo-uleft"><a rel="external" href="<{$member_info.url}>"
                                                    title="<{$member_info.url}>"><{$member_info.url}></a></span><br/>
                        <span class="xo-ulabel"><img class="xo-icons" src="<{xoImgUrl icons/users/email.png}>" alt=""/></span>: <span
                                class="xo-uleft"><{$member_info.email}></span><br/>
                        <span class="xo-ulabel"><img class="xo-icons" src="<{xoImgUrl icons/users/msn.png}>" alt=""/></span>: <span class="xo-uleft"><{$member_info.user_msnm}></span><br/>
                        <span class="xo-ulabel"><img class="xo-icons" src="<{xoImgUrl icons/users/Ym.png}>" alt=""/></span>: <span class="xo-uleft"><{$member_info.user_yim}></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <span class="xo-ulabel"><{$smarty.const.THEME_UFROM}></span>: <span class="xo-uleft"><{$member_info.user_from}></span><br/>
                        <span class="xo-ulabel"><{$smarty.const.THEME_UOCCUPAT}></span>: <span class="xo-uleft"><{$member_info.user_occ}></span><br/>
                        <span class="xo-ulabel"><{$smarty.const.THEME_UINTEREST}></span>: <span
                                class="xo-uleft"><{$member_info.user_intrest}></span><br/>
                        <span class="xo-ulabel"><{$smarty.const.THEME_UINFOS}></span>: <span class="xo-uleft small italic"><{$member_info.bio}></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <!-- <span class="xo-ulabel"><{$smarty.const.THEME_UREGDATE}></span>: <span class="xo-uleft">grrrrrrrr !!!</span><br /> -->
                        <!-- <span class="xo-ulabel"><{$smarty.const.THEME_ULASTLOGIN}></span>: <span class="xo-uleft">grrrrrrrr !!!</span><br /> -->
                        <span class="xo-ulabel"><{$smarty.const.THEME_UPOSTS}></span>: <span class="xo-uleft"><{$member_info.posts}></span>
                    </td>
                </tr>
                <tr>
                    <td class="center middle" colspan="2">
                        <a href="<{xoAppUrl edituser.php}>" title="<{$smarty.const.THEME_UEDITPROFILE}>">
                            <img class="xo-uicons" src="<{xoImgUrl icons/users/identity.png}>" alt="<{$smarty.const.THEME_UEDITPROFILE}>"/></a>
                        <a href="<{xoAppUrl edituser.php?op=avatarform}>" title="<{$smarty.const.THEME_UEDITAVATAR}>">
                            <img class="xo-uicons" src="<{xoImgUrl icons/users/organizer.png}>" alt="<{$smarty.const.THEME_UEDITAVATAR}>"/></a>
                        <a href="<{xoAppUrl modules/profile/changepass.php}>" title="<{$smarty.const.THEME_UEDITPASSWORD}>">
                            <img class="xo-uicons" src="<{xoImgUrl icons/users/password.png}>" alt="<{$smarty.const.THEME_UEDITPASSWORD}>"/></a>
                        <br/>
                        <a href="<{xoAppUrl user.php}>" title="<{$smarty.const.THEME_PROFILE}>">
                            <img class="xo-uicons" src="<{xoImgUrl icons/users/edit_user.png}>" alt="<{$smarty.const.THEME_PROFILE}>"/></a>
                        <{xoInboxCount assign=pmcount}>
                        <a href="<{xoAppUrl viewpmsg.php}>" title="<{$smarty.const.THEME_MESSAGE}> | <{$pmcount}> <{$smarty.const.THEME_NOTREAD}>">
                            <img class="xo-uicons" src="<{xoImgUrl icons/users/messagebox_info.png}>"
                                 alt="<{$smarty.const.THEME_MESSAGE}> | <{$pmcount}> <{$smarty.const.THEME_NOTREAD}>"/></a>
                        <a href="<{xoAppUrl notifications.php}>" title="<{$smarty.const.THEME_NOTIFICATION}>">
                            <img class="xo-uicons" src="<{xoImgUrl icons/users/knotes.png}>" alt="<{$smarty.const.THEME_NOTIFICATION}>"/></a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<!-- End Userinfo Popup-->
