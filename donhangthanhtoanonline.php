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
   $quantity= $_POST['quantity'];
    $update_quantity_cart= $ct -> update_quantity_cart($quantity,$cartId);

    if($quantity<=0){
    	 $delcart= $ct -> del_product_cart($cartId);
    
    }
 }
 ?>
  <!-- khi thêm vào giỏ 1 sản phẩm mới chưa từng có trong giỏ thì id sẽ bàng live -->
<?php 
// if(!isset($_GET['id'])){
// 	echo "<meta http-equiv='refresh' content='0;URL=?id=live'>";
// }
 ?>

 <div class="main">
    <div class="content">
    	<div class="cartoption">		
			<div class="cartpage">
				
			    	<h2>Cổng thanh toán online</h2>
			    	
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

								<th width="20%">Tên sản phẩm</th>
								<th width="10%">Hình ảnh</th>
								<th width="15%">Đơn giá</th>
								<th width="25%">Số lượng</th>
								<th width="20%">Thành tiền</th>
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
								<td><img src="admin/uploads/<?php echo $result['image']?>" alt="" /></td>
								<td><?php echo $fm->format_curency( $result['price']) ." "."VNĐ"  ?></td>
								<td>
									<form action="" method="post">
										<input type="hidden" name="cartId" value="<?php echo $result['cartId']?>"/>
										<input type="number" name="quantity" min="0"  value="<?php echo $result['quantity']?>"/>
										<input type="submit" name="submit" value="Update"/>
									</form>
								</td>
								<td><?php 
									$total=$result['price']*$result['quantity'];
									 echo $fm->format_curency($total) ." "."VNĐ";
								?></td>
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
					<style >
						a.btn-thanhtoan{
							display: block;
							width: 33%;
							margin: 5px auto;
						}
					</style>
					<?php 
					$check_cart = $ct->check_cart();
					if(Session::get('customer_id')==true && $check_cart){

					?>
					<br>
					<div class="btn-bill">
					<form action="congthanhtoan_vnpay.php" method="POST">
						<input type="hidden" name="total_congthanhtoan" value="<?php echo $gtotal ?>">
		    			<button class="btn btn-success" name="redirect" id="redirect">Thanh toán VNPAY</button>
		    		</form>
		    		<p></p>
		    		<form action="congthanhtoan_momo.php" method="POST">
						<input type="hidden" name="total_congthanhtoan" value="<?php echo $gtotal ?>">
		    			<button class="btn btn-danger" name="captureWallet">Thanh toán QR MOMO</button>
		    		</form>
		    		<p></p>
					<form action="congthanhtoan_momo.php" method="POST">
						<input type="hidden" name="total_congthanhtoan" value="<?php echo $gtotal ?>">
		    			<button class="btn btn-danger" name="payWithATM" >Thanh toán  MOMO ATM</button>
		    		</form>
		    		<p></p>
					<form action="congthanhtoan_onepay.php" method="POST">
						<input type="hidden" name="total_congthanhtoan" value="<?php echo $gtotal ?>">
		    			<button class="btn btn-primary" name="payWithATM" >Thanh toán  ONEPAY</button>
		    		</form>
					</div>

				</div>
				<?php 
			}else{

				?>
				<a class="btn btn-primary btn-thanhtoan" href="cart.php">Quay về giỏ hàng</a>	
				<?php
			}
			?>
    	</div>  <style >
    		a.muahang{
    			float: right;
    			padding: 10px 20px;
    			border: 1px solid #ddd;
    			color: white;
    			cursor: pointer;
    		}
    	</style>

       <div class="clear"></div>
    </div>
 </div>
<?php
	include'inc/footer.php';
	
?>
 

