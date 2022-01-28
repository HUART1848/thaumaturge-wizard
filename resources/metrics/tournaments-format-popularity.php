<?php

require_once(__DIR__ . "/../page-factory.php");

$page = new PageFactory();
$page->setHttpCode(HttpCodes::REQUEST_VALID);

$page->addValueToPage("<h1>Formats de tournois les plus populaires</h1>");
$page->addLinkToPage("Retour aux métriques", "metrics.php", "../");

$pageContent = getTournamentsFormatPopularity();
foreach ($pageContent as $row) {
    $page->addValueToPage($row["format"] . " : " . $row["occurence"] );
}

$page->getInstance()->render();

function getTournamentsFormatPopularity() {
    try {
        $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=postgres;', 'root', 'root', [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, //set PDO to throw exceptions on error
            PDO::ATTR_ORACLE_NULLS => PDO::NULL_NATURAL, //NULL values are returned as PHP null's
        ]);
        $dataList = [];
        $result = $dbh->exec('SET search_path TO wizard');
        $stmt = $dbh->query('
        SELECT format, COUNT(id) as occurence
        FROM tournoi
        GROUP BY format
        ORDER BY occurence DESC
        ');
        while ($row = $stmt->fetch(\PDO::FETCH_ASSOC)) {
            $dataList[] = [
                'format' => $row['format'],
                'occurence' => $row['occurence']
            ];
        }
        return $dataList;
    } catch(PDOException $e) {
        die('Unable to get player list: ' . $e->getMessage());
    }
}

?>
