<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Tournois les plus populaires</h1>");
$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$pageContent = getTournamentsPopularity();
foreach ($pageContent as $row) {
    $page->addValueToPage($row["nbParticipants"] . " participants: " . $row["nom"] );
}

$page->getInstance()->render();

function getTournamentsPopularity() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
        SELECT tournoi.nom, COUNT(tournoimembreparticipant.idtournoi) as nbParticipants
        FROM tournoi
        INNER JOIN tournoimembreparticipant on tournoi.id = tournoimembreparticipant.idtournoi
        GROUP BY tournoi.nom
        ORDER BY nbParticipants DESC
        ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'nom' => $row['nom'],
                'nbParticipants' => $row['nbparticipants']
            ];
        }
        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get player list: ' . $e->getMessage());
    }
}

?>
