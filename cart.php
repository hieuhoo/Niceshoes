<?php
	include'inc/header.php';
	//include'inc/slider.php';

?>
<?php 
if(isset($_GET['cartid'])){
     
        $cartid=$_GET['cartid'];
         $delcart= $ct -> del_product_cart($cartid);
    }
 if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['submit'])){
 	$cartId= $_POST['cartId'];
 	$stock= $_POST['stock'];
   $quantity= $_POST['quantity'];
    $update_quantity_cart= $ct -> update_quantity_cart($stock,$quantity,$cartId);

    if($quantity<=0){
    	 $delcart= $ct -> del_product_cart($cartId);
    
    }
 }
 ?>
  <!-- khi thêm vào giỏ 1 sản phẩm mới chưa từng có trong giỏ thì id sẽ bàng live -->
<?php 
if(!isset($_GET['id'])){
	echo "<meta http-equiv='refresh' content='0;URL=?id=live'>";
}
 ?>

 <div class="main">
    <div class="content">
    	<div class="cartoption">		
			<div class="cartpage">
			    	<h2>Giỏ hàng </h2>
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

								<th width="15%">Tên sản phẩm</th>
								<th width="15%">Số lượng tồn kho </th>
								<th width="10%">Hình ảnh</th>
								<th width="15%">Đơn giá</th>
								<th width="20%">Số lượng</th>
								<th width="20%">Thành tiền</th>
								<th width="10%">Mua</th>
								<th width="10%">Thao tác</th>
							</tr>
							<?php 
							$get_product_cart =$ct->get_product_cart();
							if($get_product_cart){
										$subtotal = 0;
										$qty =0;
								while($result=$get_product_cart->fetch_assoc()){

							 ?>
							
							<tr>
								<td><?php echo $result['productName']?></td>
								<td><?php echo $result['stock']?></td>
								<td><img src="admin/uploads/<?php echo $result['image']?>" alt="" /></td>
								<td><?php echo $fm->format_curency( $result['price']) ." "."VNĐ"  ?></td>
								<td>
									<form action="" method="post">
										<input type="hidden" name="cartId" value="<?php echo $result['cartId']?>"/>
										<input type="hidden" name="stock"  value="<?php echo $result['stock']?>"/>
										<input type="number" name="quantity" min="0"  value="<?php echo $result['quantity']?>"/>
										<input type="submit" name="submit" value="Cập nhật"/>
									</form>
								</td>
								<td><?php 
									$total=$result['price']*$result['quantity'];
									 echo $fm->format_curency($total) ." "."VNĐ";
								?></td>

								<td>
									<div class="form-check">
									  <input class="form-check-input buy_checked"
									  <?php echo $result['status']==1 ? 'checked' : '' ?>
									  type="checkbox" value="<?php echo $result['cartId'] ?>" id="defaultCheck1">


									  <label class="form-check-label " for="defaultCheck1">
									    Chọn
									  </label>

									</div>
								</td>

								<td><a onclick="return confirm('Bạn có chắc chắn muốn xóa không');" href="?cartid=<?php echo $result['cartId'] ?>">XÓA</a></td>
							</tr>
							<?php
							$subtotal += $total;
								$qty =$qty + $result['quantity'];

								}

							}
							?>
													
						</table>
								<?php 
										$check_cart =$ct ->check_cart();
											if($check_cart){												
												
									 ?>
						<table style="float:right;text-align:left;" width="40%">
							<tr>
								<th>Tổng tiền : </th>
								<td style="color:red;"><?php 
								
									echo $fm->format_curency($subtotal) ." "."VNĐ";
									Session ::set('sum',$subtotal);
									Session ::set('qty',$qty);
								 ?></td>
							</tr>
							<tr>
								<th>VAT : </th>
								<td style="color:red;">5%</td>
							</tr>
							<tr>
								<th>Tổng tiền sau thuế :</th>
								<td style="color:red;"><?php 
									$vat = $subtotal * 0.05;
									$gtotal =$subtotal + $vat;
									 echo $fm->format_curency($gtotal) ." "."VNĐ";;
								 ?></td>
							</tr>
					   </table>
					   <?php 
							}else{
								echo'Giỏ hàng trống';
							}
					    ?>
					</div>
					<div class="shopping">
						<div class="shopleft">
							<a href="index.php"> <img src="images/con shopping.jpg" alt="" /></a>
						</div>
						<div class="shopright">
							<a href="payment.php"> <img src="images/checkout.jpg" alt="" /></a>
						</div>
					</div>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
 
<?php
	include'inc/footer.php';
	
?>
 

