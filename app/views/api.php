<?php
$api_member_roster = "https://guildemporium.net/api.php?query=members";
$file_contents = @file_get_contents($api_member_roster); // omit warnings
$memberRoster = json_decode($file_contents, true);
echo "Members Pulled with API";
foreach($memberRoster as $member) {
	echo "<br />".$member;
}

