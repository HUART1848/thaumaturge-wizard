<?php

require_once(__DIR__ . "/page-factory.php");

$features = array(
    "Métriques" => "metrics.php",
    "Données des membres et des tournois" => "data_access.php"
);

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Thaumaturge Wizard</h1>");
$page->addValueToPage("<h2>Système de gestion de tournois Magic: The Gathering</h2>");
$page->addValueToPage("<h3>Portail utilisateur</h3>");

$page->addValueToPage("Accès vers les fonctionnalités:");
$page->addLinkListToPage($features, "");

$page->getInstance()->render();

?>
