<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

if(isset($_POST['add_to_cart'])){

   $product_name = $_POST['product_name'];
   $product_price = $_POST['product_price'];
   $product_image = $_POST['product_image'];
   $product_quantity = $_POST['product_quantity'];

   $check_cart_numbers = mysqli_query($conn, "SELECT * FROM `cart` WHERE name = '$product_name' AND user_id = '$user_id'") or die('query failed');

   if(mysqli_num_rows($check_cart_numbers) > 0){
      $message[] = 'already added to cart!';
   }else{
      mysqli_query($conn, "INSERT INTO `cart`(user_id, name, price, quantity, image) VALUES('$user_id', '$product_name', '$product_price', '$product_quantity', '$product_image')") or die('query failed');
      $message[] = 'product added to cart!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Home</title>
<link rel="icon" type="image/png" href="images/logo7.png">

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>

<?php include 'header.php'; ?>

<section class="home">
<div>
<center><a href="about.php"><img src="images/logo.png" width="800" height="300"></center>
</div>

</section>

<section class="products">

   <h1 class="title">Our Products and dealers</h1>
   <div><center><img src="images/Screenshot_2024_0324_110328.jpg" alt="Television">
   <img src="images/Screenshot_2024_0324_110345.jpg" alt="Mobile"></center>
   </div>
   <div><center><img src="images/Screenshot_2024_0324_110359.jpg" alt="Earbuds">
   <img src="images/Screenshot_2024_0324_113800.jpg" alt="Laptop">
   <img src="images/Screenshot_2024_0324_110415.jpg" alt="Home Theatre"></center>
   </div>
   <h1 class="title">Latest Products</h1>

   <div class="box-container">

      <?php  
         $select_products = mysqli_query($conn, "SELECT * FROM `products` LIMIT 6") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
     <form action="" method="post" class="box">
      <img class="image" src="uploaded_img/<?php echo $fetch_products['image']; ?>" alt="">
      <div class="name"><?php echo $fetch_products['name']; ?></div>
      <div class="price">$<?php echo $fetch_products['price']; ?>/-</div>
      <input type="number" min="1" name="product_quantity" value="1" class="qty">
      <input type="hidden" name="product_name" value="<?php echo $fetch_products['name']; ?>">
      <input type="hidden" name="product_price" value="<?php echo $fetch_products['price']; ?>">
      <input type="hidden" name="product_image" value="<?php echo $fetch_products['image']; ?>">
      <input type="submit" value="add to cart" name="add_to_cart" class="btn">
     </form>
      <?php
         }
      }else{
         echo '<p class="empty">no products added yet!</p>';
      }
      ?>
   </div>

   <div class="load-more" style="margin-top: 2rem; text-align:center">
      <a href="shop.php" class="option-btn">Load more</a>
   </div>

</section>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/about-img.jpg" alt="">
      </div>

      <div class="content">
         <h3>About Us</h3>
         <p>WebCart has enabled millions of consumers, sellers, merchants, and small businesses to be a part of India's digital commerce revolution, with a registered customer base of more than 400 million, offering over 150 million products across 80+ categories. Our efforts to democratize commerce in India, drive access and affordability, delight customers, create lakhs of jobs in the ecosystem, and empower generations of entrepreneurs and MSMEs have inspired us to innovate on many industry firsts.</p>
         <a href="about.php" class="btn">Read More</a>
      </div>

   </div>

</section>

<section class="home-contact">

   <div class="content">
      <h3>Have any questions?</h3>
      <p>The pain should be followed. And no matter how much exercise is rejected, he will love any pleasure..</p>
      <a href="contact.php" class="white-btn">Contact Us</a>
   </div>

</section>





<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>