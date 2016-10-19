<?php
// for mobile
// $db = new PDO('mysql:host=localhost;dbname=information_schema;charset=utf8','toky2812','toky631227');
// set upPDO
// for local
$db = new PDO('mysql:host=localhost;dbname=toky2812_mobile;charset=utf8','toky2812','toky631227');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
?>