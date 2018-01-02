<?php
session_start();

$bdd = new PDO('mysql:host=127.0.0.1;dbname=webdata', 'root', '');

if(isset($_POST['formconnexion'])) {
   $mailconnect = htmlspecialchars($_POST['mailconnect']);
   $mdpconnect = sha1($_POST['mdpconnect']);
   if(!empty($mailconnect) AND !empty($mdpconnect)) {
      $requser = $bdd->prepare("SELECT * FROM espace_membre WHERE mail = ? AND motdepasse = ?");
      $requser->execute(array($mailconnect, $mdpconnect));
      $userexist = $requser->rowCount();
      if($userexist == 1) {
         $userinfo = $requser->fetch();
         $_SESSION['id'] = $userinfo['id'];
         $_SESSION['pseudo'] = $userinfo['pseudo'];
         $_SESSION['mail'] = $userinfo['mail'];
         header("Location: index.html?id=".$_SESSION['id']);
      } else {
         $erreur = "Mauvais mail ou mot de passe !";
      }
   } else {
      $erreur = "Tous les champs doivent être complétés !";
   }
}
?>

<html>
  <head>
    <link rel="icon" href="assets/img/icon.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Inscription</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/accueil.css">
  </head>
  <body>
    <header>
       <!-- menu -->
       <a id="logo" href="./"><img src="assets/img/logo.png" height="60"></a>
       <nav id="li">
         <a href="./">Acceuil</a>
         <a href="regles.html">Régles</a>
         <a href="champion.html">Champion</a>
         <a href="club.html">Club</a>
         <a id="connexion" href="connection.php" >Connexion</a>
         <a id="inscription" href="inscription.php" style="border-bottom-color: rgb(0, 150, 255);">Inscription</a>
       </nav>
       <div id="m-btn">
         <div id="m-btn-t">
           <!-- boutton pour ouvrir le menu -->
           <a id="line" href="#m-btn" >
             <div class="line" style="left: 8px;"><div class="line"><div class="line"></div></div></div>
           </a>
           <!-- boutton pour fermmer le menu -->
           <a id="crois" href="#m-btn-t">
             <div class="crois" style="transform: rotate(45deg);"></div>
             <div class="crois" style="transform: rotate(-45deg);"></div>
           </a>
         </div>
         <!-- menu pour les mobile -->
         <nav id="m-nav-menu">
           <a href="./">Acceuil</a>
           <a href="regles.html">Régles</a>
           <a href="champion.html">Champion</a>
           <a href="club.html">Club</a>
           <a href="connection.php" >Connexion</a>
         </nav>
       </div>
     </header>
     <article>
      <div align="center">
         <h2>Connexion</h2>
         <br /><br />
         <form method="POST" action="">
            <input type="email" name="mailconnect" placeholder="Mail" />
            <input type="password" name="mdpconnect" placeholder="Mot de passe" />
            <br /><br />
            <input type="submit" name="formconnexion" value="Se connecter !" />
         </form>
         <?php
         if(isset($erreur)) {
            echo '<font color="red">'.$erreur."</font>";
         }
         ?>
      </div>
    </article>
   </body>
   <footer style="position: fixed">
     <div class="lien">
       <a id="lien" href="http://www.escrime-ffe.fr/" target="_blank"><img src="assets/img/logo/logoFFe.png" height="45"></a>
       <a id="lien" href="https://www.facebook.com/ffescrime/" target="_blank"><img src="assets/img/logo/facebooklogo.png" height="45"></a>
       <a id="lien" href="https://www.instagram.com/ffescrime/" target="_blank"><img src="assets/img/logo/instalogo.png" height="50"></a>
       <a id="lien" href="https://twitter.com/ffescrime/" target="_blank"><img src="assets/img/logo/twlogo.png" height="45"></a>
     </div>
   </footer>
</html>
