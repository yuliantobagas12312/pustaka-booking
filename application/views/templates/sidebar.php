        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admin">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-book"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Pustaka Booking</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider">
 


            <!-- Looping Menu-->
                <div class="sidebar-heading">
                    Home
                </div>
                    <li class="nav-item active">
                        <!-- Nav Item - Dashboard -->
                        <li class="nav-item">
                            <a class="nav-link pb-0" href="<?= base_url('Home'); ?>">
                                <i class="fa fa-fw fa book"></i>
                                <span>Dashboard</span></a>
                        </li>
                    </li>

                <!-- Divider -->
                <hr class="sidebar-divider mt-3">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Master Data
                </div>
                    <!-- Nav Item - Dashboard -->
                    <li class="nav-item active">
                        <!-- Nav Item - Dashboard -->
                        <li class="nav-item">
                            <a class="nav-link pb-0" href="<?= base_url('buku/kategori'); ?>">
                                <i class="fa fa-fw fa book"></i>
                                <span>Kategori Buku</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link pb-0" href="<?= base_url('buku'); ?>">
                                <i class="fa fa-fw fa book"></i>
                                <span>Data Buku</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link pb-0" href="<?= base_url('user/anggota'); ?>">
                                <i class="fa fa-fw fa book"></i>
                                <span>Data Anggota</span></a>
                        </li>
                    </li>
                <!-- Divider -->
                <hr class="sidebar-divider mt-3">

            <!-- divider -->
            <div class-"sidebar-heading">
                  Transaksi
            </div>
            <!-- nav item - dashboard -->
            <li class="nav-item active">
                <!-- nav item - dasboard -->
            <li class="nav-item">
                <a class="nav-link pb-0" href="<?= base_url('pinjam'); ?>">
                    <i class="fa fa-fw fa-shopping-cart"></i>
                    <span>Data peminjaman</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link pb-0" href="<?= base_url('pinjam/daftarbooking'); ?>">
                    <i class="fa fa-fw fa-list"></i>
                    <span>Data booking(<?= $this->db->query("select*from booking")->num_rows(); ?> data)</span></a>
            </li>
            </li>
            <!--heading -->
            <div class-"sidebar-heading">
                  laporan
            </div>
            <!-- nav item - dashboard -->
            <li class="nav-item active">
                <!-- nav item - dasboard -->
            <li class="nav-item">
                <a class="nav-link pb-0" href="<?= base_url('laporan/laporan_buku'); ?>">
                    <i class="fa fa-fw fa-address-book"></i>
                    <span>laporan data buku </span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link pb-0" href="<?= base_url('laporan/laporan_anggota'); ?>">
                    <i class="fa fa-fw fa-address-book"></i>
                    <span>laporan data anggota</span></a>
            </li>
           <li class="nav-item">
                <a class="nav-link pb-0" href="<?= base_url('laporan/laporan_pinjam'); ?>">
                    <i class="fa fa-fw fa-address-book"></i>
                    <span>laporan peminjaman </span></a>
            </li>
            <li>

            <!-- divider -->
            <hr class="sidebar-divider mt-3">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar --   >
