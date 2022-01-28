<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Performance personnelle par format</h1>");
$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

if (isset($_GET["id"])) {

} else {
    $page->addValueToPage("<h2>Joueurs</h2>");
    $pageContent = getPlayerList();
    foreach ($pageContent as $row) {
        $page->addKeyValueToPage($row['nom'] . " " .
                                    $row['prenom'],
                                    $page->makeLink("Détails", "personal-performance.php?id=" . $row['id'], "./")
                                );
    }
}

function getPlayerList() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
            SELECT Personne.nom, Personne.prenom, Membre.idPersonne
            FROM Membre
            INNER JOIN Personne ON Membre.idPersonne = Personne.id
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
        die('Unable to get player list: ' . $e->getMessage());
    }
}

function getPlayerPerformance() {

}

$page->getInstance()->render();
    
?>
