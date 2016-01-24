<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>

<!-- Modal -->
<div id="userModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Register</h4>
      </div>
      <div class="modal-body">
	  <div class="col-xs-6 col-xs-offset-3">
	  <form id="register">
        <p><input type="text" class="form-control" placeholder="Username" id="username"></p>
		<p><sub class="unameerror"></sub></p>
		<p><input type="text" class="form-control" placeholder="Email" id="email"></p>
		<p><sub class="emailerror"></sub></p>
        <p><input type="password" class="form-control" placeholder="Password" id="password"></p>
		<p><sub class="passerror"></sub></p>
		<p><input type="submit" class="btn btn-info form-control" value="Register" id="register_button"></p>
		</form>
		<p class="text-center">By Registering you agree to Guild Emporium's Terms of Service</p>

	</div>
      </div>
      <div class="modal-footer" style="clear:both;">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<script>
$(document).ready(function () {
$('#register_button').click(function(e)
{
	var cont = true;
	e.preventDefault();
var username=$("#username").val();
var password=$("#password").val();
var email = $("#email").val();
var dataString = 'email='+email+'&username='+username+'&password='+password+'&process=register';
if(username == "") {
	$(".unameerror").html("<p class='alert alert-danger'>Username Cannot Be Empty</p>");
	var cont = false;
}
else {
	$(".unameerror").html("");
	var cont = true;
}
if(email == "") {
	$(".emailerror").html("<p class='alert alert-danger'>Email Cannot Be Empty</p>");
	var cont = false;
}
else {
	$(".emailerror").html("");
	var cont = true;
}
if(password == "") {
	$(".passerror").html("<p class='alert alert-danger'>Password Cannot Be Empty</p>");
	var cont = false;
}
else {
	$(".passerror").html("");
	var cont = true;
}
if(cont == true) {
$.ajax({
type: "POST",
url: "/core/functions.d/accounts.php",
data: dataString,
cache: false,
beforeSend: function(){ $("#register_button").val('Creating Account');},
success: function(data){
if(data == "ErrNo:105") {
	alert("Username in Use");
	$("#register_button").val("Create Account");
}
if(data == "ErrNo:106") {
	alert("Email In Use");
	$("#register_button").val("Create Account");
}
else {
alert(data);
}
}
}) 
}
});
});
</script>