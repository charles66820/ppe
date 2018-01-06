<?php
// connection a la base d donnée
$bdd = new PDO('mysql:host=127.0.0.1;dbname=webdata', 'root', '');

//test si la connexion fonctionne
if (!$bdd){
  die("connection à la db a échouer");
} else {

  //variable
  if (isset($_GET["limit"])) {
    $limit = $_GET["limit"];//integer
  }else {
    $limit = 0;
  }
  if (isset($_GET["colonne"])){
    $colonne = $_GET["colonne"];//string
  }else {
    $sql = "SELECT * FROM champions LIMIT 20 OFFSET $limit";
  }
  if (isset($_GET["ordre"])) {
    $ordre = $_GET["ordre"];//boolean
  }else {
    $ordre = 1;
  }

  //ordre
  if (isset($_GET["colonne"])) {
    if ($colonne == "edition") {//edition pour le cas spésifique de l'année aprée le pays où a lieu les jeux
      if ($ordre) {
        $sql = "SELECT * FROM champions ORDER BY SUBSTR(edition, -4) ASC LIMIT 20 OFFSET $limit";
      }else {
        $sql = "SELECT * FROM champions ORDER BY SUBSTR(edition, -4) DESC LIMIT 20 OFFSET $limit";
      }
    }else {
      if ($ordre) {
        $sql = "SELECT * FROM champions ORDER BY $colonne ASC LIMIT 20 OFFSET $limit";
      }else {
        $sql = "SELECT * FROM champions ORDER BY $colonne DESC LIMIT 20 OFFSET $limit";
      }
    }
  }

  //lecture de la taple est création du tableau
  foreach ($bdd->query($sql) as $row) {
    echo '<tr>
    <td>'.$row["nom"].'</td><td>'.$row["nationaliter"].'</td><td>'.$row["titre"].'</td><td>'.$row["edition"].'</td><td>'.$row["type"].'</td>
    </tr>';
  }
}
?>
