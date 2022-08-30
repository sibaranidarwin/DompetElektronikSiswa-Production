<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>Daftar Admin</title>
</head>
 <body>
 	<div class="container py-2 text-center form-daftar-sekolah">
                <h2 class="font-weight-light">Pendaftaran Sekolah</h2>

                <p>Daftarkan sekolah anda dan nikmati kemudahanya!</p>

                <form action="../actions/daftar_sekolah.php" method="post" class="mt-4">
                    <div class="form-group">
                        <label for="nama_sekolah">Nama Sekolah</label>
                        <input type="text" name="nama_sekolah" id="nama_sekolah" class="form-control input-sm" required>
                    </div>

                    <div class="form-group">
                        <label for="email_sekolah">Email Sekolah</label>
                        <input type="email" name="email_sekolah" id="email_sekolah" class="form-control input-sm" required>
                    </div>

                    <div class="form-group">
                        <label for="npsn_sekolah">NPSN</label>
                        <input type="number" name="npsn_sekolah" id="npsn_sekolah" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="status">Status</label>
                        <select class="form-control" id="status" name="status" required>
                            <option value="negeri">Negeri</option>
                            <option value="swasta">Swasta</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="bentuk_pendidikan">Bentuk Pendidikan</label>
                        <select class="form-control" id="bentuk_pendidikan" name="bentuk_pendidikan" required>
                            <option value="SMP">SMP</option>
                            <option value="MTS">MTS</option>
                            <option value="SMK">SMK</option>
                            <option value="SMA">SMA</option>
                            <option value="MA">MA</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="alamat">Alamat</label>
                        <input type="text" name="alamat" id="alamat" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="kode" name="kode">
                            <label class="form-check-label" for="kode">Perbolehkan Siswa Mendaftar Sendiri</label>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary mt-3">Daftarkan</button>
                </form>
            </div>
        </body>
        </html>