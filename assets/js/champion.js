//variable
var load = "assets/php/champion.php?";
var limit = 20;

//premier chargement
$("#table").load("assets/php/champion.php");




























//quant on clique sur la colonne nom
$("#nom").click(function() {
  if ($(this).children().text() == ">") {
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=nom");
    load = "assets/php/champion.php?colonne=nom";
    limit = 20;
  }else if ($(this).children().text() == "<") {
    $(".fel").html("&nbsp");
    $(this).children().text(">");
    $("#table").load("assets/php/champion.php?colonne=nom&ordre=0");
    load = "assets/php/champion.php?colonne=nom&ordre=0";
    limit = 20;
  }else{
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=nom");
    load = "assets/php/champion.php?colonne=nom";
    limit = 20;
  }
})

//quant on clique sur la colonne nationalité
$("#nat").click(function() {
  if ($(this).children().text() == ">") {
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=nationaliter");
    load = "assets/php/champion.php?colonne=nationaliter";
    limit = 20;
  }else if ($(this).children().text() == "<") {
    $(".fel").html("&nbsp");
    $(this).children().text(">");
    $("#table").load("assets/php/champion.php?colonne=nationaliter&ordre=0");
    load = "assets/php/champion.php?colonne=nationaliter&ordre=0";
    limit = 20;
  }else{
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=nationaliter");
    load = "assets/php/champion.php?colonne=nationaliter";
    limit = 20;
  }
})

//quant on clique sur la colonne titre
$("#titre").click(function() {
  if ($(this).children().text() == ">") {
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=titre");
    load = "assets/php/champion.php?colonne=titre";
    limit = 20;
  }else if ($(this).children().text() == "<") {
    $(".fel").html("&nbsp");
    $(this).children().text(">");
    $("#table").load("assets/php/champion.php?colonne=titre&ordre=0");
    load = "assets/php/champion.php?colonne=titre&ordre=0";
    limit = 20;
  }else{
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=titre");
    load = "assets/php/champion.php?colonne=titre";
    limit = 20;
  }
})

//quant on clique sur la colonne édition
$("#edition").click(function() {
  if ($(this).children().text() == ">") {
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=edition");
    load = "assets/php/champion.php?colonne=edition";
    limit = 20;
  }else if ($(this).children().text() == "<") {
    $(".fel").html("&nbsp");
    $(this).children().text(">");
    $("#table").load("assets/php/champion.php?colonne=edition&ordre=0");
    load = "assets/php/champion.php?colonne=edition&ordre=0";
    limit = 20;
  }else{
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=edition");
    load = "assets/php/champion.php?colonne=edition";
    limit = 20;
  }
})

//quant on clique sur la colonne type
$("#type").click(function() {
  if ($(this).children().text() == ">") {
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=type");
    load = "assets/php/champion.php?colonne=type";
    limit = 20;
  }else if ($(this).children().text() == "<") {
    $(".fel").html("&nbsp");
    $(this).children().text(">");
    $("#table").load("assets/php/champion.php?colonne=type&ordre=0");
    load = "assets/php/champion.php?colonne=type&ordre=0";
    limit = 20;
  }else{
    $(".fel").html("&nbsp");
    $(this).children().text("<");
    $("#table").load("assets/php/champion.php?colonne=type");
    load = "assets/php/champion.php?colonne=type";
    limit = 20;
  }
})

//quant on clique sur voire plus
$("#load").click(function() {
  $.get( load+'&limit='+limit, function(data) {
    $("#table").append(data);
    limit+=10;
  });
})
