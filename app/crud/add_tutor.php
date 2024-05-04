<?php
include('../../conf/config.php');
$nama = $_GET['nama'];
$tempat = $_GET['tempat'];
$tgl = $_GET['tgl'];
$jnskel = $_GET['jnskel'];
$nohp = $_GET['nohp'];
$email = $_GET['email'];
$alamat = $_GET['alamat'];

$query = mysqli_query($koneksi, "INSERT INTO tb_tutor (id, nama, tempat, tgl, jnskel, nohp, email, alamat) VALUES ('', '$nama','$tempat','$tgl','$jnskel','$nohp','$email','$alamat')");
header('location: ../pages/data_tutor.php');
