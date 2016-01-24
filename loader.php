<?php
session_start();
?>

<!--Everything above will be migrated into a plugin-->
<?php
LoadPlugins();
LoadActiveTheme();
?>
<title><?php echo SITE_NAME." - ".TITLE; ?></title>