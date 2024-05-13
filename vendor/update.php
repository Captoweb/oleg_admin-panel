<?php

require_once '../config/connect.php';

$product = mysqli_query($connect, "SELECT * FROM `products` WHERE `id` = '$id'");
$product = mysqli_fetch_assoc($product);

//var_dump($_FILES['filename']['error']); die;

if ($_FILES['filename']['error'] === UPLOAD_ERR_OK) {
    // UPLOAD_ERR_OK --- Ошибок не возникло, файл был успешно загружен на сервер
    $img = $_FILES['filename']['name'];
    move_uploaded_file($_FILES['filename']['tmp_name'], '../img/'.$_FILES['filename']['name']);
} else {
    // Если новая картинка не была загружена, используем старую
    $img = $_POST['old_image'];
}


$id = $_POST['id'];
$name = $_POST['name'];
$cost = $_POST['cost'];
$description = $_POST['description'];
$category = $_POST['category'];

$sql = "UPDATE `products` SET `name` = '$name', `cost` = '$cost', `description` = '$description', `img` = '$img', `category` = '$category' WHERE `products`.`id` = $id";
mysqli_query($connect, $sql);

header("Location: /");