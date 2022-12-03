<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pustaka-Booking</title>
    <link rel="stylesheet" href="<?= base_url(); ?>./assets/user/dist/css/bootstrap.css">
    <link rel="stylesheet" href="<?= base_url(); ?>./assets/user/dist/css/bootstrap-grid.css">
    <link rel="stylesheet" href="<?= base_url(); ?>./assets/user/dist/css/bootstrap-reboot.css">
    <link rel="stylesheet" href="<?= base_url(); ?>./assets/vendor/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>./assets/vendor/datatables/dataTables.bootstrap4.css">
</head>
 
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
        <a class="navbar-brand" href="<?= base_url(); ?>">Pustaka</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" ariacontrols="navbarNavAltMarkup" aria-expanded="false" arialabel="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-item nav-link active" href="<?= base_url().'Home'; ?>">Beranda <span class="sronly">(current)</span></a>
            <?php
              if (!empty($this->session->userdata('email'))) { ?>
                <a class="nav-item nav-link" href="<?= base_url().'booking'; ?>">Booking <b><?= $this->ModelBooking->getDataWhere('temp', ['email_user' => $this->session->userdata('email')])->num_rows(); ?></b> Buku</a>
                <a class="nav-item nav-link" href="<?= base_url().'member/myprofil'; ?>">Profil Saya</a>
                <a class="nav-item nav-link" href="<?= base_url().'member/logout'; ?>"><i class="fas fw falogin"></i> Log out</a>
                <?php } else { ?>
                  <a class="nav-item nav-link" data-toggle="modal" data-target="#daftarModal" href="#"><i class="fas fw fa-login"></i> Daftar</a>
                  <a class="nav-item nav-link" data-toggle="modal" data-target="#loginModal" href="#"><i class="fas fw fa-login"></i> Log in</a>
                <?php } ?>
                <span class="nav-item nav-link navright" style="display:block; marginleft:20px;">Selamat Datang <b><?= $user; ?></b></span>
          </div>
        </div>
      </div>
    </nav>
 <div class="container mt-5">
