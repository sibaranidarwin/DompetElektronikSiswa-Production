<!DOCTYPE html>
<html lang="en">

<head>
    <?php include "../component/helmet.php" ?>
    <title>Login Tata Usaha</title>
</head>

<body>
    <?php include "../process/redirectLoggedUser.php" ?>
    
   <div style="background-color: white">
<div class="main-content">
    <div class="header py-7 py-lg-8 pt-lg-9" style="background-color: white;">
    </div>
    <div class="container mt--8 pb-5">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7" style="margin-top: 150px">
                <div class="card bg-secondary border-0 mb-0">
                    <div class="card-body px-lg-5 py-lg-5" style="background-color: #F2F2F2;" >
                        <div class="text-center text-muted mb-4">
                            <a href="index.php"><img src="../assets/ab.jpg" style="width: 100px;"></a>
                        </div>
                      <form action="../actions/login_sekolah.php" method="POST">
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative">
                                    <div class="input-container">
                                        <i class="fa fa-envelope fa-2x" aria-hidden="true"></i>
                                    </div>
                                    &nbsp;&nbsp;&nbsp;
                                    <input type="email" name="siswaemail" id="siswaemail" class="form-control" placeholder="Email">
                                    
                                    <div class="invalid-feedback" role="alert">
                                    
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group input-group-merge input-group-alternative">
                                    <div class="input-container">
                                        <i class="fa fa-eye fa-2x" aria-hidden="true"></i>
                                    </div>
                                    &nbsp;&nbsp;
                                    <input type="password" name="siswapass" id="siswapass" class="form-control" placeholder="Password">
                                  
                                    <div class="invalid-feedback" role="alert">
                                        
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="submit" style="" class="btn btn-primary">Login</button>
                            </div>
                             <a  style="margin-left: 130px;" href="register.php" class="text-light"><p style=" color: #333333;">Buat Akun Baru?</p></a>
                            <div class="row">
                </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
</body>

</html> 