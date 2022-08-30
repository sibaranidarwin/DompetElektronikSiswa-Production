<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>Login</title>
</head>
 <body>
    <div class="container py-2 text-center form-daftar-siswa">
                <h2 class="font-weight-light">Pendaftaran Tata usaha</h2>


                <form action="../actions/register_sekolah.php" method="post">
                    <div>
                        <div class="form-group">
                            <label for="kode_sekolah">Kode Sekolah</label>
                            <input type="text" class="form-control" name="kode_sekolah" id="kode_sekolah" required>
                        </div>
                    </div>
                     <div class="form-group">
                            <label for="nama">Nama Pengurus sekolah</label>
                            <input type="text" name="nama" id="nama" class="form-control input-sm" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" class="form-control" required>
                        </div>
                         <div class="form-group">
                            <label for="password">Kata Sandi</label>
                            <input type="password" name="password" id="password" class="form-control input-sm" required>
                        </div>


                        <input type="hidden" name="idsekolah" value="<?= $res ?>">

                        <input type="submit" value="Selesai" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>

            </body>
 </html>    