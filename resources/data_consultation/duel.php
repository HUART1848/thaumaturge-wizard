<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

if (!isset($_GET['id'])) {
    $page->addValueToPage("<h1>Duels</h1>");

    //$page->addKeyValueToPage("Duel 1", $page->makeLink("Détails", "duel.php?id=1", "./"));
    $pageContents = getDuelList();
    foreach ($pageContents as $row) {
        $page->addKeyValueToPage($row['id'] . $row['idManche'] . $row['TournoiNom'] . $row['J1Nom'] . $row['J2Nom'] . $row['JugeNom'],
            $page->makeLink("Détails", "duel.php?id=" . $row['id'] . "&idManche=" . $row['idManche'] . "&idTournoi=" . $row['idTournoi']));
    }
} else {
    $dataString = "<h1>Duel ID " . $_GET['id'] . "<h1>";
    $page->addValueToPage($dataString);

    $page->addValueToPage($_GET['id']);
}

$page->addValueToPage("<br />");
$page->addLinkToPage("Retour à l'index des données", "data_access.php", "../");

$page->getInstance()->render();

function getDuelList() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $duelList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
            SELECT duel.id,
                duel.idManche,
                duel.idTournoi,
                tournoi.nom AS TournoiNom,
                detailsJ1.nom AS J1Nom,
                detailsJ2.nom AS J2Nom,
                detailsJuge.nom AS jugeNom
            FROM Duel
            INNER JOIN Personne detailsJ1 ON duel.idJoueurUn = detailsJ1.id
            INNER JOIN Personne detailsJ2 ON idJoueurDeux = detailsJ2.id
            INNER JOIN Personne detailsJuge ON idJuge = DetailsJuge.id
            INNER JOIN Tournoi ON duel.idTournoi = Tournoi.id;
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $duelList[] = [
                'idDuel' => $row['id'],
                'idManche' => $row['idManche'],
                'idTournoi' => $row['idTournoi'],
                'tournoiNom' => $row['TournoiNom'],
                'J1Nom' => $row['J1Nom'],
                'J2Nom' => $row['J2Nom'],
                'JugeNom' => $row['jugeNom']
            ];
        }
        return $duelList;
    } catch(PDOException $e) {
        die('Unable to get duel list: ' . $e->getMessage());
    }
}

function getDuelsByPlayer($id) {}

function getDuelsByJudge($id) {}

function getDuelsByTournament($id) {}

function getDuelDetails($idDuel, $idManche, $idTournoi) {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $duelList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
            SELECT duel.id,
                duel.idManche,
                duel.idTournoi
                tournoi.nom AS TournoiNom
                detailsJ1.nom AS J1Nom,
                detailsJ1.prenom AS J1Prenom,
                detailsJ2.nom AS J2Nom,
                detailsJ2.prenom AS J2Prenom,
                detailsJuge.nom AS jugeNom,
                detailsJuge.prenom AS jugePrenom,
                CASE
                    WHEN idGagnant IS NULL THEN "Egalité"
                    WHEN idGagnant IS idJoueurUn THEN "Joueur 1"
                    WHEN idGagnant IS idJoueurDeux THEN "Joueur 2"
                END AS Gagnant
            FROM Duel
            INNER JOIN Membre ON idJoueurUn = Membre.idPersonne AS j1
            INNER JOIN Membre ON idJoueurDeux = Membre.idPersonne AS j2
            INNER JOIN Juge ON idJuge = Juge.idPersonne AS juge
            INNER JOIN Personne ON idJoueurUn = Personne.id AS detailsJ1
            INNER JOIN Personne ON idJoueurDeux = Personne.id AS detailsJ2
            INNER JOIN Personne ON idJuge = Personne.id AS detailsJuge
            INNER JOIN Tournoi ON duel.idTournoi = Tournoi.id
            WHERE duel.id = ' . $idDuel .'
                AND duel.idManche = ' . $idManche . '
                AND duel.idTournoi = ' . $idTournoi . ';
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $duelList[] = [
                'idDuel' => $row['id'],
                'idManche' => $row['idManche'],
                'idTournoi' => $row['idTournoi'],
                'tournoiNom' => $row['TournoiNom'],
                'J1Nom' => $row['J1Nom'],
                'J1Prenom' => $row ['J1Prenom'],
                'J2Nom' => $row['J2Nom'],
                'J2Prenom' => $row['J2Prenom'],
                'JugeNom' => $row['jugeNom'],
                'JugePreom' => $row['jugePrenom'],
                'Gagnant' => $row['Gagnant']
            ];

        }
    } catch(PDOException $e) {
        die('Unable to get duel: ' . $e->getMessage());
    }
}

?>