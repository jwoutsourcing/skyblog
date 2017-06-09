<?php

/* 

This is a guidance note for BlogPHP. It will outline key pages and their support files. 

* Common Style & Design Files:
    -   fonts sub-folder = downloaded font called by class = rebellion established in style.css
    -   css sub-folder = bootstrap.min.css, external library not to be changed + working .css 
        for this page = style.css. It includes customisation and any bootstrap overrides if applicable.
    -   imgs sub-folder = all background, logo, etc... No images uploaded to posts are stored here.

 
* Common Layout Files in layout sub-folder:
    -   footer.php =  common sticky footer. footer 30px at time of documentation created. adjusted in style.css. 
        if adjust in footer css must adjust body accordingly to avoid whitespace
    -   pager.php = are basic pagination buttons with corresponding css. not being used at this time but being 
        kept as future option.
    -   sidenav_left.php = a basic cm-1 left side navbar with template for search, archive, and other things that 
        can be built upon. Currently not in use. If want to use can include as per inclusion of sidenav_right but 
        above the main container. if including must either -1 from cm-10 of center container or -1 from cm-2 of 
        sidenav_right (at least)
    -   sidenav_right.php = currently cm-2 and in use. Can be tricky with whitespace issues at present.
    -   head.php = everything that goes in the <head> tags of all main pages except title. Additional libraries 
        or style sheets can be added here if to apply to all pages or individual either before or after include statement 
        as appropriate. Be mindful of order if adding libraries or stylesheets to head or page x page basis.
    -   index_div_li = a small div including important code that is applied to index.php if a user is logged in 
        and that user is admin. If logged in it welcomes the user based on usename. If user is also admin it additionally 
        provides button that allows user to create new post.
    -   topnavs = subfolder in layout containing 5 x varieties of top navvagation bar. All pages have combination of 4 x tabs 
        which are Home (if any page but index.php) + Contact + About Me + Login (or Logout if user is logged in). Whatever 
        page is active for the user the topnav will not have the tab for this page in the navbar.The "logo" to the left is 
        also a link back to homepage on all pages. Navbar is responsive and tabs are dropdown on small screens. While it would
        be possible to have 1 x version, it is considered that 4 versions gives more style flexibility should we choose to go
        for different style/layout/colour schemes on different pages. 
 
 *  Common Database-related files in database sub-folder:
    -   class_db.php = database config file that relates to the users table in the database and is frequently called on by
        main page and login-sub-folder files
    -   posts_dbconfig.php = database config file related to the posts table in the database and is frequently called on 
        by main page and posts sub-folder files. As of writing this is not the case but likely to be used for comments as well.

* Main Home Page (index.php):
    -   primary home page. Always includes class_user.php and if user is logged in will include is_loggedin.php. 
        These allow different homepage experience for logged in user vs non registered/logged in. This and all 
        other main pages include cm-10 main container that is independently scrollable with hidden scrollbar in .css. 
        This hiding will not work on non-webkit enabled browsers.
    -   If a user is not logged in they should see only a list of posts that they can click on to read full posts. 
        Whatever else one might see on this page is controlled by inclusion of index_div_li.php in layout subfolder

* Contact Page
    -   contact.php = main html place setting for pages that enable the contact process to work
    -   contact_form.php = the contact form that displays on the screen. This lives in contact sub-folder.
    -   contact_functions.php = the functions that let the form work. The function will not work on any 
        machine without editing to the php.ini & sendmail.ini smtp settings. Full details of these changes 
        will not be shared here due to security. Ask Rachel Wood for assistace if required.
  
* About Me Page
    - currently an empty HTML shell.
 
* LOGIN & SIGN UP
 * login.php = primary page for execution of login process supported by functionality in login sub-folder
 * sign_up.php = primary page for execution of new user registration process supported by functionality in login sub-folder
    -   class_db.php = in database sub-folder. Heavily relied on for login/sign-up. This is the config file related to Table USERS.
    -   class_users.php in login sub-folder. Essential for login/sign-up. This establishes a user and class functionality 
        for loggining in, out, connection to db, etc....
    -   login_functions = what happens when a user clicks the login button on the login.php page. A Session starts, details are validated and user 
        redirected to index.php or error message saying wrong details. Requires class_user & class_db to work.
    -   sign_up_functions.php = functionality behind new user registration. If a user is not registered a user cannot login. This page enables the generation of details to populate the users Table on the db.      
 
  
  
  
 */

