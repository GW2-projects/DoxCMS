<div id="userModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Your Profile</h4>
      </div>
      <div class="modal-body">
	  <div class="col-xs-3">
	  <?php echo UserDetails(SessionID(), "gravatar"); ?>
	  </div>
	  <div class="col-xs-9">
	  <div class="panel panel-default">
		<div class="panel-heading">
		My Profile
		</div>
		<div class="panel-body">
		<li>Username: <?php echo UserDetails(SessionID(), "username"); ?></li>
		</div>
	</div>
	</div>
	<div class="col-xs-3">
	Quick Stats
	</div>

      </div>
      <div class="modal-footer" style="clear:both;">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>