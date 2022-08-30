<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>History</title>
</head>

<body style="background-color: #E5E5E5;">
    <?php include "../process/getkantin.php" ?>
    <?php include "../component/kantin/sidebaropen.php" ?>

    <div class="card my-4">
    <h1 style="margin-left: 20px;"><a class="fa fa-user fa-md"></a> Siswa</h1>
    <p style="margin-left: 70px; font-size: 20px; font-style: italic;">Berikut seluruh siswa di SMA N 1 Balige</p> 
    </div>
    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Siswa
            </h1>

            <div class="collapse mb-4" id="tambah_siswa">
                <form action="../actions/siswa_baru.php" method="post">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="nama_siswa">Nama Siswa</label>
                                <input type="text" class="form-control" name="nama" id="nama_siswa" required>
                            </div>

                            <div class="form-group">
                                <label for="kelamin">Kelamin Siswa</label>
                                <select class="form-control" id="kelamin" name="kelamin" required>
                                    <option value="laki-laki">Laki-Laki</option>
                                    <option value="perempuan">Perempuan</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="email_siswa">Email Siswa</label>
                                <input type="email" class="form-control" name="email" id="email_siswa" required>
                            </div>

                            <div class="form-group">
                                <label for="tingkatan">Tingkatan Siswa</label>
                                <select class="form-control" id="tingkatan" name="tingkatan" required>
                                    <option value="I">I</option>
                                    <option value="II">II</option>
                                    <option value="III">III</option>
                                    <option value="IV">IV</option>
                                    <option value="V">V</option>
                                    <option value="VI">VI</option>
                                    <option value="VII">VII</option>
                                    <option value="VIII">VIII</option>
                                    <option value="IV">IV</option>
                                    <option value="X" selected>X</option>
                                    <option value="XI">XI</option>
                                    <option value="XII">XII</option>
                                    <option value="XIII">XIII</option>
                                </select>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="kelas_siswa">Kelas Siswa</label>
                                <input type="text" class="form-control" name="kelas" id="kelas_siswa" required>
                            </div>

                            <div class="form-group">
                                <label for="jurusan_siswa">Jurusan Siswa</label>
                                <input type="text" class="form-control" name="jurusan" id="jurusan_siswa" required>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="form-group">
                                <label for="nisn_siswa">NISN Siswa</label>
                                <input type="text" class="form-control" name="nisn" id="nisn_siswa" required>
                            </div>

                            <div class="form-group">
                                <label for="saldo_awal_siswa">Saldo Awal Siswa</label>
                                <input type="number" class="form-control uang" name="saldo" id="saldo_awal_siswa" value="0" required>
                            </div>
                        </div>
                    </div>

                    <input type="hidden" name="idsekolah" value="<?=$data["id_sekolah"]?>">
                    <input type="hidden" name="adminid" value="<?=$data["id"]?>">

                    <input type="submit" class="btn btn-primary" value="Masukan">
                </form>
            </div>

            <div class="card card-body">
                <?php 
                $siswa = $db->getSeluruhSiswa($data["id_sekolah"]);
                if ($siswa) {
                    ?>

                <div class="table-responsive">
                    <table id="listSiswa" class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tanggal Pendaftaran</th>
                                <th>Nama</th>
                                <th>Kelamin</th>
                                <th>Email</th>
                                <th>Kelas</th>
                                <th>NISN</th>
                                <th>Saldo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($siswa as $siswa) {
                                ?>

                            <tr>
                                <td><?= $siswa->id ?></td>
                                <td><?= $siswa->tanggal_pendaftaran ?></td>
                                <td><?= ucwords($siswa->nama) ?></td>
                                <td><?= $siswa->kelamin ?></td>
                                <td><?= $siswa->email ?></td>
                                <td><?= "$siswa->tingkatan $siswa->jurusan $siswa->kelas" ?></td>
                                <td><?= $siswa->nisn ?></td>
                                <td data-sort="<?=$siswa->saldo?>"><?= rupiah($siswa->saldo) ?></td>
                                <td><a href="detail_siswa.php?id=<?=$siswa->id?>" class="btn btn-primary">Detail</a></td>
                            </tr>

                            <?php

                        }
                        ?>

                        </tbody>
                    </table>
                </div>

                <?php

            } else {
                echo "<p class='card-text'>Tidak ada siswa yang dapat ditampilkan</p>";
            }
            ?>
            </div>
        </div>

    </div>

    <?php include "../component/siswa/sidebarclose.php" ?>
    <?php include "../component/scripts.php" ?>
    <?php require "../component/scrollTop.php" ?>

    <script>
        $(document).ready(function() {
            $('#listSiswa').DataTable({
                "order": [
                    [1, "desc"]
                ],
                "language": {
                    "lengthMenu": "Tampilkan _MENU_ siswa per halaman",
                    "zeroRecords": "Maaf, tidak dapat menemukan apapun",
                    "info": "Menampilkan halaman _PAGE_ dari _PAGES_ halaman",
                    "infoEmpty": "Tidak ada siswa yang dapat ditampilkan",
                    "infoFiltered": "(tersaring dari _MAX_ total siswa)",
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