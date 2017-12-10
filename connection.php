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
  <head>
    <meta charset="utf-8">
    <title>Inscription</title>
  </head>
  <body>
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

    </body>
</html>
