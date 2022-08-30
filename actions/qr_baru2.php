<?php
require "checkpost.php";
require "../db/database.php";

$db = new Database();

$res = $db->newQr1(
    $_POST["judul"],
    $_POST["nilai"],
    isset($_POST["tetap"]) ? 1 : 0,
    $_POST["pemilik_kantinid"],
    $_POST["kantinid"]
);

header("Location: ../kantin/info_kantin.php?id=".$_POST["kantinid"]);
die();
 