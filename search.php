<?php
	include'inc/header.php';
	// include'inc/slider.php';

?>
<?php 
	
  
 ?>
 <div class="main">
    <div class="content">
    <?php 
	      		
		     if($_SERVER['REQUEST_METHOD']=='POST'){
		    $tukhoa=$_POST['tukhoa'];

		    $search_product = $product -> search_product($tukhoa);
		 }
	  ?>
    	<div class="content_top">

    		<div class="heading">
    		<h3>Từ khóa tìm kiếm : <span style="color:red;"><?php echo $tukhoa ?></span> </h3>
    		</div>
    		
    		<div class="clear"></div>

    	</div>
	      <div class="section group">
	      	<?php 
	      		
	      		if($search_product){
	      			while($result =$search_product->fetch_assoc()){
	      	 ?>

				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img height="250px" src="admin/uploads/<?php echo $result['image'] ?> " width="250px" alt="" /></a>
					 <h2><?php echo $result['productName'] ?> </h2>
					 <p><?php echo $fm->textShorten($result['product_desc'],50); ?></p>
					 <p><span class="price"><?php echo $fm->format_curency( $result['price']).' '.'VND' ?></span></p>
				     <div class="button"><span><a href="details.php?proid=<?php echo $result['productId'] ?>" class="details">Xem chi tiết</a></span></div>
				</div>
				<?php
			}
		}else{
			echo 'Chưa có sản phẩm thuộc loại này';
		}
			?>
			</div>

	
	
    </div>
 </div>
<?php
	include'inc/footer.php';
	
?>


