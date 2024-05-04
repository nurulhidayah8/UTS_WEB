<?php
include('../../conf/config.php');
$nama = $_GET['nama'];
$tempat = $_GET['tempat'];
$tgl = $_GET['tgl'];
$jnskel = $_GET['jnskel'];
$kelas = $_GET['kelas'];
$alamat = $_GET['alamat'];


$query = mysqli_query($koneksi, "INSERT INTO tb_siswa (id, nama, tempat, tgl, jnskel, kelas, alamat) VALUES ('', '$nama','$tempat','$tgl','$jnskel','$kelas','$alamat')");
header('location: ../pages/data_siswa.php');
