<?php require_once '../config/connect.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="https://unpkg.com/chota"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.4.1/milligram.min.css
">
    <link rel="stylesheet" href="../css/style.css">
    
    <title>crud</title>
</head>
<body>

<?php 
    $category = $_SERVER['QUERY_STRING']; 

    $products = mysqli_query($connect, "SELECT * FROM `products` WHERE `category` = '$category'");
    //$products = mysqli_fetch_all($products);
?>

<div class="wrapper">
    <div class="left-menu close">
        <li><a href = '/'>Главная</a><div class="strelka"></div></li>

        <li><a href = '/template/category.php?roliki'>Ролики для душевых</a></li>
        <li><a href = '/template/category.php?fum'>Фум лента</a></li>	
        <li><a href = '/template/category.php?rezina'>Манжета рез-я</a></li>
        <li><a href = '/template/category.php?bidon'>Кольца бидон</a></li>
        <li><a href = '/template/category.php?smazka'>Смазки и герметики</a></li>
        <li><a href = '/template/category.php?homuty'>Хомуты</a></li>

        <li><a href = '/template/category.php?krepezh'>Крепеж крышки</a></li>
        <li><a href = '/template/category.php?paronit'>Прокл паронит</a></li>	
        <li><a href = '/template/category.php?procladki_rezina'>Прокл резина</a></li>
        <li><a href = '/template/category.php?silikon'>Прокл силикон</a></li>
        <li><a href = '/template/category.php?amerikanka'>Прокл на Американку</a></li>
        <li><a href = '/template/category.php?procladki_smesitel'>Прокл на смеситель</a></li>
    </div>
    <div class="container admin">
        <h2><?= $category;?></h2>
        <table class="table"> 
            <tr>
                <th>id</th>
                <th>img</th>
                <th>name</th>
                <th>cost</th>
                <th>description</th>
                <th>category</th>
                <th>actions</th>
            </tr>
           
            <?php foreach($products as $item): ?>
            <tr>
                <td><?= $item['id']; ?></td>
                <td><img style="height: 45px; width: auto" src="../img/<?= $item['img']; ?>" alt="imgalt"></td>
                <td><?= $item['name']; ?></td>
                <td><?= $item['cost']; ?></td>
                <td><?= $item['description']; ?></td>
                <td><?= $item['category']; ?></td>
                <td><a href="../update.php?id=<?= $item['id']; ?>">
                      <img class="icon-img" src="../img/icons/edit-svgrepo-com.svg" alt="">
                    </a>
                    <a href="vendor/delete.php?id=<?= $item['id']; ?>">
                      <img class="icon-img margin" src="../img/icons/trash-svgrepo-com.svg" alt="">
                    </a>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>

    
    </div>   
</div>
    
<script src="../js/menu.js"></script>
</body>
</html>






