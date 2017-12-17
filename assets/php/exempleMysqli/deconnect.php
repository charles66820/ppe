<?php
session_start();
if($_POST['submit'] = 'signOut'){
	session_destroy();
}
?>
