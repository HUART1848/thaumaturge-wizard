<?php
require_once("./page-factory.php");

$metrics_page = new PageFactory();
$metrics_page->addKeyValueToPage("bruh", "coucou");

$ok = $metrics_page->getInstance();
var_dump($ok);
?>
