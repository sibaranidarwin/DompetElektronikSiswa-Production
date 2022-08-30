<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>SPP Siswa</title>
</head>

<body>
    <?php include "../process/getsekolah.php" ?>
    <?php include "../component/sekolah/sidebaropen.php" ?>

    <?php
        $trx = $db->getSchoolSPPTransactions($data["id_sekolah"]);
        $school = $db->getSchoolData($data["id_sekolah"], PDO::FETCH_OBJ);

        $idx = 0;
    ?>
    <div class="card my-4">
    <h1 style="margin-left: 20px;"><i class="fa fa-book fa-md"></i> SPP</h1>
    <p style="margin-left: 70px; font-size: 20px; font-style: italic;">Bayar SPP dengan mudah dengan DEKSI</p> 
    </div>

    <h1>SPP Siswa</h1>

    <div class="card">
        <div class="card-body">
            <h3 class="card-title text-success"><?=rupiah($school->saldo)?></h3>

            <form action="../actions/tarik_tunai_spp.php" method="post">

                <div class="form-group">
                    <label for="jumlah_penarikan">Jumlah Penarikan</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Rp</span>
                        </div>
                        <input type="number" class="form-control uang" name="nominal" id="jumlah_penarikan" min="1" max="<?=$school->saldo?>" value="1000000" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password">Password Tata Usaha</label>
                    <input type="password" class="form-control" name="password" required>
                </div>

                <input type="hidden" name="tata_usaha" value="<?= $data["id"] ?>">
                <input type="hidden" name="id_sekolah" value="<?= $data["id_sekolah"] ?>">

                <input type="submit" class="btn btn-primary" value="Tarik">
            </form>

            <form action="../actions/ubah_biaya_spp2.php" class="mt-4" method="post">

                <div class="form-group">
                    <label for="jumlah_penarikan">Biaya SPP</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Rp</span>
                        </div>
                        <input type="number" class="form-control uang" name="biaya_spp" id="jumlah_penarikan" min="1" value="<?=$school->biaya_spp?>" required>
                    </div>
                </div>

                <div class="form-group">
                    <label for="password">Password Tata Usaha</label>
                    <input type="password" class="form-control" name="password" required>
                </div>

                <input type="hidden" name="tata_usahaid" value="<?= $data["id"] ?>">
                <input type="hidden" name="id_sekolah" value="<?= $data["id_sekolah"] ?>">

                <input type="submit" class="btn btn-primary" value="Ubah">
            </form>
        </div>
    </div>

  <?php if ($trx) { ?>
        <div class="row">
            <?php foreach($trx as $t){ ?>
                <div class="col-sm-4 col-l-3 my-3">
                    <div class="card">
                      <div class="card-body">
                            <h3 class="card-title pointer text-success">
                                Id siswa <?=$t->siswa_id?>
                                <span class="float-right"><?=boldGreen(rupiah($t->kredit))?></span>
                            </h3>

                            <p class="card-text"><?=$t->deskripsi?></p>

                            <p class="card-text"><?=indonesian_date($t->tanggal), date('H:i:s', strtotime($t->tanggal))?></p>
                        </div>
                    </div>
                </div>
            <?php if($idx++ >= 11) break; } ?>
        </div>        
    <?php } else { 
        echo "<p>Belum terdapat transaksi</p>";
    } ?>

    <?php include "../component/siswa/sidebarclose.php" ?>
    <?php include "../component/scripts.php" ?>
    <?php $noback = true; require "../component/scrollTop.php" ?>
</body>

</html> 