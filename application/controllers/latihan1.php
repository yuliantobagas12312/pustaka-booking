<?php
class latihan1 extends CI_Controller
{
public function penjumlahan ($n1,$n2)
{
	echo "SELAMAT DATANG.. Selamat belajar Web Programming
	<br><br> Nama : Yulianto Bagas Saputro
	<br> Nim : 19040165
	<br> Kelas : 5E";

	$this->load->model('Model_latihan1');

	$data['nilai1'] = $n1;
	$data['nilai2'] = $n2;
	$data['hasil'] = $this->Model_latihan1->jumlah($n1, $n2);

	$this->load->view ('view-latihan1', $data);
}
} 
