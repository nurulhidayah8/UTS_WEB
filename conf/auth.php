<?php
include('config.php');
$username = $_POST['username'];
$password = $_POST['password'];

$query = mysqli_query($koneksi, "SELECT * FROM tb_users WHERE username='$username' AND password='$password'");
if (mysqli_num_rows($query) == 1) {
    header('location:../app/pages/dashboard.php');
} else {
    header('location:../');
}
echo $username;
echo $password;
