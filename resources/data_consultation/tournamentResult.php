<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

if (isset($_GET['id'])) {
    $page->addValueToPage("<h1>Résultats du tournoi " . $_GET['id'] . "</h1>");

    //$page->addKeyValueToPage("Duel 1", $page->makeLink("Détails", "duel.php?id=1", "./"));
    $tournamentCancelled = getTournamentCancellation($_GET['id']);
    if ($tournamentCancelled) {
        $page->addValueToPage("<h2>Le tournoi est annulé.</h2>");
    } else {
        $pageContents = getTournamentResults($_GET['id']);
        foreach ($pageContents as $row) {
            $page->addKeyValueToPage($row['nom'] . " " .
                                        $row['format'] . " " .
                                        $row['dateHeureDebut'],
                                        $page->makeLink("Détails", "tournament.php?id=" . $row['id'],"./") . " " .
                                        $page->makeLink("Matches", "duel.php?idTournoi=" . $row['id'], "./") . " " .
                                        $page->makeLink("Résultats", "tournamentResult.php?id=" . $row['id'],"./")
                                    );
        }
    }
    $page->addValueToPage("<br />");
    $page->addLinkToPage("Retour à l'index des données", "data_access.php", "../");
    $page->getInstance()->render();
} else {
    die("Error: Unset tournament ID for results.");
}

function getTournamentCancellation($id) {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $data;
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
            SELECT tournoi_annule(' . $id . ');
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $data = $row['tournoi_annule'];
        }
        return $data;
    } catch(PDOException $e) {
        die('Unable to get result list: ' . $e->getMessage());
    }
}

function getTournamentResults($id) {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
            SELECT nom, prenom, numeroMembre, score FROM classement_tournoi(' . $id . ');
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'prenom' => $row['prenom'],
                'numeroMembre' => $row['numeromembre'],
                'score' => $row['score']
            ];
        }
        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get result list: ' . $e->getMessage());
    }
}

?>
