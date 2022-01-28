<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Meilleurs joueurs par format</h1>");

if (isset($_GET['format'])) {
    $pageContent = getFormatScore($_GET['format']);
    foreach ($pageContent as $row) {
        $page->addValueToPage($row['prenom'] . " " . $row["nom"] . " : " . $row['score']);
    }
} else {
    die("Invalid query: no format in GET");
}

$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$page->getInstance()->render();

function getFormatScore($id) {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query("
            SELECT
                Personne.nom,
                Personne.prenom,
                Membre.numeroMembre,
                SUM(CASE WHEN Duel.idGagnant = Membre.idPersonne THEN 2
                        WHEN Duel.idGagnant IS NULL THEN 0
                        ELSE -2
                        END) AS score
            FROM Membre
            INNER JOIN Personne
                ON Personne.id = Membre.idPersonne
            INNER JOIN Duel
                ON Duel.idJoueurUn = Membre.idPersonne
                    OR Duel.idJoueurDeux = Membre.idPersonne
            INNER JOIN Tournoi
                ON Duel.idTournoi = Tournoi.id
            WHERE Tournoi.format = '" . $id . "'
            GROUP BY (Personne.nom, Personne.prenom, Membre.numeroMembre)
            ORDER BY score DESC;
            ");
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'prenom' => $row['prenom'],
                'score' => $row['score']
            ];
        }
        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get score list: ' . $e->getMessage());
    }
}

?>
