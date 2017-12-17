<?php
session_start();

//test si l'organisateur est connectée ou non
if (isset($_SESSION['uid'])) {

  // connection a la base d donnée
  include '../sql_settings.php';

  //test si la connexion fonctionne
  if (!$conn){
    die("connection à la db a échouer : ".mysqli_connect_error());

  } else {

    //ajout de l'utilisateur dans la base de donnée
    $nom = $_POST['pseudo'];
    $pwd = $_POST['mdp'];
    $mail = $_POST['mail'];

    //test si les valeur ne sont pas null
    if ($nom !="" && $pwd !="" && $mail !="") {
      $sql = "INSERT INTO users (nom, pwd, mail) VALUES ('$nom', '$pwd', $mail)";
      $result = mysqli_query($conn, $sql);
    }else {
      echo "erreur valeur(s) null(s)";
    }
  }
}else {
  echo "vous n'ête pas connectée";
}
?>
