<!DOCTYPE html>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <style type="text/css">
            .table-data{
                width: 100%;
                border-collapse: collapse;
            }

            .table-data tr th,
            .table-data tr td{
                border: 1px solid black;
                font-size: 11pt;
                font-family:Verdana;
                padding: 10px 10px 10px 10px;
            }
            .table-data th{
                background-color:grey;
            }
            h3{
                font-family:Verdana;
            }
        </style>
        <h3><center>LAPORAN DATA ANGGOTA</center></h3>
        <br/>
        <table class="table-data">
            <thead>
            <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama Anggota</th>
                        <th scope="col">Alamat</th>
                        <th scope="col">Email</th>
                        <th scope="col">Tangal Dibuat</th>
                        <th scope="col">gambar</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $a = 1;
                    foreach ($anggota as $u) { ?>
                <tr>
                <th scope="row"><?= $a++; ?></th>
                <td><?= $u['nama']; ?></td>
                <td><?= $u['alamat']; ?></td>
                <td><?= $u['email']; ?></td>
                <td><?= $u['tanggal_input']; ?></td>
                <td><?= $u['image']; ?></td>
                </tr> 
                <?php   
                } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>