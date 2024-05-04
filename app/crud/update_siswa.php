<?php
include('../../conf/config.php');
$id = $_GET['id'];
$nama = $_GET['nama'];
$tempat = $_GET['tempat'];
$tgl = $_GET['tgl'];
$jnskel = $_GET['jnskel'];
$kelas = $_GET['kelas'];
$alamat = $_GET['alamat'];

$query = mysqli_query($koneksi, "UPDATE tb_siswa SET nama='$nama', tempat='$tempat', tgl='$tgl', jnskel='$jnskel', kelas='$kelas', alamat='$alamat' WHERE id='$id'");
header('location: ../pages/data_siswa.php');
