 
 <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a data-toggle="modal" data-target="#userModal">My Profile</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#" id="logout_button">Logout</a></li>
			
<script>
$(document).ready(function () {
$('#logout_button').click(function(e)
{
var dataString = "process=logout";
$.ajax({
type: "POST",
url: "/core/functions.d/accounts.php",
data: dataString,
cache: false,
success: function(data){
location.reload();

} 
});
});
});
</script>