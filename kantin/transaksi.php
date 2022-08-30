<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>Transaksi Siswa</title>
</head>

<body>
    <?php include "../process/getkantin.php" ?>
    <?php include "../component/kantin/sidebaropen.php" ?>

    <?php
        $trx = $db->getkantinTransactions($data["id_sekolah"]);;
    ?>
 <div class="card my-4">
    <h1 style="margin-left: 20px;"><i class="fa fa-book fa-history"></i> Transaksi</h1>
    <p style="margin-left: 70px; font-size: 20px; font-style: italic;">Seluruh transaksi siswa SMA</p> 
    </div>

    <!-- <h1>Transaksi Siswa</h1> -->

    <?php if ($trx) { ?>
        <div class="table-responsive mt-4">
            <table id="paymentHistoryTable" class="table">
                <thead>
                    <tr>
                        <th>TRX ID</th>
                        <th>USER ID</th>
                        <th>Tanggal</th>
                        <th>Jenis</th>
                        <th>Debit</th>
                        <th>Kredit</th>
                        <th>Tipe</th>
                        <th>Metode</th>
                        <th>Deskripsi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($trx as $val) {
                        ?>

                        <tr>
                            <td><?= $val->id ?></td>
                            <td><a href="detail_siswa.php?id=<?= $val->siswa_id ?>"><?= $val->siswa_id ?></a></td>
                            <td><?= $val->tanggal ?></td>
                            <td class="text-<?= $val->jenis == "masuk" ? "success" : "danger" ?>"><?= ucwords($val->jenis) ?></td>
                            <td class="text-muted" data-sort="<?=$val->debit?>"><?= rupiah($val->debit) ?></td>
                            <td class="text-<?= $val->jenis == "masuk" ? "success" : "danger" ?>" data-sort="<?=$val->kredit?>"><?= rupiah($val->kredit) ?></td>
                            <td><?= $val->tipe ?></td>
                            <td><?= $val->metode ?></td>
                            <td><?= ucwords($val->deskripsi) ?></td>
                        </tr>

                    <?php

                }
                ?>

                </tbody>
            </table>
        </div>
    <?php } else { ?>

        <p>Belum terdapat transaksi</p>
    <?php } ?>
    <?php include "../component/siswa/sidebarclose.php" ?>
    <?php include "../component/scripts.php" ?>
    <?php $noback = true; require "../component/scrollTop.php" ?>

    <script>
        $(document).ready(function() {
            $('#paymentHistoryTable').DataTable({
                "order": [
                    [0, "desc"]
                ],
                "language": {
                    "lengthMenu": "Tampilkan _MENU_ riwayat per halaman",
                    "zeroRecords": "Maaf, tidak dapat menemukan apapun",
                    "info": "Menampilkan halaman _PAGE_ dari _PAGES_ halaman",
                    "infoEmpty": "Tidak ada riwayat yang dapat ditampilkan",
                    "infoFiltered": "(tersaring dari _MAX_ total riwayat)",
                    "search": "Cari:",
                    "paginate": {
                        "first": "Pertama",
                        "last": "Terakhir",
                        "next": "Berikutnya",
                        "previous": "Sebelumnya"
                    },
                }
            });
        });
    </script>
</body>

</html> 