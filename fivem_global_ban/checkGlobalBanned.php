<?php

$db_host = "localhost";
$db_username = "USERNAME";  
$db_password = "PASSWORD";
$db_database = "DATABASE";

$conn = new mysqli($db_host, $db_username, $db_password, $db_database);

if ($conn->connect_error) {
  die("[MYSQL] Connection failed: " . $conn->connect_error);
}

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
ini_set('max_execution_time', 300);

error_reporting(E_ERROR | E_PARSE);

   if( $_GET["check"] ) {
		if( $_GET["license"] ) {
			$forbehidden = array("'", '"', "-", "[", "@", "!", "#", "$", "%", "^", "&", "*", "(", ")", "<", ">", "?", "/", "|", "}", "{", "~", "]");
			foreach($forbehidden as $checked) {
				if (strpos($_GET['check'], $checked) !== false) {
					echo("DONT TRY MYSQL INJECTIONS :)");
					return;
				}
			}
			
			foreach($forbehidden as $checked2) {
				if (strpos($_GET['license'], $checked2) !== false) {
					echo("DONT TRY MYSQL INJECTIONS :)");
					return;
				}
			}
			
			$getBans = "SELECT * FROM `global_ban` WHERE `".$_GET['check']."` = '". $_GET['license'] ."';";
			$result = $conn->query($getBans);
			if ($result->num_rows > 0) {
				echo("1");
			} else {
				echo("2");
			}

			$conn->close();			
		}
   }
   
   /*
   https://example.com/checkGlobalBanned.php?check=name&license=test
   */
   
?>

<?php /*

=~=~=~=~=~=~=~=~=~=~=~=~=~=~=
---------> Credits <---------

Created by:    zImSkillz
Discord:       zImSkillz#0001
GitHub:        https://github.com/zImSkillz
LinkTree:      https://linktr.ee/zimskillz
Donation:      https://prepaid-host.com/en/donate/spley

---------> Credits <---------
=~=~=~=~=~=~=~=~=~=~=~=~=~=~=

*/ ?>