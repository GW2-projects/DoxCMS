<?php
$api_member_roster = "https://guildemporium.net/api.php?query=members&apikey=10123";
$file_contents = @file_get_contents($api_member_roster); // omit warnings
$memberRoster = json_decode($file_contents, true);
echo "Members Pulled with API";
try {
foreach($memberRoster as $member) {
	echo "<br />".$member;
}
}
catch(Exception $e) {
	echo $e->getMessage();
}

