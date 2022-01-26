<?php 

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();

$page->addValueToPage("<h1>Tournois les plus populaires</h1>");
$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$page->getInstance()->render();

?>
