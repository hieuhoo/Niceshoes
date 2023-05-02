
	<div class="header_bottom">
		<div class="header_bottom_left">
			<div class="section group">
				<?php 
					$getLastedBalen = $product->getLastedBalen();
					if($getLastedBalen){
						while($resultbalen=$getLastedBalen->fetch_assoc()){
				 ?>

				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $resultbalen['productId'] ?>"> <img  src="admin/uploads/<?php echo $resultbalen['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Balenciaga</h2>
						<p><?php echo $resultbalen['productName']  ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultbalen['productId'] ?>">Xem chi tiêt</a></span></div>
				   </div>
			   </div>	
			   <?php
					   }
					}
			   ?>	
			   <?php 
					$getLastedJordan = $product->getLastedJordan();
					if($getLastedJordan){
						while($resultjordan=$getLastedJordan->fetch_assoc()){
				 ?>	
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						  <a href="details.php?proid=<?php echo $resultjordan['productId'] ?>"><img src="admin/uploads/<?php echo $resultjordan['image'] ?>" alt="" / ></a>
					</div>
					<div class="text list_2_of_1">
						  <h2>Jordan</h2>
						  <p><?php echo $resultjordan['productName']  ?></p>
						  <div class="button"><span><a href="details.php?proid=<?php echo $resultjordan['productId'] ?>">Xem chi tiết</a></span></div>
					</div>
				</div>

			</div>
						   <?php
					   }
					}
			   ?>	
			<div class="section group">
				<?php 
					$getLastedYeezy = $product->getLastedYeezy();
					if($getLastedYeezy){
						while($resultyeezy=$getLastedYeezy->fetch_assoc()){
				 ?>

				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="details.php?proid=<?php echo $resultyeezy['productId'] ?>"> <img src="admin/uploads/<?php echo $resultyeezy['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>Adidas</h2>
						<p><?php echo $resultyeezy['productName']  ?></p>
						<div class="button"><span><a href="details.php?proid=<?php echo $resultyeezy['productId'] ?>">Xem chi tiết</a></span></div>
				   </div>
			   </div>		
			   	<?php
					   }
					}
			   ?>		
			   	<?php 
					$getLastedConverse = $product->getLastedConverse();
					if($getLastedConverse){
						while($resultconverse=$getLastedConverse->fetch_assoc()){
				 ?>
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						  <a href="details.php?proid=<?php echo $resultconverse['productId'] ?>"> <img src="admin/uploads/<?php echo $resultconverse['image'] ?>" alt="" /></a>
					</div>
					<div class="text list_2_of_1">
						  <h2>Converse</h2>
						  <p><?php echo $resultconverse['productName']  ?></p>
						  <div class="button"><span><a href="details.php?proid=<?php echo $resultconverse['productId'] ?>">Xem chi tiết</a></span></div>
					</div>
				</div>
				 	<?php
					   }
					}
			   ?>		
			</div>
		  <div class="clear"></div>
		</div>
			 <div class="header_bottom_right_images">
		   <!-- FlexSlider -->
             
			<section class="slider">
				  <div class="flexslider">
					<ul class="slides">
						<?php 
						$get_slider=$product->show_slider();
						if($get_slider){
							while($result_slider=$get_slider->fetch_assoc()){
						 ?>
						
						<li><img src="admin/uploads/<?php echo $result_slider['slider_image']?>" alt="<?php echo $result_slider['sliderName']?>"/></li>
						<?php 
								}
							} 
						?>
					</ul>
				  </div>
	      </section>
<!-- FlexSlider -->
	    </div>
	  <div class="clear"></div>
  </div>	
