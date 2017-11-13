<?php
// connection a la base d donnée
$conn = mysqli_connect('localhost', 'root', '', 'webdata');

if (!$conn){
  $conn = mysqli_connect('localhost:8080', 'root', '', 'webdata');
}else if (!$conn){
  die("connection à la db a échouer : ".mysqli_connect_error());
}else {

  //variable
  if (isset($_GET["limit"])) {
    $limit = $_GET["limit"];//integer
  }else {
    $limit = 0;
  }
  if (isset($_GET["colonne"])){
    $colonne = $_GET["colonne"];//string
  }else {
    $sql = "SELECT * FROM champions LIMIT 10 OFFSET $limit";
  }
  if (isset($_GET["ordre"])) {
    $ordre = $_GET["ordre"];//boolean
  }else {
    $ordre = 1;
  }

  //ordre
  if (isset($_GET["colonne"])) {
    if ($colonne == "edition") {
      if ($ordre) {
        $sql = "SELECT * FROM champions ORDER BY SUBSTR(edition, -4) ASC LIMIT 10 OFFSET $limit";
      }else {
        $sql = "SELECT * FROM champions ORDER BY SUBSTR(edition, -4) DESC LIMIT 10 OFFSET $limit";
      }
    }else {
      if ($ordre) {
        $sql = "SELECT * FROM champions ORDER BY $colonne ASC LIMIT 10 OFFSET $limit";
      }else {
        $sql = "SELECT * FROM champions ORDER BY $colonne DESC LIMIT 10 OFFSET $limit";
      }
    }
  }

  //sql
  $result = mysqli_query($conn, $sql);
  while ($row = mysqli_fetch_assoc($result)){
    echo '<tr>
    <td>'.$row["nom"].'</td><td>'.$row["nationaliter"].'</td><td>'.$row["titre"].'</td><td>'.$row["edition"].'</td><td>'.$row["type"].'</td>
    </tr>';
  }
}
?>
