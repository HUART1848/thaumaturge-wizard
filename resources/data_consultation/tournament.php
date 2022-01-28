<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

if (isset($_GET['id'])) {
    $backString = "<h1>Tournoi ID " . $_GET['id'] . "<h1>";
    $page->addValueToPage($backString);

    $pageContents = getTournamentDetails($_GET['id']);
    foreach ($pageContents as $row) {
        $page->addValueToPage($row['nom'] . " " .
                                $row['dateHeureDebut'] . " " .
                                $row['dateHeureFin'] . " " .
                                $row['delaiAdmin'] . " " .
                                $row['format'] . " " .
                                $row['echelleNbJoueur'] . " " .
                                $row['ville'] . " " .
                                $row['pays'] . " " .
                                $row['nomOrg'] . " " .
                                $row['prenomOrg']
                                );
    }
    unset($pageContents);

    $page->addValueToPage("<br /><h2>Liste des joueurs</h2>");
    $pageContents = getTournamentPlayers($_GET['id']);
    foreach ($pageContents as $row) {
        $page->addValueToPage($row['nom'] . " " .
                                $row['prenom'] . " " .
                                $row['numeroJoueur']
                                );
    }

    $page->addValueToPage("<br />");
    $page->addValueToPage($page->makeLink("Retour aux tournois", "tournament.php", "./"));
} else {
    $page->addValueToPage("<h1>Tournois</h1>");

    //$page->addKeyValueToPage("Duel 1", $page->makeLink("Détails", "duel.php?id=1", "./"));
    $pageContents = getTournamentList();
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

function getTournamentList() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
            SELECT nom, format, dateHeureDebut, id
            FROM Tournoi
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'format' => $row['format'],
                'dateHeureDebut' => $row['dateheuredebut'],
                'id' => $row['id']
            ];
        }
        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get player list: ' . $e->getMessage());
    }
}



function getTournamentDetails($id) {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
        SELECT
            Tournoi.nom,
            dateHeureDebut,
            dateHeureFin,
            delaiAdmin,
            format,
            echelleNbJoueur,
            Adresse.ville,
            Adresse.pays,
            Personne.nom AS organisateurNom,
            Personne.prenom AS organisateurPrenom
        FROM Tournoi
        INNER JOIN Adresse
            ON Tournoi.idAdresse = Adresse.id
        INNER JOIN TournoiMembreOrganisateur
            ON Tournoi.id = TournoiMembreOrganisateur.idTournoi
        INNER JOIN Personne
            ON TournoiMembreOrganisateur.idOrg = Personne.id
        WHERE Tournoi.id = ' . $id
        );
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'dateHeureDebut' => $row['dateheuredebut'],
                'dateHeureFin' => $row['dateheurefin'],
                'delaiAdmin' => $row['delaiadmin'],
                'format' => $row['format'],
                'echelleNbJoueur' => $row['echellenbjoueur'],
                'ville' => $row['ville'],
                'pays' => $row['pays'],
                'nomOrg' => $row['organisateurnom'],
                'prenomOrg' => $row['organisateurprenom']
            ];
        }

        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get tournament: ' . $e->getMessage());
    }
}

function getTournamentPlayers($id) {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
        SELECT prenom, Personne.nom, numeroMembre
            FROM Tournoi
            INNER JOIN TournoiMembreParticipant
                ON Tournoi.id = TournoiMembreParticipant.idTournoi
            INNER JOIN Membre
                ON TournoiMembreParticipant.idMembre = Membre.idPersonne
            INNER JOIN Personne
                ON Personne.id = Membre.idPersonne
            WHERE Tournoi.id = ' . $id
        );
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'prenom' => $row['prenom'],
                'numeroJoueur' => $row['numeromembre']
            ];
        }

        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get data: ' . $e->getMessage());
    }
}

?>
