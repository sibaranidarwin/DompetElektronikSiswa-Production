<?php
require "checkpost.php";
session_start();

require "../db/database.php";

$db = new Database();

$res = $db->loginkantin($_POST["siswaemail"], $_POST["siswapass"], "*");

if($res) {
    $_SESSION['pemilik_kantinid'] = $res;
    $_SESSION['level'] = "kantin";

    header("Location: ../kantin/dashboard.php");
    die();
} else {
    header("Location: ../kantin/login.php?error=1");
    die();
}
