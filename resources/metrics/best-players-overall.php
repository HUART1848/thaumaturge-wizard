<?php 

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();

$page->addValueToPage("<h1>Meilleurs joueurs tout formats confondus</h1>");
$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$page->getInstance()->render();

?>
