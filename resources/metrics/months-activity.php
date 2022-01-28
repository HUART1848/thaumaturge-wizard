<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Mois de l'année les plus actifs</h1>");
$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$pageContent = getMonthActivity();
foreach ($pageContent as $row) {
    $page->addValueToPage($row["mois"] . " : " . $row["nbtournois"] );
}

$page->getInstance()->render();

function getMonthActivity() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query("
        SELECT DATE_TRUNC('month',tournoi.dateheuredebut) as mois, COUNT(id) as nbtournois
        FROM tournoi
        GROUP BY mois
        ORDER BY nbtournois desc
        ");
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'mois' => $row['mois'],
                'nbtournois' => $row['nbtournois']
            ];
        }
        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get player list: ' . $e->getMessage());
    }
}

?>
