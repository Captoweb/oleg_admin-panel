<?php

require_once '../config/connect.php';

// print_r($_FILES['filename']['name']. '<br>');
// print_r($_FILES['filename']['tmp_name']); 

// C:\OSPanel\userdata\temp\upload\php1224.tmp
// C:\OSPanel\domains\crud\vendor\temp\rolic1.jpg

if (move_uploaded_file($_FILES['filename']['tmp_name'], '../img/'.$_FILES['filename']['name']) ) {
    echo 'Файл успешно загружен';
} else {
    echo 'Ошибка загрузки файла';
}



$name = $_POST['name'];
$name = trim($name);
$name = stripslashes($name);
$name = htmlspecialchars($name);

$cost = $_POST['cost'];
$cost = trim($cost);
$cost = stripslashes($cost);
$cost = htmlspecialchars($cost);

$description = $_POST['description'];
$description = trim($description);
$description = stripslashes($description);
$description = htmlspecialchars($description);
$img = $_FILES['filename']['name'];

$category = $_POST['category'];

mysqli_query($connect, "INSERT INTO `products`(`id`, `name`, `cost`, `description`, `img`, `category`) 
              VALUES (NULL, '$name', '$cost', '$description', '$img', '$category') ");

// INSERT INTO `products` (`id`, `name`, `cost`, `description`, `img`, `category`) 
//       VALUES (NULL, 'новый ролик', '300', 'хорошие ролики покупаем быстрее', 'rolik2.jpg', 'roliki');

header("Location: /");