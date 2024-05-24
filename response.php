<?php require_once 'config/connect.php'; ?>

<?php header("Access-Control-Allow-Origin: http://localhost:3000"); ?>

<?php
    $products = mysqli_query($connect, "SELECT * FROM `products`");

    $arr = [];
   
    foreach($products as $item) {
        array_push($arr,$item);
    }

    $json_data = json_encode($arr);

    print_r($json_data);
    
 

?>