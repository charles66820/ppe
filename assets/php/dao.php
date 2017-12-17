<?php
 // début classe //
class membreDAO { //pourquoi une class?
  private $chainedeConnexion;
  private $utilisateur;
  private $motdepasse;
  private $nomBDD;
  private $pdo;


  public function __construct(){
    $this-> pdo = null;
    $this-> chainedeConnexion = "mysql:host=localhost;port=80;dbname=";
    $this-> utilisateur = "jeuxolp";
    $this-> motdepasse = "jeuxolp";
    $this-> nomBDD = "espace_membre";
  }

// Connexion
  public function etablirConnexion(){
    $this-> pdo = new PDO($this->chainedeConnexion.$this->nomBDD,$this->utilisateur,$this->modtdepasse);
    if($this-> pdo !== null){
      echo "<p>La connexion est établie</p>";
      }
      else {
        echo "<p>Echec de la connexion".var_dump($this-> pdo)."</p>";
      }
    }
}

}
