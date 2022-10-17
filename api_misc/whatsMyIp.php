<?php

if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ip = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $ip = $_SERVER['REMOTE_ADDR'];
}


echo($ip);

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