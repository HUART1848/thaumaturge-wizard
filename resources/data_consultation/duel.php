<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

if (!isset($_GET['id'])) {
    $page->addValueToPage("<h1>Duels</h1>");

    $page->addKeyValueToPage("Duel 1", $page->makeLink("Détails", "duel.php?id=1", "./"));
} else {
    $dataString = "<h1>Duel ID " . $_GET['id'] . "<h1>";
    $page->addValueToPage($dataString);

    $page->addValueToPage($_GET['id']);
}

$page->addValueToPage("<br />");
$page->addLinkToPage("Retour à l'index des données", "data_access.php", "../");

$page->getInstance()->render();

?>