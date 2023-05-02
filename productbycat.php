<?php
	include'inc/header.php';
	// include'inc/slider.php';

?>
<?php 
	
    if(!isset($_GET['catid']) || $_GET['catid']==NULL){
        echo "<script>window.location ='404.php'</script>";    
    }else{
        $id=$_GET['catid'];
    }

 //     if($_SERVER['REQUEST_METHOD']==='POST'){
 //    $catName=$_POST['catName'];

 //    $updateCat= $cat -> update_category($catName,$id);
 // }
 ?>
 <div class="main">
    <div class="content">
    			<?php 
	      		$name_cat= $cat->get_name_by_cat($id);
	      		if($name_cat){
	      			while($result_name =$name_cat->fetch_assoc()){
	      	 ?>
    	<div class="content_top">

    		<div class="heading">
    			<h3>Danh mục :<span style="color:red;"> <?php echo $result_name['catName']?></span> </h3>
    		</div>
    			<?php
					}}
				
			?>
    		<div class="clear"></div>

    		</div>
	      <div class="section group">
	      	<?php 
	      		$productbycat= $cat->get_product_by_cat($id);
	      		if($productbycat){
	      			while($result =$productbycat->fetch_assoc()){
	      	 ?>

				<div class="grid_1_of_4 images_1_of_4">
					 <a href="details.php?proid=<?php echo $result['productId'] ?>"><img  height="250px"src="admin/uploads/<?php echo $result['image'] ?> " width="250px" alt="" /></a>
					 <h2 style="font-size:20px"><?php echo $result['productName'] ?> </h2>
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


