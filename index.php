<?php
	include'inc/header.php';
	include'inc/slider.php';

?>

 <div class="main">
 
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Sản phẩm nổi bật</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">
	      	<?php 
	      		$getproduct_feathered = $product->getproduct_feathered();
	      		if($getproduct_feathered){
	      			while($result = $getproduct_feathered->fetch_assoc()){
	      	 ?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img height="250px" src="admin/uploads/<?php echo $result['image']?> " alt="" /></a>
					 <h2><?php echo $result['productName']?> </h2>
					 <p><?php echo $fm->textShorten( $result['product_desc'],100 )  ?></p>
					 <p><span class="price"><?php echo $fm->format_curency( $result['price']) ." "."VNĐ"  ?></span></p>
				     <div class="button"><span ><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Xem chi tiết</a></span></div>
				</div>

				<?php
				}
			}
				?>
			</div>

			<div class="content_bottom">
    		<div class="heading">
    		<h3>Sản phẩm mới nhất</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
			<div class="section group">
					<?php 
	      		$product_new = $product->getproduct_new();
	      		if($product_new){
	      			while($result_new = $product_new->fetch_assoc()){
	      	 ?>
				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result_new['productId']?>"><img height="250px" src="admin/uploads/<?php echo $result_new['image']?> " alt="" /></a>
					 <h2 style="font-size:20px"><?php echo $result_new['productName']?> </h2>
					 <p><?php echo $fm->textShorten( $result_new['product_desc'],100 )  ?></p>
					 <p><span class="price"><?php echo $fm->format_curency( $result_new['price']) ." "."VNĐ"  ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result_new['productId']
				  ?>" class="details">Xem chi tiết</a></span></div>
				</div>
					<?php
				}
			}
				?>
			</div>
			<div class="">
				<?php  
					$product_all = $product->get_all_product();
					$product_count =mysqli_num_rows($product_all);
					 $product_button =$product_count/3;
					 $i=0;
					 // ceil () là hàm làm tròn số
					 // echo ceil($product_button);
					 echo'<p>Trang :</p>';
					 for($i=1;$i<$product_button;$i++){
					 	echo  '<a style="margin:5px;"href ="index.php?trang='.$i.'">'.$i.'</a>';
					
					 }
				?>
			</div>
    </div>
 </div>
<?php
	include'inc/footer.php';
	
?>
 
