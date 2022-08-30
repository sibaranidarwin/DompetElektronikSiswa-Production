<?php
require "checkpost.php";
require "../db/database.php";

$db = new Database();

$db->chengeDonationStatus2(
    $_POST["id"],
    $_POST["tata_usahaid"],
    $_POST["status"]
);

?>

<script>
history.back();
</script>

