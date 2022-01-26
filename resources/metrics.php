<?php
require_once("page-factory.php");

$metrics_page = new PageFactory();
$metrics_page->addKeyValueToPage("bruh", "coucou");

$bruh = $metrics_page->getInstance();
$bruh->render();
?>
