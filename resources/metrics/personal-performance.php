<?php 

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();

$page->addValueToPage("<h1>Performance personnelle par format</h1>");
$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$page->getInstance()->render();

?>
