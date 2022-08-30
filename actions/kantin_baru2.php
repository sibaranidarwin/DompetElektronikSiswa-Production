<?php
require "checkpost.php";
require "../db/database.php";

$db = new Database();

$id = $db->registerKantin1(
    $_POST["nama"],
    $_POST["deskripsi"],
    $_POST["idsekolah"]
)[1];

header("Location: ../kantin/kantin.php");
die();

