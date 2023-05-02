<?php
	include'inc/header.php';
	//include 'inc/slider.php';

?>
<?php 

  if(isset($_GET['orderid']) && $_GET['orderid']=='order'){
            $customer_id=Session::get('customer_id');
            $insertOrder=$ct->insertOrder($customer_id);
             	$delCart = $ct->del_all_data_cart();
             header('Location:success.php');
    }
 if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['submit'])){
   $quantity= $_POST['quantity'];
    $AddtoCart= $ct -> add_to_cart($quantity,$id);
 }
 ?>
<style >
	.box_left{
		width: 50%;
		border: 1px solid #666;
		float: left;
		padding: 4px;
	}
	.box_right{
		width: 45%;
		border: 1px solid #666;
		float: right;
		padding: 4px;
	}
	/*.submit_order{
		padding: 10px 70px;
		border: none;
		background: red;
		font-size: 20px;
		color: white;
		border-radius: 5%;
		cursor: pointer;
		margin: 10px;
	}*/
	a.a_order{
		background: red;
		padding: 7px 20px;
		color: white;
		font-size: 20px;
	}
</style>
<form action="" method="POST">
 <div class="main">
    <div class="content">
    	<div class="section group">
    			<div class="heading">
	    		<h3>Thanh toán offline</h3>
	    		</div>
	    	
	    		<div class="clear"></div>
	    			<div class="box_left">
			    				<div class="cartpage">
						    
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
											<th width="5%">ID</th>
											<th width="15%">Tên sản phẩm</th>
									
											<th width="15%">Đơn giá</th>
											<th width="25%">Số lượng</th>
											<th width="20%">Thành tiền</th>
											
										</tr>
										<?php 
										$get_product_cart =$ct->get_product_cart_checkout();
										if($get_product_cart){
													$subtotal = 0;
													$qty =0;
													$i=0;
											while($result=$get_product_cart->fetch_assoc()){
												$i++;
										 ?>
										
										<tr>
											<td><?php echo $i?></td>
											<td><?php echo $result['productName']?></td>
											
											<td><?php echo $fm->format_curency( $result['price']).' '.'VND'?></td>
										
											
												
											<td><?php echo $result['quantity']?></td>
												
											
											<td><?php 
											// thành tiền
												$total=$result['price']*$result['quantity'];
											echo $fm->format_curency(  $total).' '.'VND';
											?></td>
											
										</tr>
										<?php
										// tổng tiền
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
									<table style="float:right;text-align:left;margin: 5px;" width="40%">
										<tr>
											<th>Tổng tiền : </th>
											<td style="color:red;"><?php 
											
											echo $fm->format_curency( $subtotal).' '.'VND';
												Session ::set('sum',$subtotal);
												Session ::set('qty',$qty);
											 ?></td>
										</tr>
										<tr>
											<th>VAT : </th>
											<td style="color:red;">5% (<?php echo $fm->format_curency(  $vat = $subtotal * 0.05).' '.'VND' ; ?>) </td>
										</tr>
										<tr>
											<th>Tổng tiền thanh toán :</th>
											<td style="color:red;"><?php 
											// thuế vat
												$vat = $subtotal * 0.05;
												// tổng tiền phải trả
												$gtotal =$subtotal + $vat;
											echo $fm->format_curency(  $gtotal) .' '.'VND';
											 ?></td>
										</tr>
											
								   </table>
								   <?php 
										}else{
											echo'Giỏ hàng trống';
										}
								    ?>
								</div>
	    			</div>

    			<div class="box_right">
			    				<table class="tblone">
			    			<?php 
			    			$id=Session::get('customer_id');
			    			$get_customers=$cs->show_customers($id);
			    			if($get_customers){
			    				while($result = $get_customers->fetch_assoc()){

			    			 ?>
			    			<tr>
			    				<td>Tên khách hàng</td>
			    				<td>:</td>
			    				<td style="color:red;"><?php echo $result['name']?></td>
			     			</tr>
			    			<tr>
			    				<td>Thành phố</td>
			    				<td>:</td>
			    					<td style="color:red;"><?php echo $result['city']?></td>
			    			</tr>
			    			<tr>
			    				<td>Số điện thoại </td>
			    				<td>:</td>
			    		<td style="color:red;"><?php echo $result['phone']?></td>
			    			</tr>
			    			<!-- <tr>
			    				<td>Quốc gia</td>
			    				<td>:</td>
			    					<td style="color:red;"><?php echo $result['country']?></td>
			    			</tr> -->
			    			<tr>
			    				<td>Zipcode</td>
			    				<td>:</td>
			    					<td style="color:red;"><?php echo $result['zipcode']?></td>
			    			</tr>
			    			<tr>
			    				<td>Email</td>
			    				<td>:</td>
			    					<td style="color:red;"><?php echo $result['email']?></td>
			    			</tr>
			    			<tr>
			    				<td>Địa chỉ</td>
			    				<td>:</td>
			    						<td style="color:red;"><?php echo $result['address']?></td>
			    			</tr>
			    			<tr>
			    				<td colspan="3"><a href="editprofile.php">Cập nhật thông tin</a></td>
			    				
			    			</tr>
			    			<?php
			    			   				}
			    			}
			    			?>
			    		</table>
    			</div>
   
 			</div>
 		</div>
 		 	<center><a href="?orderid=order"class="a_order" >Đặt hàng ngay</a></center><br>
 	</div>
 </form>
<?php
	include'inc/footer.php';
	
?>


	