<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <?php include "../process/getLoginData.php" ?>

    <?php
    $donationid = $_GET['id_donasi'];

    $res = $db->getDonation($donationid, PDO::FETCH_OBJ);
    ?>

    <style>
        .table-scroll-v {
            position: relative;
            overflow: auto;
        }

        .table-wrapper-scroll-y {
            display: block;
        }

        .right-left div:nth-child(1) {
            float: left;
            margin-left: 0;
        }
    </style>

    <title><?= ucwords($res->judul) ?></title>
</head>

<body>
    <?php include "../component/siswa/sidebaropen.php" ?>

    <?php
    if (!$res) {
        echo "<h1>Tidak dapat menemukan donasi 404</h1>
        <a href='donasi.php' role='button' class='btn btn-primary btn-lg mt-3'>Kembali ke halaman list donasi</a>";
    } else { // else open

        $mindonation = $data["saldo"] >= 1000 ? 1000 : ($data["saldo"] < 0 ? 0 : $data["saldo"]);
        $maxdonation = $data["saldo"] > 0 ? $data["saldo"] : 0;
        $percentage = number_format(($res->terkumpul / $res->target_donasi) * 100, 2, '.', '')
        ?>

    <div class="row">
        <div class="col-sm-7">
            <div class="card">
                <div class="card-body">
                    <h1 class="card-title"><?= ucwords($res->judul) ?></h1>
                    <p class="card-text"><?= $res->deskripsi ?></p>
                </div>
            </div>

            <div class="card mt-3 mb-3">
                <div class="card-body mt-2">
                    <!-- <h1 class="display-4">Terkumpul <?= rupiah($res->terkumpul) ?></h1> -->

                    <h4 class="card-title">Saat ini, sudah terkumpul <?= rupiah($res->terkumpul) ?> dari target <?= rupiah($res->target_donasi) ?></h4>

                    <div class="progress mb-3" style="height: 25px;">
                        <div class="progress-bar" role="progressbar" style="width: <?= $percentage ?>%;"><?= $percentage ?>%</div>
                    </div>

                    <p class="lead">Ayo, bantu berdonasi!</p>
                </div>
            </div>

            <div class="card mb-3">
                <div class="card-body">
                    <h3 class="card-title">Form Donasi</h3>

                    <form action="../actions/pay_donation.php" method="post" class="mt-3" id="donation-form">
                        <div class="form-group">
                            <label for="jumlah_donasi">Donasikan sedikut uangmu (<?= rupiah($mindonation) ?> - <?= rupiah($maxdonation) ?>)<br>
                                <span class="font-weight-bold" id="jmess"></span>
                            </label>

                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Rp</span>
                                </div>
                                <input type="number" class="form-control uang" name="jumlah_donasi" id="jumlah_donasi" step="100" value="<?= $mindonation ?>" required>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="private">Privasi</label>
                            <select class="form-control" name="private" id="private">
                                <option value="0">Tampilkan Data Diri Pada List Donatur</option>
                                <option vakue="1">Sembunyikan Data Diri Pada List Donatur</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="password" id="password" required>
                        </div>

                        <input type="hidden" name="donationid" value="<?= $donationid ?>">
                        <input type="hidden" name="donationname" value="<?= ucwords($res->judul) ?>">
                        <input type="hidden" name="siswaid" value="<?= $data["id"] ?>">

                        <div class="right-left">
                            <div>
                                <a href="donasi.php" role="button" class="btn btn-primary">List Donasi</a>
                            </div>

                            <div>
                                <input type="submit" class="btn btn-primary" value="Donasi Sekarang!">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <div class="col-sm-5 mb-3">
            <div class="card h-100" id="card-wrapper">
                <div class="card-body">
                    <h3 class="card-title">Donatur</h3>

                    <?php 
                    $donatur = $db->getDonatur($_GET['id_donasi'], PDO::FETCH_OBJ);

                    if ($donatur) {
                        ?>

                    <div class="table-wrapper-scroll-y table-scroll-v">
                        <table class="table">
                            <tr>
                                <th>Nama</th>
                                <th>Kelas</th>
                                <th>Jumlah Donasi</th>
                            </tr>

                            <?php
                            foreach ($donatur as $d) {
                                ?>

                            <tr>
                                <td><?= $d->private ? "-" : $d->nama ?></td>
                                <td><?= $d->private ? "-" : "$d->tingkatan $d->jurusan $d->kelas" ?></td>
                                <td><?= rupiah($d->jumlah) ?></td>
                            </tr>

                            <?php

                        }
                        ?>
                        </table>
                    </div>

                    <?php

                } else {
                    echo "<p class='card-text'>Belum ada donatur untuk saat ini, jadilah yang pertama!</p>";
                }
                ?>

                </div>
            </div>
        </div>

        <!-- Else CLose -->
        <?php 
    } ?>
    </div>
    </div>

    <?php include "../component/siswa/sidebarclose.php" ?>
    <?php include "../component/scripts.php" ?>
    <?php require "../component/scrollTop.php" ?>

    <?php if ($res) { ?>
    <script>
        $('#donation-form').submit(function() {
            const jumlahdonasi = $("#jumlah_donasi");
            const jd = Number(jumlahdonasi.val())

            if (jd < <?= $mindonation ?> || jd > <?= $maxdonation ?>) {
                $("#jmess").text(`Jumlah donasi terlalu ${jd < <?= $mindonation ?> ? "kecil" : "besar"}`);
                jumlahdonasi.focus();
                return false;
            }

            return true;
        });

        $(".table-scroll-v").height($("#card-wrapper").height() - 200 + "px");
    </script>
    <?php 
} ?>
</body>

</html> 