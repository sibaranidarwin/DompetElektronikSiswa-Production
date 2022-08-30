<?php
require "checkpost.php";
session_start();

require "../db/database.php";

$db = new Database();

$res = $db->logintata_usaha($_POST["siswaemail"], $_POST["siswapass"], "*");

if($res) {
    $_SESSION['tata_usahaid'] = $res;
    $_SESSION['level'] = "tata_usaha";

    header("Location: ../sekolah/dashboard.php");
    die();
} else {
    header("Location: ../sekolah/login.php?error=1");
    die();
}
