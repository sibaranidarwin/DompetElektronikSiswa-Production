<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>Donasi</title>
</head>

<body>
    <?php include "../process/getLoginData.php" ?>
    <?php include "../component/siswa/sidebaropen.php" ?>

    <div class="card my-4">
    <h1 style="margin-left: 20px;"><i class="fa fa-hand-holding-usd fa-md"></i> Donasi</h1>
    <p style="margin-left: 70px; font-size: 20px; font-style: italic;">Sisihkan uang jajanmu ingat Donasimu!</p> 
    </div>

    <?php include "../component/donationlist.php" ?>

    <?php include "../component/siswa/sidebarclose.php" ?>
    <?php include "../component/scripts.php" ?>
    <?php require "../component/scrollTop.php" ?>
</body>

</html> 