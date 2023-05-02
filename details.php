<?php
	include'inc/header.php';
	//include 'inc/slider.php';

?>
<?php 

  if(!isset($_GET['proid']) || $_GET['proid']==NULL){
        echo "<script>window.location ='404.php'</script>";    
    }else{
        $id=$_GET['proid'];
    }
$customer_id= Session::get('customer_id');
 if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['compare'])){
   $productid= $_POST['productid'];
    $insertCompare= $product -> insertCompare($productid,$customer_id);
 }

 if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['wishlist'])){
   $productid= $_POST['productid'];
    $insertWishlist= $product -> insertWishlist($productid,$customer_id);
 }

 if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['submit'])){
   $product_stock=$_POST['product_stock'];
   $quantity= $_POST['quantity'];
    $insertCart= $ct -> add_to_cart($quantity,$product_stock,$id);
 }
if(isset($_POST['binhluan_submit'])){
	$binhluan_insert=$cs->insert_binhluan();
}

 ?>

 <div class="main">
    <div class="content">
    	<div class="section group">

    		<?php 

    			$get_product_details = $product->get_details($id);
    			if($get_product_details){
    				while($result_details=$get_product_details->fetch_assoc()){
    			
    		 ?>

				<div class="cont-desc span_1_of_2">				
					<div class="grid images_3_of_2">
						<img height="400px" width="100px" src="admin/uploads/<?php echo $result_details['image']?>"  alt="" />
					</div>
				<div class="desc span_3_of_2">
					<h2 style="font-size:30px"><?php echo $result_details['productName']?></h2>
					<p style="font-size:35px"><?php echo $fm->textShorten( $result_details['product_desc'])?></p>					
					<div class="price">
						<p style="font-size:16px">Đơn giá: <span><?php echo $fm->format_curency(  $result_details['price'])." "."VNĐ"?></span></p>
						<p style="font-size:16px">Danh mục : <span><?php echo $result_details['catName']?></span></p>
						<p style="font-size:16px">Thương hiệu:<span><?php echo $result_details['brandName']?></span></p>
						<p style="font-size:16px">Kho:<span><?php echo $result_details['product_quantity']?></span></p>
					</div>
				<div class="add-cart">
					
					<form action="" method="post">
							<input type="hidden" class="buyfield" name="product_stock" value="<?php  echo $result_details['product_quantity'] ?>"  />
						<input type="number" class="buyfield" name="quantity" value="1" min="1" />
						<?php 
							if($result_details['product_quantity'] > 0){
						?>
						<input type="submit" class="buysubmit" name="submit" value="Thêm vào giỏ "/>
							<?php
							}
							?>	
					</form>	
				
					<br>	
					<?php  
							if(isset($AddtoCart)){
								echo'<span style="color:red; font_size:20px;">Sản phẩm đã được thêm vào giỏ</span>';
							}
						?>		
				</div>
				<div class="add-cart">
					<div class="button_details">
							<form action="" method="POST">
								<!-- <a href="?wlist=<?php echo$result_details['productId'] ?>" class="buysubmit">Sản phẩm yêu thích</a> -->
								<!-- <a href="?compare=<?php echo$result_details['productId'] ?>" class="buysubmit">So sánh sản phẩm</a> -->
									<input type="hidden"  name="productid" value="<?php echo$result_details['productId'] ?>"/>

							
								<?php 
								  $login_check = Session::get('customer_login');
								  // check session đăng nhập khi có login ms hiển ra wishlist với compare spham
								  if($login_check){
								  	echo'	<input type="submit" class="buysubmit" name="compare" value="So sánh sản phẩm "/>'.' ' ;
								  
								  }else{
								  	echo'';
								  }
			  
			   				?>
			   			
							</form>

							<form action="" method="POST">
								<!-- <a href="?wlist=<?php echo$result_details['productId'] ?>" class="buysubmit">Sản phẩm yêu thích</a> -->
								<!-- <a href="?compare=<?php echo$result_details['productId'] ?>" class="buysubmit">So sánh sản phẩm</a> -->
									<input type="hidden"  name="productid" value="<?php echo$result_details['productId'] ?>"/>

							
								<?php 
								  $login_check = Session::get('customer_login');
								  if($login_check){
								  
								  	echo'	<input type="submit" class="buysubmit" name="wishlist" value="Thêm vào yêu thích ">';
						    		
								  }else{
								  	echo'';
								  }
			  
			   				?>
			   
							</form>

						</div>
						<div class="clear"></div>
						<p>
								<?php

									if(isset($insertCompare)){
										echo $insertCompare;
									}
								
								?>
								<?php

									if(isset($insertWishlist)){
										echo $insertWishlist;
									}
								
								?>
							</p>
							
				</div>

			</div>
			<div class="product-desc">
				<h2>Chi tiết sản phẩm</h2>
				<?php echo ( $result_details['product_desc'])?>
	    </div>
				
	</div>
	<?php
		}
}
	?>
				<div class="rightsidebar span_3_of_1">
					<h2 style="color:red;font-size: 35px;">Danh mục </h2>
					<ul>
						<?php 
						$getall_category =$cat->show_category_fontend();
						if($getall_category){
							while($result_allcat=$getall_category->fetch_assoc()){
						
						 ?>
				      <li style="font-size:20px;"><a href="productbycat.php?catid=<?php echo$result_allcat['catId'] ?>"><?php echo $result_allcat['catName'] ?></a></li>
				      <?php 
				      	}
				      }
				       ?>
    				</ul>
    	
 				</div>
 		</div>
 		<div class="binhluan">
 			<div class="row">

 				<div style="margin-left: 30px;" class="col-md-8">
 					<h5 style="color:red; font-size: 20px;">Bình luận</h5>
 					<?php 
 					if(isset($binhluan_insert)){
 						echo $binhluan_insert;
 					}
 					 ?>
 					
 					<form action="" method="POST">
 						<p><input type="hidden" value="<?php echo $id ?>" name="product_id_binhluan"></p>
				 			<p><input type="text"placeholder="Điền tên"class="form-control" name="tennguoibinhluan"></p>
				 			<p><textarea rows="7" style="resize:none;" class="form-control"placeholder="Nhập comment" name="binhluan"></textarea></p>
				 			<p><input type="submit" class="btn btn-success" value="Gửi bình luận" name="binhluan_submit"></p>
			 		</form>
		 		</div>
		 	</div>
 		</div>
 	</div>
<?php
	include'inc/footer.php';
	
?>


	