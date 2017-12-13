<?php
session_start();

// connection a la base d donnée
include 'sql_settings.php';

//test si la connexion fonctionne
if (!$conn){
  die("connection à la db a échouer : ".mysqli_connect_error());
} else {
  $nom = $_POST['pseudo'];
  $pwd = $_POST['mdp'];

  //test si les valeur ne sont pas null
  if ($nom !="" && $pwd !="") {
    $sql = "SELECT * FROM users WHERE nom='$uid' AND pwd='$pwd'";
    $result = mysqli_query($conn, $sql);

    if (!$row = mysqli_fetch_assoc($result)){
      echo "utilisateur mots de passe incorrect";
    } else {
      $_SESSION['uid'] = $row['uid'];
    }
  }else {
    echo "erreur valeur(s) null(s)";
  }
}
?>
