<?php 
if(SessionLive() == false) { 
print_r($_SESSION);
?>
<form>
<div class="text-center col-xs-6 col-xs-offset-3">
<p><input class="form-control" type="text" placeholder="Username" id="username_login"></p>
<p><sub class="unameerror"></sub></p>
<p><input class="form-control" type="password" placeholder="Password" id="password_login"></p>
<p><sub class="passerror"></sub></p>
<p><input type="submit" class="btn btn-info form-control" value="Login" id="login_button"></p>
</form>
</div>

<script>
$(document).ready(function () {
$('#login_button').click(function(e)
{
	var cont = true;
	e.preventDefault();
var username=$("#username_login").val();
var password=$("#password_login").val();
var dataString = 'username='+username+'&password='+password+'&process=login';
if(username == "") {
	$(".unameerror").html("<p class='alert alert-danger'>Username Cannot Be Empty</p>");
	var cont = false;
}
else {
	$(".unameerror").html("");
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
beforeSend: function(){ $("#login_button").val('Validating Login');},
success: function(data){
alert(data);

}
}) 
}
});
});
</script>
<?php } else {
	?>
	Logged In
	<?php
}