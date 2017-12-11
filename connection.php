<?php
if (isset($_)) {
  echo "connecté";
}else {
  //formulaire
  //echo '<form class="" action="index.html" method="post">
    //<input type="text" name="user" value="" placeholder="Utilisateur">
    //<input type="password" name="password" value="" placeholder="Mots de passe">
    //<input type="submit" name="submit" value="Connexion">
  //</form>';
}
?>

<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html>
  <head>
    <link rel="icon" href="assets/img/icon.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Inscription</title>
    <title>Acceuil</title>
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
    <meta charset="utf-8">
    <title>Inscription</title>
  <!-- formulaire d'Inscription -->
    <div align="center">
        <h2>Inscription</h2>
        <br>
        <table>
          <tr>
            <td align="right">
              <label for="pseudo">Pseudo :</label>
            </td>
            <td>
              <input type="text" placeholder="Entrez votre pseudo" name="pseudo" >
            </td>
          </tr>
          <tr>
            <td align="right">
              <label for="mail">Mail :</label>
            </td>
            <td>
              <input type="email" placeholder="Entrez votre mail" name="mail" >
            </td>
          </tr>
          <tr>
            <td align="right">
              <label for="mail">Confirmez votre mail :</label>
            </td>
            <td>
              <input type="email" placeholder="Confirmez votre mail" name="mail" >
            </td>
          </tr>
        </table>
    </div>
  </article>
</html>
