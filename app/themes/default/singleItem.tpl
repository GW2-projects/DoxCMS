<?php
function LoadSingleNav($pagelink, $target, $title) {
	?>
<li><a href="<?php echo $pagelink; ?>" target="<?php echo $target; ?>"><?php echo $title; ?></a></li>
	<?php
}