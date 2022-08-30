<?php
session_start();

require '../db/database.php';

if(!isset($_SESSION['tata_usahaid'])) {
    header("Location: ../tata_usaha/login.php");
   die() ;
}

$db = new Database();
$data = $db->getsekolahbyID($_SESSION['tata_usahaid'], PDO::FETCH_ASSOC);

if($_SESSION['level'] != "tata_usaha") {
    header("Location: ../siswa/dashboard.php");
    die();
}
