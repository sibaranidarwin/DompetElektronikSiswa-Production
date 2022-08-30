<?php
require "checkpost.php";
session_start();

require "../db/database.php";

$db = new Database();

$res = $db->loginAdmin($_POST["siswaemail"], $_POST["siswapass"], "*");

if($res) {
    $_SESSION['adminid'] = $res;
    $_SESSION['level'] = "admin";

    $db->addAdminJournal($res, "login", 0);

    header("Location: ../admin/dashboard.php");
    die();
} else {
    header("Location: ../admin/login.php?error=1");
    die();
}
