<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>
<link rel="icon" type="image/png" href="images/logo7.png">
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>about us</h3>
   <p> <a href="home.php">Home</a> / About </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/about-img.jpg" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
		 <p>Nowadays, eCommerce websites have made online shopping a common practice for people of all ages. WebCart is India's most popular e-commerce website, known for its innovative business model.

WebCart is the leading Indian eCommerce website founded by Hariharan and Ahmed Riyas Kaan in 2024. The company is headquartered in Nagappattinam, Tamilnadu, India. This Indian eCommerce store has brought a revolution to the Indian e-retail industry.

Let's now delve into the success story of WebCart and learn about WebCart's founders, subsidiaries, owners, business and revenue model, and more.</p>
         <p>We are delivering the best product.. We are best at the customer satisfaction.. Very exprienced hand on online shopping..</p>
         <p>Good products at low price</p>
         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="authors">

   <h1 class="title">create authors</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/author-1.jpg" alt="">
         <div class="share">
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
         </div>
         <h3>AHMED RIYAS KAAN A</h3>
      </div>

      <div class="box">
         <img src="images/author-3.jpg" alt="">
         <div class="share">
            <a href="https://www.instagram.com/15_hariharan/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/in/hariharan-p-2a5898298" class="fab fa-linkedin"></a>
         </div>
         <h3>HARIHARAN P</h3>
      </div>

   </div>

</section>







<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>