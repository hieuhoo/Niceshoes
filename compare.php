<?php
	include'inc/header.php';
	//include'inc/slider.php';

?>
<?php 
// if(isset($_GET['cartid'])){
     
//         $cartid=$_GET['cartid'];
//          $delcart= $ct -> del_product_cart($cartid);
//     }
 // if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['submit'])){
 // 	$cartId= $_POST['cartId'];
 //   $quantity= $_POST['quantity'];
 //    $update_quantity_cart= $ct -> update_quantity_cart($quantity,$cartId);

 //    if($quantity<=0){
 //    	 $delcart= $ct -> del_product_cart($cartId);
    
 //    }
 // }
 ?>
  <!-- khi thêm vào giỏ 1 sản phẩm mới chưa từng có trong giỏ thì id sẽ bàng live -->
<!-- <?php 
if(!isset($_GET['id'])){
	echo "<meta http-equiv='refresh' content='0;URL=?id=live'>";
}
 ?> -->

 <div class="main">
    <div class="content">
    	<div class="cartoption">		
			<div class="cartpage">
			    	<h2>So sánh sản phẩm </h2>
			    	<?php 
			    	if(isset($update_quantity_cart)){
			    		echo $update_quantity_cart;
			    	}
			    	 ?>
			    	 <?php 
			    	if(isset($delcart)){
			    		echo $delcart;
			    	}
			    	 ?>
						<table class="tblone">
							<tr>
								<th width="10%">ID </th>
								<th width="20%">Tên sản phẩm</th>
								<th width="20%">Hình ảnh</th>
								<th width="15%">Đơn giá</th>
								<th width="15%">Thao tác</th>
								
							</tr>
							<?php 
							$customer_id= Session::get('customer_id');
							$get_compare =$product->get_compare($customer_id);
							if($get_compare){
									$i=0;
								while($result=$get_compare->fetch_assoc()){
									$i++;
							 ?>
							
							<tr>
								<td><?php echo $i;?></td>
								<td><?php echo $result['productName']?></td>
								<td><img src="admin/uploads/<?php echo $result['image']?>" alt="" /></td>
								<td><?php echo $fm->format_curency($result['price']).' '.'VND' ?></td>
							
								<td><a href="details.php?proid=<?php echo $result['productId'] ?>">Xem</a></td>
							</tr>
							<?php
						
								}

							}
							?>
													
						</table>
							
						
					</div>
					<div class="shopping">
						<div class="shopleft">
							<a href="index.php"><img src="images/con shopping.jpg"class="cangiua" alt="" /></a>
						</div>
						
					</div>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php
	include'inc/footer.php';
	
?>
 

