<?php
DEFINE("SITE_NAME", "Doxramos CMS");
DEFINE("COPYRIGHT", "All rights reserved");
DEFINE("COPY_SLOGAN", "Content Management Made Easy");
//DEFINE MYSQL Settings
DEFINE("DBHOST", "HOST"); //Typically localhost
DEFINE("DBUSER", "USER"); //MySQL User
DEFINE("DBPASS", "PASS"); //MySQL Pass
DEFINE("DBDATA", "DATA"); //Database
DEFINE("TPREFIX", "");
//Currently Active Theme
DEFINE("ACTIVE_THEME", "default");
#
#DO NOT EDIT BELOW UNLESS YOU KNOW WHAT YOU ARE DOING!
#
DEFINE("CORE_PATH", ROOT_PATH.'/core');
DEFINE("APP_PATH", ROOT_PATH.'/app');
DEFINE("ASSETS_PATH", ROOT_PATH.'/assets');
DEFINE("MODULE_PATH", APP_PATH.'/modules');
DEFINE("PLUGIN_PATH", APP_PATH.'/plugins');
DEFINE("THEME_PATH", APP_PATH.'/themes');
DEFINE("VIEW_PATH", APP_PATH.'/views');
DEFINE("CLASS_PATH", CORE_PATH.'/classes');
DEFINE("HOOK_PATH", CORE_PATH.'/hooks');
//Load All Database Files
foreach(glob(CLASS_PATH.'/*.database') as $database) {
	require_once($database);
}
//Load All Class Files
foreach(glob(CLASS_PATH.'/*.class') as $class) {
	require_once($class);
}
//Load Hooks
foreach(glob(HOOK_PATH.'/*.hook') as $hook) {
	require_once($hook);
}
