<?php

if (isset($_)) {
  echo "connecté";
}else {
  //formulaire
  echo '<form class="" action="index.html" method="post">
    <input type="text" name="user" value="" placeholder="Utilisateur">
    <input type="password" name="password" value="" placeholder="Mots de passe">
    <input type="submit" name="submit" value="Connexion">
  </form>';
}
?>
