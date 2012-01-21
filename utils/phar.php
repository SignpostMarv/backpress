<?php
date_default_timezone_set('Europe/London');
echo 'Building full phar...',"\n";
$phar = new Phar('../build/backpress-full.phar');
$phar->buildFromDirectory('../', '/(includes|schemas)\/.*\.php$/');
$phar->compress(Phar::GZ);
?>