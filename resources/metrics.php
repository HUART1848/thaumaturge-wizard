<?php

require_once(__DIR__ . "/page-factory.php");

$metrics_path = "metrics/";
$metrics = array(
    "Performance personnelle par format" => "personal-performance.php",
    "Meilleurs joueurs par format" => "best-players-per-format.php",
    "Meilleurs joueurs tout formats confondus" => "best-players-overall.php",
    "Formats de tournois les plus populaires" => "tournaments-format-popularity.php",
    "Mois de l'année les plus actifs" => "months-activity.php",
    "Tournois les plus populaires" => "tournaments-popularity.php"
);

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Métriques</h1>");
$page->addValueToPage("<p>Vous trouverez ci-dessous la liste des métriques.");

$page->addLinkToPage("Retour à l'accueil", "index.php", "");
$page->addLinkListToPage($metrics, $metrics_path);

$page->getInstance()->render();

?>
