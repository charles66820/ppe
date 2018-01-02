<?php
$bdd = new PDO('mysql:host=127.0.0.1;dbname=webdata', 'root', '');

if(isset($_POST['forminscription'])) {
   $pseudo = htmlspecialchars($_POST['pseudo']);
   $mail = htmlspecialchars($_POST['mail']);
   $mail2 = htmlspecialchars($_POST['mail2']);
   $mdp = sha1($_POST['mdp']);
   $mdp2 = sha1($_POST['mdp2']);
   if(!empty($_POST['pseudo']) AND !empty($_POST['mail']) AND !empty($_POST['mail2']) AND !empty($_POST['mdp']) AND !empty($_POST['mdp2'])) {
      $pseudolength = strlen($pseudo);
      if($pseudolength <= 255) {
         if($mail == $mail2) {
            if(filter_var($mail, FILTER_VALIDATE_EMAIL)) {
               $reqmail = $bdd->prepare("SELECT * FROM espace_membre WHERE mail = ?");
               $reqmail->execute(array($mail));
               $mailexist = $reqmail->rowCount();
               if($mailexist == 0) {
                  if($mdp == $mdp2) {
                     $insertmbr = $bdd->prepare("INSERT INTO espace_membre(pseudo, mail, motdepasse) VALUES(?, ?, ?)");
                     $insertmbr->execute(array($pseudo, $mail, $mdp));
                     $erreur = "Votre compte a bien été créé ! <a href=\"connection.php\">Me connecter</a>";
                  } else {
                     $erreur = "Vos mots de passes ne correspondent pas !";
                  }
               } else {
                  $erreur = "Adresse mail déjà utilisée !";
               }
            } else {
               $erreur = "Votre adresse mail n'est pas valide !";
            }
         } else {
            $erreur = "Vos adresses mail ne correspondent pas !";
         }
      } else {
         $erreur = "Votre pseudo ne doit pas dépasser 255 caractères !";
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
         <h2>Inscription</h2>
         <br /><br />
         <form method="POST" action="">
            <table>
               <tr>
                  <td align="right">
                     <label for="pseudo">Pseudo :</label>
                  </td>
                  <td>
                     <input type="text" placeholder="Votre pseudo" id="pseudo" name="pseudo" value="<?php if(isset($pseudo)) { echo $pseudo; } ?>" />
                  </td>
               </tr>
               <tr>
                  <td align="right">
                     <label for="mail">Mail :</label>
                  </td>
                  <td>
                     <input type="email" placeholder="Votre mail" id="mail" name="mail" value="<?php if(isset($mail)) { echo $mail; } ?>" />
                  </td>
                </tr>
                <tr>
                  <td align="right">
                     <label for="mail2">Confirmation du mail :</label>
                  </td>
                  <td>
                     <input type="email" placeholder="Confirmez votre mail" id="mail2" name="mail2" value="<?php if(isset($mail2)) { echo $mail2; } ?>" />
                  </td>
               </tr>
               <tr>
                  <td align="right">
                     <label for="mdp">Mot de passe :</label>
                  </td>
                  <td>
                     <input type="password" placeholder="Votre mot de passe" id="mdp" name="mdp" />
                  </td>
               </tr>
               <tr>
                  <td align="right">
                     <label for="mdp2">Confirmation du mot de passe :</label>
                  </td>
                  <td>
                     <input type="password" placeholder="Confirmez votre mdp" id="mdp2" name="mdp2" />
                  </td>
               </tr>
               <tr>
                  <td></td>
                  <td align="center">
                     <br />
                     <input type="submit" name="forminscription" value="Valider" />
                  </td>
               </tr>
            </table>
         </form>
         <?php
         if(isset($erreur)) {
            echo '<font color="red">'.$erreur."</font>";
         }
         ?>
      </div>
    </article>
    <footer style="position: fixed">
      <div class="lien">
        <a id="lien" href="http://www.escrime-ffe.fr/" target="_blank"><img src="assets/img/logo/logoFFe.png" height="45"></a>
        <a id="lien" href="https://www.facebook.com/ffescrime/" target="_blank"><img src="assets/img/logo/facebooklogo.png" height="45"></a>
        <a id="lien" href="https://www.instagram.com/ffescrime/" target="_blank"><img src="assets/img/logo/instalogo.png" height="50"></a>
        <a id="lien" href="https://twitter.com/ffescrime/" target="_blank"><img src="assets/img/logo/twlogo.png" height="45"></a>
      </div>
    </footer>
   </body>
</html>
