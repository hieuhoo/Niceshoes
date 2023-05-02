<?php
	include'inc/header.php';
	include'inc/slider.php';

?>
 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Latest from Adidas</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">
				
				<?php 
	      		$getproduct_adidas = $product->getproduct_adidas();
	      		if($getproduct_adidas){
	      			while($result = $getproduct_adidas->fetch_assoc()){
	      	 ?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img height="250px" src="admin/uploads/<?php echo $result['image']?> " alt="" /></a>
					 <h2><?php echo $result['productName']?> </h2>
					 <p><?php echo $fm->textShorten( $result['product_desc'],100 )  ?></p>
					 <p><span class="price"><?php echo $fm->format_curency( $result['price']) ." "."VNĐ"  ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Xem chi tiết</a></span></div>
				</div>

				<?php
				}
			}
				?>
			</div>
			<div class="content_bottom">
	    		<div class="heading">
	    			<h3>Latest from Nike</h3>
	    		</div>
    		<div class="clear"></div>
    	   </div>
			<div class="section group">
				<?php 
	      		$getproduct_nike = $product->getproduct_nike();
	      		if($getproduct_nike){
	      			while($result = $getproduct_nike->fetch_assoc()){
	      	 ?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img height="250px" src="admin/uploads/<?php echo $result['image']?> " alt="" /></a>
					 <h2><?php echo $result['productName']?> </h2>
					 <p><?php echo $fm->textShorten( $result['product_desc'],100 )  ?></p>
					 <p><span class="price"><?php echo $fm->format_curency( $result['price']) ." "."VNĐ"  ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Xem chi tiết</a></span></div>
				</div>

				<?php
				}
			}
				?>
				
			</div>
						<div class="content_bottom">
	    		<div class="heading">
	    			<h3>Latest from Jordan</h3>
	    		</div>
    		<div class="clear"></div>
    	   </div>
			<div class="section group">
								<?php 
	      		$getproduct_jordan = $product->getproduct_jordan();
	      		if($getproduct_jordan){
	      			while($result = $getproduct_jordan->fetch_assoc()){
	      	 ?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img height="250px" src="admin/uploads/<?php echo $result['image']?> " alt="" /></a>
					 <h2><?php echo $result['productName']?> </h2>
					 <p><?php echo $fm->textShorten( $result['product_desc'],100 )  ?></p>
					 <p><span class="price"><?php echo $fm->format_curency( $result['price']) ." "."VNĐ"  ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Xem chi tiết</a></span></div>
				</div>

				<?php
				}
			}
				?>
				
			</div>
			<div class="content_bottom">
	    		<div class="heading">
	    			<h3>Latest from Balenciaga</h3>
	    		</div>
    		<div class="clear"></div>
    	   </div>
			<div class="section group">
				<?php 
	      		$getproduct_balenciaga = $product->getproduct_balenciaga();
	      		if($getproduct_balenciaga){
	      			while($result = $getproduct_balenciaga->fetch_assoc()){
	      	 ?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img height="250px" src="admin/uploads/<?php echo $result['image']?> " alt="" /></a>
					 <h2><?php echo $result['productName']?> </h2>
					 <p><?php echo $fm->textShorten( $result['product_desc'],100 )  ?></p>
					 <p><span class="price"><?php echo $fm->format_curency( $result['price']) ." "."VNĐ"  ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Xem chi tiết</a></span></div>
				</div>

				<?php
				}
			}
				?>
				
			</div>
    </div>
 </div>
<?php
	include'inc/footer.php';
	
?>
