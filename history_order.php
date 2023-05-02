<?php
	include'inc/header.php';
	//include 'inc/slider.php';

?>
 <?php 
	  $login_check = Session::get('customer_login');
	  if($login_check==false){
	  		header('Location:login.php');
	  }
	  
	   ?>
<?php 

  if(isset($_GET['danhanhang'])){
        $danhanhang=$_GET['danhanhang'];
        
        $danhanhang=$ct ->confirm_recieved($danhanhang);
    }
  
 ?>

 <div class="main">
    <div class="content">
    	<div class="section group">
    		<div class="content_top">
	    		<div class="heading">
	    		<h3 class="payment">Lịch sử đơn hàng</h3>
	    		</div>
	    	
	    		<div class="clear"></div>
	    		<div class="wrapper_method">
	    			 <table class="table table-striped table-bordered table-hover" id="example">
					<thead>
						<tr>
							<th style="color:red;font-size: 18px;">Số thứ tự</th>
							<th style="color:red;font-size: 18px;">Ngày đặt hàng</th>
							<th style="color:red;font-size: 18px;">Mã đơn hàng</th>
							<th style="color:red;font-size: 18px;">Tên khách hàng</th>				
							<th style="color:red;font-size: 18px;">Thao tác</th>
							<th style="color:red;font-size: 18px;">Trạng thái</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$ct= new cart();
						$fm=new Format();
						$get_inbox_cart= $ct->get_inbox_cart_history(Session::get('customer_id'));
						if($get_inbox_cart){
							$i=0;
							while($result=$get_inbox_cart->fetch_assoc()){
								$i++;
						 ?>
					
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $fm->formatDate( $result['date_created'])?></td>
							<td><?php echo  $result['order_code']?></td>
						
							<td><?php echo  $result['name']?></td>
							<td> <a href="history_order_details.php?customerid=<?php echo $result['customer_id']?>&order_code=<?php echo $result['order_code']?>">Xem thông tin</a></td>
							<td>
								<?php
									if($result['status']==1){

								?>
									<a href="?danhanhang=<?php echo $result['order_code']?>">Đã nhận hàng</a>

								<?php
							}elseif($result['status']==2){
								?>
							<?php
							echo 'Đơn hàng thành công'; 
							?>
							
						<?php 
								}
							
						 ?>

							 </td>
						</tr>
					<?php 
				} } 
					?>
					</tbody>
				</table>
		    		
	    		</div>
	    			
    	</div>
    	
    	
 		</div>
 	</div>
<?php
	include'inc/footer.php';
	
?>


	