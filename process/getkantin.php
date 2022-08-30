<?php
session_start();

require '../db/database.php';

if(!isset($_SESSION['pemilik_kantinid'])) {
    header("Location: ../kantin/login.php");
   die() ;
}

$db = new Database();
$data = $db->getpemilikkantinbyID($_SESSION['pemilik_kantinid'], PDO::FETCH_ASSOC);

if($_SESSION['level'] != "kantin") {
    header("Location: ../siswa/dashboard.php");
    die();
}
