<?php
session_start();
session_destroy();
header("Location: ../../connection.php?sid=".$_SESSION['id']);
?>
