<?php
include('../../conf/config.php');
$id = $_GET['id'];

$query = mysqli_query($koneksi, "DELETE FROM tb_siswa WHERE id='$id'");
header('location: ../pages/data_siswa.php');
