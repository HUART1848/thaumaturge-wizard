<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

if (isset($_GET['id']) && isset($_GET['idManche']) && isset($_GET['idTournoi'])) {
    $backString = "<h1>Duel ID " . $_GET['id'] . "<h1>";
    $page->addValueToPage($backString);

    $pageContents = getDuelDetails($_GET['id'], $_GET['idManche'], $_GET['idTournoi']);
    foreach ($pageContents as $row) {
        $page->addValueToPage($row['idDuel'] . " " .
                                $row['idManche'] . " " .
                                $row['tournoiNom'] . " " .
                                $row['J1Nom'] . " " .
                                $row['J1Prenom'] . " " .
                                $row['J2Nom'] . " " .
                                $row['J2Prenom'] . " " .
                                $row['JugeNom'] . " " .
                                $row['JugePrenom'] . " " .
                                $row['Gagnant']);
    }

    $page->addValueToPage("<br />");
    $page->addValueToPage($page->makeLink("Retour aux duels", "duel.php", "./"));
} else if (isset($_GET['idJoueur'])) {
    $page->addValueToPage("<h1>Duels du joueur " . $_GET['idJoueur'] . "</h1>");

    $pageContents = getDuelsByPlayer($_GET['idJoueur']);
    foreach ($pageContents as $row) {
        $page->addKeyValueToPage($row['idDuel'] . " " .
                                    $row['idManche'] . " " .
                                    $row['tournoiNom'] . " " .
                                    $row['J1Nom'] . " " .
                                    $row['J2Nom'] . " " .
                                    $row['JugeNom'],
            $page->makeLink("Détails", "duel.php?id=" . $row['idDuel'] .
                                "&idManche=" . $row['idManche'] .
                                "&idTournoi=" . $row['idTournoi'],
                                "./"));
    }
} else if (isset($_GET['idJuge'])) {
    $page->addValueToPage("<h1>Duels du juge " . $_GET['idJuge'] . "</h1>");

    $pageContents = getDuelsByJudge($_GET['idJuge']);
    foreach ($pageContents as $row) {
        $page->addKeyValueToPage($row['idDuel'] . " " .
                                    $row['idManche'] . " " .
                                    $row['tournoiNom'] . " " .
                                    $row['J1Nom'] . " " .
                                    $row['J2Nom'] . " " .
                                    $row['JugeNom'],
            $page->makeLink("Détails", "duel.php?id=" . $row['idDuel'] .
                                "&idManche=" . $row['idManche'] .
                                "&idTournoi=" . $row['idTournoi'],
                                "./"));
    }

} else if (isset($_GET['idTournoi'])) {
    $page->addValueToPage("<h1>Duels du tournoi " . $_GET['idTournoi'] . "</h1>");

    $pageContents = getDuelsByTournament($_GET['idTournoi']);
    foreach ($pageContents as $row) {
        $page->addKeyValueToPage($row['idDuel'] . " " .
                                    $row['idManche'] . " " .
                                    $row['tournoiNom'] . " " .
                                    $row['J1Nom'] . " " .
                                    $row['J2Nom'] . " " .
                                    $row['JugeNom'],
            $page->makeLink("Détails", "duel.php?id=" . $row['idDuel'] .
                                "&idManche=" . $row['idManche'] .
                                "&idTournoi=" . $row['idTournoi'],
                                "./"));
    }
} else {
    $page->addValueToPage("<h1>Duels</h1>");

    //$page->addKeyValueToPage("Duel 1", $page->makeLink("Détails", "duel.php?id=1", "./"));
    $pageContents = getDuelList();
    foreach ($pageContents as $row) {
        $page->addKeyValueToPage($row['idDuel'] . " " .
                                    $row['idManche'] . " " .
                                    $row['tournoiNom'] . " " .
                                    $row['J1Nom'] . " " .
                                    $row['J2Nom'] . " " .
                                    $row['JugeNom'],
            $page->makeLink("Détails", "duel.php?id=" . $row['idDuel'] .
                                "&idManche=" . $row['idManche'] .
                                "&idTournoi=" . $row['idTournoi'],
                                "./"));
    }
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
                'idManche' => $row['idmanche'],
                'idTournoi' => $row['idtournoi'],
                'tournoiNom' => $row['tournoinom'],
                'J1Nom' => $row['j1nom'],
                'J2Nom' => $row['j2nom'],
                'JugeNom' => $row['jugenom']
            ];
        }
        return $duelList;
    } catch(PDOException $e) {
        die('Unable to get duel list: ' . $e->getMessage());
    }
}

function getDuelsByPlayer($id) {
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
            INNER JOIN Tournoi ON duel.idTournoi = Tournoi.id
            WHERE duel.idJoueurUn = ' . $id . '
                OR duel.idJoueurDeux = ' . $id . ';
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $duelList[] = [
                'idDuel' => $row['id'],
                'idManche' => $row['idmanche'],
                'idTournoi' => $row['idtournoi'],
                'tournoiNom' => $row['tournoinom'],
                'J1Nom' => $row['j1nom'],
                'J2Nom' => $row['j2nom'],
                'JugeNom' => $row['jugenom']
            ];
        }
        return $duelList;
    } catch(PDOException $e) {
        die('Unable to get duel list: ' . $e->getMessage());
    }
}

function getDuelsByJudge($id) {
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
            INNER JOIN Tournoi ON duel.idTournoi = Tournoi.id
            WHERE duel.idJuge = ' . $id . ';
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $duelList[] = [
                'idDuel' => $row['id'],
                'idManche' => $row['idmanche'],
                'idTournoi' => $row['idtournoi'],
                'tournoiNom' => $row['tournoinom'],
                'J1Nom' => $row['j1nom'],
                'J2Nom' => $row['j2nom'],
                'JugeNom' => $row['jugenom']
            ];
        }
        return $duelList;
    } catch(PDOException $e) {
        die('Unable to get duel list: ' . $e->getMessage());
    }
}

function getDuelsByTournament($id) {
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
            INNER JOIN Tournoi ON duel.idTournoi = Tournoi.id
            WHERE duel.idTournoi = ' . $id . ';
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $duelList[] = [
                'idDuel' => $row['id'],
                'idManche' => $row['idmanche'],
                'idTournoi' => $row['idtournoi'],
                'tournoiNom' => $row['tournoinom'],
                'J1Nom' => $row['j1nom'],
                'J2Nom' => $row['j2nom'],
                'JugeNom' => $row['jugenom']
            ];
        }
        return $duelList;
    } catch(PDOException $e) {
        die('Unable to get duel list: ' . $e->getMessage());
    }
}

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
                duel.idTournoi,
                tournoi.nom AS TournoiNom,
                detailsJ1.nom AS J1Nom,
                detailsJ1.prenom AS J1Prenom,
                detailsJ2.nom AS J2Nom,
                detailsJ2.prenom AS J2Prenom,
                detailsJuge.nom AS jugeNom,
                detailsJuge.prenom AS jugePrenom,
                CASE
                    WHEN idGagnant IS NULL THEN \'Egalité\'
                    WHEN idGagnant = idJoueurUn THEN \'Joueur 1\'
                    WHEN idGagnant = idJoueurDeux THEN \'Joueur 2\'
                END AS Gagnant
            FROM Duel
            INNER JOIN Membre j1 ON idJoueurUn = j1.idPersonne
            INNER JOIN Membre j2 ON idJoueurDeux = j2.idPersonne
            INNER JOIN Juge ON idJuge = juge.idPersonne
            INNER JOIN Personne detailsJ1 ON idJoueurUn = detailsJ1.id
            INNER JOIN Personne detailsJ2 ON idJoueurDeux = detailsJ2.id
            INNER JOIN Personne detailsJuge ON idJuge = detailsJuge.id
            INNER JOIN Tournoi ON duel.idTournoi = Tournoi.id
            WHERE duel.id = ' . $idDuel .'
                AND duel.idManche = ' . $idManche . '
                AND duel.idTournoi = ' . $idTournoi . ';
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $duelList[] = [
                'idDuel' => $row['id'],
                'idManche' => $row['idmanche'],
                'idTournoi' => $row['idtournoi'],
                'tournoiNom' => $row['tournoinom'],
                'J1Nom' => $row['j1nom'],
                'J1Prenom' => $row ['j1prenom'],
                'J2Nom' => $row['j2nom'],
                'J2Prenom' => $row['j2prenom'],
                'JugeNom' => $row['jugenom'],
                'JugePrenom' => $row['jugeprenom'],
                'Gagnant' => $row['gagnant']
            ];
        }

        return $duelList;
    } catch(PDOException $e) {
        die('Unable to get duel: ' . $e->getMessage());
    }
}

?>