<?php 
require_once 'config/connect.php'; 

$id = $_GET['id'];
$product = mysqli_query($connect, "SELECT * FROM `products` WHERE `id` = '$id'");
$product = mysqli_fetch_assoc($product);

//print_r($product); die;

// $img = $product['img'];
// print_r($img); 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.4.1/milligram.min.css
">
    <link rel="stylesheet" href="css/style.css">
    <title>update</title>
</head>
<body>
    
<div class="container">
    <h2>Редактировать товар</h2>
    <form class="form" action="vendor/update.php" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?= $product['id'] ?>" id="nameId">
        <label for="nameId">Название</label>
        <input type="text" name="name" value="<?= $product['name'] ?>" id="costId">
        <label for="costId">Цена</label>
        <input type="number" name="cost" value="<?= $product['cost'] ?>">
        <label for="fileId">Фото</label>
        <input type="file" name="filename" id="fileId">
        <input type="text" name="old_image" value="<?= $product['img'] ?>">
        <label for="descriptionId">Описание</label>
        <textarea name="description" id="descriptionId"><?= $product['description'] ?></textarea>
        <label for="categoryId">Категория</label>
        <select name="category" id="categoryId">
            <option value="<?= $product['category'] ?>"><?= $product['category'] ?></option>
            <option value="procladki_smesitel">Прокл на смеситель</option>
            <option value="amerikanka">Прокл на Американку</option>
            <option value="silikon">Прокл силиконовые</option>
            <option value="procladki_rezina">Прокл резина</option>
            <option value="paronit">Прокл паронит</option>
            <option value="krepezh">Крепеж крышки</option>
            <option value="homuty">Хомуты</option>
            <option value="smazka">Смазки и герметики</option>
            <option value="bidon">Кольца бидон</option>
            <option value="rezina">Манжета рез-я</option>
            <option value="roliki">Ролики для душевых</option>
            <option value="fum">Фум лента</option>
        </select>
        <button class="button blue" type="submit">Редактировать</button>
    </form>
</div>

</body>
</html>