<?php
require "checkpost.php";
require "../db/database.php";

$db = new Database();

$success = false;

$validated = $db->validateAdminPassword2($_POST["tata_usahaid"], $_POST["password"]);

if ($validated) {
    if ($db->changeSchoolBiayaSPP2(
        $_POST["id_sekolah"],
        $_POST["biaya_spp"]
    )) {
        $success = true;
        header("Location: ../sekolah/spp.php?scc=Berhasil mengubah biaya spp");
        die();
    }

    header("Location: ../sekolah/spp.php?scc=Terjadi kesalahan");
    die();
} else {
    header("Location: ../sekolah/spp.php?scc=Password Salah");
    die();
}
