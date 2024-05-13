<?php

require_once '../config/connect.php';

$id = $_GET['id'];


$sql = "DELETE FROM `products` WHERE `products`.`id` = $id";
mysqli_query($connect, $sql);

header("Location: /");