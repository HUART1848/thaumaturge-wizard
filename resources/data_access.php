<?php

require_once(__DIR__ . "/page-factory.php");

$metrics_path = "data_consultation/";
$metrics = array(
    "Juges" => "judge.php",
    "Joueurs" => "player.php",
    "Tournois" => "tournament.php",
    "Duels" => "duel.php"
);

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Consultation des données</h1>");
$page->addValueToPage("<p>Vous trouverez ci-dessous la liste des données du tournoi.");

$page->addLinkToPage("Retour à l'accueil", "index.php", "");
$page->addLinkListToPage($metrics, $metrics_path);

$page->getInstance()->render();

?>