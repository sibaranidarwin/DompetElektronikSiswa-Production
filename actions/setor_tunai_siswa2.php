<?php
require "checkpost.php";
require "../db/database.php";

$validated = false;

if (isset($_POST["siswaid"])) {
    $db = new Database();

    $siswaid = $_POST["siswaid"];
    $tata_usahaid = $_POST["tata_usahaid"];
    $nominal = (int)$_POST["nominal_setor"];
    $deskripsi = $_POST["deskripsi"];
    $pass = $_POST["password"];

    $validated = $db->validateAdminPassword2($tata_usahaid, $pass);

    if ($validated && $nominal >= 1000) {
        if ($db->siswaDeposit($siswaid, $nominal)) {
            $db->addTransaction($nominal, "topup", "masuk", $siswaid, "teller", $deskripsi);
            
            header("Location: ../sekolah/detail_siswa.php?ssc=Setor Tunai Sukses&id=$siswaid");
            die();
        }
    } else {
        header("Location: ../sekolah/detail_siswa.php?ssc=Password salah atau nominal tarik terlalu kecil&id=$siswaid");        
    }
}
?>
