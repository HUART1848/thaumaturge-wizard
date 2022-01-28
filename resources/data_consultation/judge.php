<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

if (isset($_GET['id'])) {
    $backString = "<h1>Juge ID " . $_GET['id'] . "<h1>";
    $page->addValueToPage($backString);

    $pageContents = getJudgeDetails($_GET['id']);
    foreach ($pageContents as $row) {
        $page->addValueToPage($row['nom'] . " " .
                                $row['prenom'] . " " .
                                $row['ville'] . " " .
                                $row['pays'] . " " .
                                $row['experience']
                            );
    }

    $page->addValueToPage("<br />");
    $page->addValueToPage($page->makeLink("Retour aux juges", "judge.php", "./"));
} else {
    $page->addValueToPage("<h1>Juges</h1>");

    //$page->addKeyValueToPage("Duel 1", $page->makeLink("Détails", "duel.php?id=1", "./"));
    $pageContents = getJudgeList();
    foreach ($pageContents as $row) {
        $page->addKeyValueToPage($row['nom'] . " " .
                                    $row['prenom'],
                                    $page->makeLink("Détails", "judge.php?id=" . $row['id'],"./") . " " .
                                    $page->makeLink("Tournois", "tournament.php?idJuge=" . $row['id'], "./") . " " .
                                    $page->makeLink("Matches", "duel.php?idJuge=" . $row['id'], "./")
                                );
    }
}

$page->addValueToPage("<br />");
$page->addLinkToPage("Retour à l'index des données", "data_access.php", "../");

$page->getInstance()->render();

function getJudgeList() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
            SELECT Personne.nom, Personne.prenom, Juge.idPersonne
            FROM Juge
            INNER JOIN Personne ON Juge.idPersonne = Personne.id
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'prenom' => $row['prenom'],
                'id' => $row['idpersonne']
            ];
        }
        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get judge list: ' . $e->getMessage());
    }
}

function getJudgeDetails($id) {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
        SELECT Personne.nom, Personne.prenom, Juge.idPersonne, Juge.experience, Adresse.ville, Adresse.pays
            FROM Juge
            INNER JOIN Personne ON Juge.idPersonne = Personne.id
            INNER JOIN Adresse ON Personne.idAdresse = Adresse.id;
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'prenom' => $row['prenom'],
                'experience' => $row['experience'],
                'ville' => $row['ville'],
                'pays' => $row['pays'],
                'id' => $row['idpersonne']
            ];
        }

        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get judge: ' . $e->getMessage());
    }
}

?>
