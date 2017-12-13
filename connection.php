<!DOCTYPE html>
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
        </nav>
      </div>
    </header>
    <article>

<?php
session_start();

//test si l'organisateur est connectée ou non
if (isset($_SESSION['uid'])) {
  echo "connecté";
}else {
  echo '
        <!-- formulaire d\'Inscription -->
        <div align="center">
          <h2>Inscription</h2>
          <br>
          <table>
            <tr>
              <td align="right">
                <label for="pseudo">Pseudo :</label>
              </td>
              <td>
                <input type="text" placeholder="Entrez votre pseudo" name="pseudo" id="pseudo" >
              </td>
            </tr>
            <tr>
              <td align="right">
                <label for="mail">Mail :</label>
              </td>
              <td>
                <input type="email" placeholder="Entrez votre mail" name="mail" id="mail">
              </td>
            </tr>
            <tr>
              <td align="right">
                <label for="mdp">Mot de passe :</label>
              </td>
              <td>
                <input type="password" placeholder="Mot de passe" name="mdp" id="mdp">
              </td>
            </tr>
            <tr>
              <td align="right">
                <label for="mdp2">Confirmez votre mot de passe :</label>
              </td>
              <td>
                <input type="password" placeholder="confirmez votre mot de passe" name="mdp2" id="mdp2">
              </td>
            </tr>
          </table>
          <br>
          <input type="submit" value="Valider" >
        </div>';
}
?>

    </article>
  </body>
</html>
