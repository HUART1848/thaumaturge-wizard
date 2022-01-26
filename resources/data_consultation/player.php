<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

if (!isset($_GET['id'])) {
    $page->addValueToPage("<h1>Joueurs</h1>");

    $page->addKeyValueToPage("Joueur 1", $page->makeLink("Détails", "player.php?id=1", "./"));
} else {
    $dataString = "<h1>Joueur ID " . $_GET['id'] . "<h1>";
    $page->addValueToPage($dataString);

    $page->addValueToPage($_GET['id']);
}

$page->addValueToPage("<br />");
$page->addLinkToPage("Retour à l'index des données", "data_access.php", "../");

$page->getInstance()->render();

?>
