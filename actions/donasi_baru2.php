<?php
require "checkpost.php";
require "../db/database.php";

$db = new Database();

$id = $db->donation(
    $_POST["judul"],
    $_POST["deskripsi"],
    $_POST["target"],
    $_POST["idposter"]
);

header("Location: ../sekolah/donasi.php");
die();
