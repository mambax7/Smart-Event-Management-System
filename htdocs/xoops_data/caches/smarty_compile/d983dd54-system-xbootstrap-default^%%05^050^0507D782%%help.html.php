<?php /* Smarty version 2.6.25-dev, created on 2017-11-12 21:10:54
         compiled from /Applications/XAMPP/xamppfiles/htdocs/htdocs/modules/profile/language/english/help/help.html */ ?>
<div id="help-template" class="outer">
    <h1 class="head">Help: <a class="ui-corner-all tooltip" href="<?php echo $this->_tpl_vars['xoops_url']; ?>
/modules/profile/admin/index.php" title="Back to the Administration of Profile"> Profile <img src="<?php 
echo 'http://localhost/htdocs/modules/system/images/icons/default/home.png'; ?>" alt="Back to the Administration of Profile"/></a></h1>
    <!-- -----Help Content ---------- -->
    <h4 class="odd">Description</h4>

    <p class="even">The Profile module is for managing custom user profile fields.</p>
    <h4 class="odd">Install/uninstall</h4>

    <p>No special measures necessary, follow the standard installation process – extract the /profile folder into the ../modules directory. Install the module through Admin -> System Module -> Modules.</p>

    <p>Detailed instructions on installing modules are available in the <a href="https://www.gitbook.com/book/xoops/xoops-operations-guide/" target="_blank" title="XOOPS Operations Manual">XOOPS Operations Manual</a> <br/><br/></p>
    <h4 class="odd">Operating instructions</h4>

    <p class="even">To set up this module you need to:</p>
    <ul>
        <li>Configure your preferences for the module (see ‘Preferences’) and optionally the Profile block if you intend to use it (see ‘Blocks’).</li>
        <li>Edit existing Categories or add new ones.</li>
        <li>Edit existing Fields or add new ones. Here you can specify which fields will be visible in which category, and if they will be visible during user registration.</li>
        <li>Define the order of Registration steps.</li>
        <li>And finally, you can set permissions for individual fields - which ones are editable, which ones are searchable.<br/><br/></li>
    </ul>
    <h4 class="odd">Anti-Spam measures</h4>

    <p class="even">To minimize spam registrations, do the following:</p>

    <ul>
        <li> go to the Protector module in Admin, go to Preferences, and then at the bottom, at this option:

            "Stop Forum Spam"
            Checks POST data against spammers registered on www.stopforumspam.com database. <br/>
            Set it to "Ban the IP (no limit)"
        </li>
        <br/>

        <li> in /class/captcha/config.php, make sure that the mode is set as "text":<br/><br/>

    <span style="font-style: italic;">     return $config = array(<br/>
    'disabled' => false, // Disable CAPTCHA<br/>
    'mode' => 'text', // default mode, you can choose 'text', 'image', 'recaptcha'(requires api key)<br/>
    'name' => 'xoopscaptcha', // captcha name<br/>
    'skipmember' => true, // Skip CAPTCHA check for members<br/>
    'maxattempts' => 10, // Maximum attempts for each session<br/>
    );</span></li>
        <br/>

        <li> In the Profile module, go to Admin and in the Basic step located at:<br/>

            /modules/profile/admin/step.php?id=1<br/>

            set the "Save after stop" to "No"
        </li>
        <br/><br/>

        <li> In Profile Preferences, set the "Use Captcha after the second Registration step" Option to "Yes" (it is the default)</li>
        <br/>
        <ul>

            <h4 class="odd">Tutorial</h4>

            <p class="even">Tutorial coming soon.<br/></p>
            <!-- -----Help Content ---------- -->
</div>