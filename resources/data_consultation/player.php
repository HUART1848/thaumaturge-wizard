<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

if (isset($_GET['id'])) {
    $backString = "<h1>Joueur ID " . $_GET['id'] . "<h1>";
    $page->addValueToPage($backString);

    $pageContents = getPlayerDetails($_GET['id']);
    foreach ($pageContents as $row) {
        $page->addValueToPage($row['nom'] . " " .
                                $row['prenom'] . " " .
                                $row['ville'] . " " .
                                $row['pays'] . " " .
                                $row['numeroJoueur']
                                );
    }

    $page->addValueToPage("<br />");
    $page->addValueToPage($page->makeLink("Retour aux joueurs", "player.php", "./"));
} else {
    $page->addValueToPage("<h1>Joueurs</h1>");

    //$page->addKeyValueToPage("Duel 1", $page->makeLink("Détails", "duel.php?id=1", "./"));
    $pageContents = getPlayerList();
    foreach ($pageContents as $row) {
        $page->addKeyValueToPage($row['nom'] . " " .
                                    $row['prenom'],
                                    $page->makeLink("Détails", "player.php?id=" . $row['id'],"./") . " " .
                                    $page->makeLink("Tournois", "tournament.php?idJoueur=" . $row['id'], "./") . " " .
                                    $page->makeLink("Matches", "duel.php?idJoueur=" . $row['id'], "./")
                                );
    }
}

$page->addValueToPage("<br />");
$page->addLinkToPage("Retour à l'index des données", "data_access.php", "../");

$page->getInstance()->render();

function getPlayerList() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $playerList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
            SELECT Personne.nom, Personne.prenom, Membre.idPersonne
            FROM Membre
            INNER JOIN Personne ON Membre.idPersonne = Personne.id
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $playerList[] = [
                'nom' => $row['nom'],
                'prenom' => $row['prenom'],
                'id' => $row['idpersonne']
            ];
        }
        return $playerList;
    } catch(PDOException $e) {
        die('Unable to get player list: ' . $e->getMessage());
    }
}

function getPlayerDetails($id) {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $playerList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
        SELECT Personne.nom, Personne.prenom, Adresse.ville, Adresse.pays, Membre.idPersonne, Membre.numeroMembre
            FROM Membre
            INNER JOIN Personne ON Membre.idPersonne = Personne.id
            INNER JOIN Adresse ON Personne.idAdresse = Adresse.id
            WHERE Membre.idPersonne = ' . $id
        );
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $playerList[] = [
                'nom' => $row['nom'],
                'prenom' => $row['prenom'],
                'ville' => $row['ville'],
                'pays' => $row['pays'],
                'numeroJoueur' => $row['numeromembre'],
                'id' => $row['idpersonne']
            ];
        }

        return $playerList;
    } catch(PDOException $e) {
        die('Unable to get player: ' . $e->getMessage());
    }
}

?>
