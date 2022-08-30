<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>Dashboard</title>
</head>

<body style="background-color: #E5E5E5;">
    <?php include "../process/getkantin.php" ?>
    <?php include "../component/kantin/sidebaropen.php" ?>

    <?php
    $sekolah = $db->getSchoolData($data["id_sekolah"], PDO::FETCH_OBJ);

    $stats = $db->getSchoolStats($data["id_sekolah"]);

    // print_r($trx);
    ?>
  <div class="card my-4">
    <h1 style="margin-left: 20px;"><a class="fa fa-desktop fa-md"></a> Dashboard</h1>
    <p style="margin-left: 70px; font-size: 20px; font-style: italic;">Hy, Selamat Datang Di Dompet Elektronk Siswa</p>
</div>
 <div class="card my-4">
    <h2 style="text-align: center;">Dompet Elektronik Siswa</h2>
    <p style="text-align: center; margin-top: 70px; font-size: 19px; font-style:;">Dompet Elektronik Siswa adalah yang digunakan sebagai media untuk membantu siswa dalam melakukan transaksi pembayaran<p style="text-align: center; font-size: 19px; font-style: ;"> di sekolah, baik itu untuk melakukan pembayaran uang sekolah, uang jajan di kantin sekolah, dan uang dana sosial di sekolah.<p style="text-align: center; font-size: 19px; font-style: ;"> pada aplikasi ini pengguna dapat melihat laporan transaksi yang pernah dilakukan sebelumnya.uang SPP, uang kantin di sekolah,<p style="text-align: center; font-size: 19px; font-style: ;"> dan uang Donasi di sekolah.</p>
</div>

    <div class="card my-4">
        <div class="card-body">
            <h3 class="card-title"><?= $sekolah->nama_sekolah ?> </h3>
            <?= $sekolah->kode ? "<p>Kode Sekolah Pendaftaran Siswa: $sekolah->kode</p>" : "" ?>

            <div class="row">
                <div class="col-sm-4 my-2">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><i class="fas fa-male" aria-hidden="true"></i> Laki-laki</h4>
                            <p class="card-text"><?= $stats->siswa->laki ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 my-2">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><i class="fas fa-female"></i> Perempuan</h4>
                            <p class="card-text"><?= $stats->siswa->perempuan ?></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 my-2">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title"><i class="fas fa-male"></i><i class="fas fa-female"></i> Total</h4>
                            <p class="card-text"><?= $stats->siswa->total ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

  
    </div>
    

    <?php include "../component/admin/sidebarclose.php" ?>
    <?php include "../component/scripts.php" ?>
    <?php $noback = true; require "../component/scrollTop.php" ?>
</body>

</html>