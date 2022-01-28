<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Meilleurs joueurs tout formats confondus</h1>");

$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$pageContent = getBestPlayers();
foreach ($pageContent as $row) {
    $page->addValueToPage($row['prenom'] . " " . $row["nom"] . " : " . $row['score']);
}

$page->getInstance()->render();

function getBestPlayers() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
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
            GROUP BY (Personne.nom, Personne.prenom, Membre.numeroMembre)
            ORDER BY score DESC;
            ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'prenom' => $row['prenom'],
                'score' => $row['score']
            ];
        }
        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get player list: ' . $e->getMessage());
    }
}

?>
