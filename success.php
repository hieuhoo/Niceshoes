<?php
	include'inc/header.php';
	//include 'inc/slider.php';

?>
<?php 

  if(isset($_GET['oderid']) AND $_GET['oderid']=='order'){
            $customer_id=Session::get('customer_id');
            $insertOrder=$ct->insertOrder($customer_id);
             	$delCart = $ct->del_all_data_cart();
             header('Location:success.php');
    }
 // if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['submit'])){
 //   $quantity= $_POST['quantity'];
 //    $AddtoCart= $ct -> add_to_cart($quantity,$id);
 // }
 ?>
<style >
	h2.success_order{
		text-align: center;
		color: red;
	}
	p.success_note{
		text-align: center;
		padding: 8px;
		font-size: 20px;
	}
</style>
<form action="" method="POST">
 <div class="main">
    <div class="content">
    	<div class="section group">
    			<h2 class="success_order">Đặt hàng thành công</h2>
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
    			<p class="success_note">Tổng tiền đã mua từ trang web: <span style="color:red;"><?php $vat= $amount * 0.05;
    			$total = $vat +$amount;
    			echo $fm->format_curency( $total ). ' VND';

    			?></span></p>
    			<p class="success_note">Chúng tôi sẽ liên lạc trong thời gian sớm nhất.Vui lòng xem lại đơn hàng của bạn tại  <a style="color:red;" href="orderdetails.php">  ĐÂY</a></p>
 			</div>
 		</div>
 		 
 	</div>
 </form>
<?php
	include'inc/footer.php';
	
?>


	