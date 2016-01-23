<!-- Wrap all page content here -->
<div id="wrap">  
  <!-- Begin page content -->
  <div class="container">
<!--Work Goes After Here-->
<div class="col-xs-8 col-xs-offset-1">
	<div class="panel panel-default">
		<div class="panel-heading"><p class="title"></p>
				</div>
		<div class="panel-body">
		<?php LoadView(); ?>
		</div>
	</div>
</div>
<div class="col-xs-3">
<div class="alert alert-success">Modules Coming Soon</div>
</div>
  </div>
</div>

<script>
  $(document).ready(function(){
   $(".title").html("<?php echo TITLE; ?>");
  });
</script>


