<?php
session_start();

//se connect a la base de donnée
$bdd = new PDO('mysql:host=127.0.0.1;dbname=webdata', 'root', '');

//test si une saission est ouvert ou pas
if (isset($_SESSION['id'])) {
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
                       $erreur = "Votre compte a bien été créé ! <a href=\"connexion.php\">Me connecter</a>";
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

  //ajouter un champion
  if(isset($_POST['formAddChamp'])) {
    //mettre les valeur dans des variable
    $nomAddChamp = htmlspecialchars($_POST['nomAddChamp']);
    $nationaliterAddChamp = htmlspecialchars($_POST['nationaliterAddChamp']);
    $titreAddChamp = htmlspecialchars($_POST['titreAddChamp']);
    $editionAddChamp = htmlspecialchars($_POST['editionAddChamp']);
    $typeAddChamp = htmlspecialchars($_POST['typeAddChamp']);

    //test si tous les chanps sont complétés
    if(!empty($nomAddChamp) AND !empty($nationaliterAddChamp) AND !empty($titreAddChamp) AND !empty($editionAddChamp) AND !empty($typeAddChamp)) {
      $insertChamp = $bdd->prepare("INSERT INTO champions(nom, nationaliter, titre, edition, type) VALUES (?, ?, ?, ?, ?)");
      $insertChamp->execute(array($nomAddChamp, $nationaliterAddChamp, $titreAddChamp, $editionAddChamp, $typeAddChamp));
      header("Location: connexion.php");
    } else {
      $erreurChamp = "Tous les champs doivent être complétés !";
    }
  }
}else {
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
        $insertlog = $bdd->prepare("INSERT INTO connectlogs(pseudo, mail, `date`, ip) VALUES (?, ?, ?, ?)");
        $insertlog->execute(array($_SESSION['pseudo'], $_SESSION['mail'], date("Y-d-m H:i:s"), $_SERVER['REMOTE_ADDR']));
        header("Location: connexion.php?sid=".$_SESSION['id']);
      } else {
        $erreur = "Mauvais mail ou mot de passe !";
      }
    } else {
      $erreur = "Tous les champs doivent être complétés !";
    }
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
    <link rel="stylesheet" href="assets/css/connexion.css">
  </head>
  <body>
    <header style="top:0">
      <div style="color: #0c5460;background-color: #d1ecf1;border-color: #bee5eb;position: relative;padding: .75rem 1.25rem;border: 1px solid transparent;border-radius: .25rem;">
        <p>Ce site web est un faux le site réalisé en (Projet Personnel Encadrée) lors du BTS (Services Informatiques aux Organisations).</p>
        <hr style="border-top-color: #abdde5;margin-top: 1rem;margin-bottom: 1rem;border: 0;border-top: 1px solid rgba(0,0,0,.1);box-sizing: content-box;height: 0;overflow: visible;">
        <p>This website is a fake site made during the PPE (Framed Personal project) in BTS SIO (Higher Technician Certificate - IT Service to Organizations).</p>
        <button onclick="this.parentElement.parentElement.removeChild(this.parentElement)" style="float: right;font-size: 1.5rem;font-weight: 700;line-height: 1;text-shadow: 0 1px 0 #fff;opacity: .5;background-color: transparent;border: 0;-webkit-appearance: none;position: absolute;top: 0;right: 0;padding: .75rem 1.25rem;color: inherit;cursor: pointer;">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <header style="top:auto">
         <!-- menu -->
         <a id="logo" href="./"><img src="assets/img/logo.png" height="60"></a>
         <nav id="li">
           <a href="./">Acceuil</a>
           <a href="regles.html">Régles</a>
           <a href="champion.html">Champion</a>
           <a href="club.html">Club</a>
           <?php
           if (isset($_SESSION['id'])) {
             echo '<a id="connexion" href="assets/php/deconnexion.php">deconnexion</a>';
           }else {
            echo '<a id="connexion" href="connexion.php">Espace membre</a>';
           }
           ?>
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
             <?php
             if (isset($_SESSION['id'])) {
               echo '<a id="connexion" href="assets/php/deconnexion.php">deconnexion</a>';
             }else {
              echo '<a href="connexion.php">Espace membre</a>';
             }
             ?>
           </nav>
         </div>
       </header>
     </header>
     <article>
       <?php
       if (isset($_SESSION['id'])) {
         echo '<div id="inscription" align="center">
         <h2>Inscription</h2>
         <form method="POST" action="">
         <table class="shadow">
         <tr>
         <td align="right">
         <label for="pseudo">Pseudo :</label>
         </td>
         <td>
         <input type="text" placeholder="Votre pseudo" id="pseudo" name="pseudo" value="';
         if(isset($pseudo)) { echo $pseudo; }
         echo '" />
         </td>
         </tr>
         <tr>
         <td align="right">
         <label for="mail">Mail :</label>
         </td>
         <td>
         <input type="email" placeholder="Votre mail" id="mail" name="mail" value="';
         if(isset($mail)) { echo $mail; }
         echo '" />
         </td>
         </tr>
         <tr>
         <td align="right">
         <label for="mail2">Confirmation du mail :</label>
         </td>
         <td>
         <input type="email" placeholder="Confirmez votre mail" id="mail2" name="mail2" value="';
         if(isset($mail2)) { echo $mail2; }
         echo '" />
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
         </form>';
         if(isset($erreur)) {
           echo '<font color="red">'.$erreur."</font>";
         }
         echo '</div>';

         echo '<div id="loginLog" align="center">
         <h2>Historique de connexion</h2>
         <table class="shadow">
         <tr>
         <td>pseudo</td>
         <td>mail</td>
         <td>date</td>
         <td>ip</td>
         </tr>';
         foreach ($bdd->query("SELECT * FROM connectlogs") as $row) {
           echo "<tr>";
           echo '<td>'.$row["pseudo"].'</td>';
           echo '<td>'.$row["mail"].'</td>';
           echo '<td>'.$row["date"].'</td>';
           echo '<td>'.$row["ip"].'</td>';
           echo "</tr>";
         }
         echo '</table>
         </div>';

         echo '<div id="addchamp" align="center">
         <h2>ajouter un champion</h2>
         <div class="shadow">
         <form method="POST">
         <div>
         <input type="text" name="nomAddChamp" placeholder="nom du Champion(ne)" />
         <input type="text" name="nationaliterAddChamp" placeholder="nationaliter" />
         <select name="titreAddChamp">
         <option value="Or">Or</option>
         <option value="Bronze">Bronze</option>
         <option value="Argent">Argent</option>
         </select>
         <input type="text" name="editionAddChamp" placeholder="nationaliter" />
         <input type="text" name="typeAddChamp" placeholder="nationaliter" />
         <input type="submit" name="formAddChamp" value="Ajouter" />
         </div>';
         if(isset($erreurChamp)) {
           echo '<font color="red">'.$erreurChamp."</font>";
         }
         echo '</form>
         </div>
         </div>';

      }else {
        echo '<div class="conn" align="center">
        <h2>Connexion</h2>
        <br/><br/>
        <form method="POST" action="">
        <input type="email" name="mailconnect" placeholder="Mail" />
        <input type="password" name="mdpconnect" placeholder="Mot de passe" />
        <br/><br/>
        <input type="submit" name="formconnexion" value="Se connecter !" />
        </form>';
        if(isset($erreur)) {
          echo '<font color="red">'.$erreur.'</font>';
        }
      }
      echo '</div>';
      ?>
    </article>
   </body>
   <footer>
     <div class="lien">
       <a id="lien" href="http://www.escrime-ffe.fr/" target="_blank"><img src="assets/img/logo/logoFFe.png" height="45"></a>
       <a id="lien" href="https://www.facebook.com/ffescrime/" target="_blank"><img src="assets/img/logo/facebooklogo.png" height="45"></a>
       <a id="lien" href="https://www.instagram.com/ffescrime/" target="_blank"><img src="assets/img/logo/instalogo.png" height="50"></a>
       <a id="lien" href="https://twitter.com/ffescrime/" target="_blank"><img src="assets/img/logo/twlogo.png" height="45"></a>
     </div>
   </footer>
</html>
