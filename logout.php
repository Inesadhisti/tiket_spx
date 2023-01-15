<?php
session_start();

#<a href="index.php"><span class="fa fa-home"></span> Beranda</a></li>
session_destroy();
header("location: login.php");
?>