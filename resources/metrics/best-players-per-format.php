<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Meilleurs joueurs par format</h1>");
$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$page->getInstance()->render();

?>
