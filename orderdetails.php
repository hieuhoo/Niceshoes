<?php
	include'inc/header.php';
	//include'inc/slider.php';

?>

  <!-- khi thêm vào giỏ 1 sản phẩm mới chưa từng có trong giỏ thì id sẽ bàng live -->
<?php 
$login_check=Session::get('customer_login');
if($login_check==false){
	header('Location:login.php');
}
$ct=new cart();
 if(isset($_GET['confirmid'])){
        $id=$_GET['confirmid'];
        $time=$_GET['time'] ;
        $price=$_GET['price'] ;
        $shifted_confirm=$ct ->shifted_confirm($id,$time,$price);
    }
 ?>

 <div class="main">
    <div class="content">
    	<div class="cartoption">		
			<div class="cartpage">
			    	<h2>Đơn hàng đã đặt</h2>
			    
						<table class="tblone">
							<tr>
								<th width="10%">ID</th>
								<th width="20%">Tên sản phẩm</th>
								<th width="15%">Hình ảnh</th>
								<th width="10%">Số lượng</th>
								<th width="15%">Thành tiền</th>							
								<th width="15%">Ngày đặt hàng</th>
										<th width="10%">Tình trạng</th>
								<th width="10%">Thao tác</th>
							</tr>
							<?php 
							  $customer_id=Session::get('customer_id');
							$get_cart_ordered =$ct->get_cart_ordered($customer_id);
							if($get_cart_ordered){
								$i=0;
										$qty =0;
								while($result=$get_cart_ordered->fetch_assoc()){
									$i++;
							 ?>
							
							
							<tr>
								<td><?php echo $i;?></td>
								<td><?php echo $result['productName']?></td>
								<td><img height="50px" src="admin/uploads/<?php echo $result['image']?>" alt="" /></td>
								<td><?php echo $result['quantity']?></td>
								<td><?php echo $fm->format_curency($result['price']) .' '.'VND'?></td>

								
								<td><?php echo $fm->formatDate($result['date_order']) ?></td>
								<td>
									<?php
										if($result['status']=='0'){
											echo 'Đang xử lý';
										}elseif($result['status']==1){
										?>
										<span>Đang vận chuyển</span>
											
											<?php
										}elseif($result['status']==2){
											echo'Đã nhận được hàng';
										}
									?>

								</td>
								<?php
									if($result['status']=='0'){
								?>
								<td><?php echo 'N/A';?></td>
									<?php

										}elseif($result['status']=='1'){

									?>
									<td><a href="?confirmid=<?php echo $customer_id?>&price=<?php echo $result['price'] ?>&time=<?php echo $result['date_order']?>">Đã nhận được hàng </a></td>
									
									<?php
								}else{
									?>
								<td><?php  echo'Đã nhận được hàng' ;?></td>
							<?php
								}
							?>
							</tr>
							<?php
						
								}

							}
							?>
													
						</table>
						<br>
			<?php 
    			   $customer_id=Session::get('customer_id');
    			$get_amount=$ct->getAmountPrice($customer_id);
    			if($get_amount){
    				$amount=0;
    				while($result=$get_amount->fetch_assoc()){

    					$price=$result['price'];
    					$amount += $price;
    				}
    			}

    		?>
				<p style="font-size:25px" class="success_note">Tổng tiền đã mua từ trang web: <span style="color:red;"><?php $vat= $amount * 0.05;
    			$total = $vat +$amount;
    			echo $fm->format_curency( $total ). ' VND';

    			?></span></p>	
					
					
					</div>
					<div class="shopping">
						<div class="shopleft">
							<a href="index.php"> <img src="images/con shopping.jpg" alt="" /></a>
						</div>
					
					</div>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php
	include'inc/footer.php';
	
?>
 




	