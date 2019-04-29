	<!DOCTYPE html>
<html lang="en">

<head>

<?php

?>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Assig 2 3</title>
    <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="css/slick.css" />
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css" />
		<?php
        //Connectig to Database
    require_once("config.php");
    $connection = mysqli_connect(DBHOST, DBUSER, DBPASSWORD, DBNAME);

    if (mysqli_connect_error()) {
        die(mysqli_connect_error());
    }

    $sql = "SELECT * FROM product";

    $result = mysqli_query($connection, $sql);
    ?>


</head>

<body>
    <!-- HEADER -->
   <?php include 'header.php'; ?>
    <!-- section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!-- section title -->
                <div class="col-md-16">
                    <div class="section-title">
                        <h2 class="title">Shirts</h2>
                    </div>
                </div>
                <!-- section title -->
                <!-- Product Single -->
				
		<div class="row">
	 <div class="col-md-12">
	 <?php
            $count = 1;
			

            while ($row = mysqli_fetch_assoc($result)) {

			if($count%4==0){
			?>
			 
			
			<?php
			 }
			 ?>
					<div class="col-md-3 col-sm-6 col-xs-6">
                    <div class="product product-single">
                        <div class="product-thumb">
							<a href="product-page.php?id=<?= $count ?>">
                            <button class="main-btn quick-view" name='btn_1' value='.$count.'> <i class="fa fa-search-plus"></i> Quick view</button>

                            <img src="./img/<?php echo $count.".png"?>" alt=>
                        </div>
                        <div class="product-body">
                            <h2 class="product-name"><a href="#">Model:<?php echo $row['Name']?>  &nbsp; Brand: <?php echo $row['Brand']?></a></h2>
                            
                            
                        </div>
                    </div>
                </div>
                 
                   
                   
                </div>

                <?php
                if ($count % 4 == 0) {
                    ?>

                    <br />

                <?php
            }
            ?>

                <?php
                $count++;

            }
            ?>

			</div>
             </div>   
			 </div>
           
 
             <?php include 'footer.php'; ?>

</body>

</html>
