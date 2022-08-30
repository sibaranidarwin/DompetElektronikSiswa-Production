<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>Login</title>
</head>
 <body>
    <div class="container py-2 text-center form-daftar-siswa">
                <h2 class="font-weight-light">Pendaftaran Siswa</h2>

                <p>Sekolah kamu menggunakan DEKSi? kamu bisa mendaftar dengan form di bawah ini!</p>

                <form action="../actions/register_siswa.php" method="post">
                    <div>
                        <div class="form-group">
                            <label for="kode_sekolah">Kode Sekolah</label>
                            <input type="text" class="form-control" name="kode_sekolah" id="kode_sekolah" required>
                        </div>

                        <div class="form-group">
                            <label for="nama_siswa">Nama</label>
                            <input type="text" class="form-control" name="nama" id="nama_siswa" required>
                        </div>

                        <div class="form-group">
                            <label for="kelamin">Kelamin</label>
                            <select class="form-control" id="kelamin" name="kelamin" required>
                                <option value="laki-laki">Laki-Laki</option>
                                <option value="perempuan">Perempuan</option>
                            </select>
                        </div>
                    </div>

                    <div>
                        <div class="form-group">
                            <label for="email_siswa">Email</label>
                            <input type="email" class="form-control" name="email" id="email_siswa" required>
                        </div>

                        <div class="form-group">
                            <label for="tingkatan">Tingkatan</label>
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

                    <div>
                        <div class="form-group">
                            <label for="jurusan_siswa">Jurusan</label>
                            <input type="text" class="form-control" name="jurusan" id="jurusan_siswa" required>
                        </div>

                        <div class="form-group">
                            <label for="kelas_siswa">Kelas</label>
                            <input type="text" class="form-control" name="kelas" id="kelas_siswa" required>
                        </div>
                    </div>

                    <div>
                        <div class="form-group">
                            <label for="nisn_siswa">NISN</label>
                            <input type="number" class="form-control" name="nisn" id="nisn_siswa" required>
                        </div>
                    </div>

                    <input type="submit" class="btn btn-primary" value="Masukan">
                </form>
            </div>
            </body>
 </html>    