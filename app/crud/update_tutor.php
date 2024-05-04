<?php
include('../../conf/config.php');
$id = $_GET['id'];
$nama = $_GET['nama'];
$tempat = $_GET['tempat'];
$tgl = $_GET['tgl'];
$jnskel = $_GET['jnskel'];
$nohp = $_GET['nohp'];
$email = $_GET['email'];
$alamat = $_GET['alamat'];

$query = mysqli_query($koneksi, "UPDATE tb_tutor SET nama='$nama', tempat='$tempat', tgl='$tgl', jnskel='$jnskel', nohp='$nohp', email='$email', alamat='$alamat' WHERE id='$id'");
header('location: ../pages/data_tutor.php');
