
<?php
	include'inc/header.php';
	// include'inc/slider.php';

?>
<?php 
		   			$login_check =Session::get('customer_login');
		   			if($login_check){
		   					header('Location:order.php');
		   			
		   			}
?>
<?php  

 if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['submit'])){
   
    $insertCustomers= $cs -> insert_customers($_POST);
 }
?>
<?php  

 if($_SERVER['REQUEST_METHOD'] =='POST' && isset($_POST['login'])){
   
    $login_Customers= $cs -> login_customers($_POST);
 }
?>

 <div class="main">
    <div class="content">
    	 <div class="login_panel">
        	<h3>Đã có tài khoản</h3>
        	<p>Tiến hành đăng nhập</p>
        	<?php 
        	if(isset($login_Customers)){
        		echo $login_Customers;
        	}
        	 ?>
        	

        	<form action="" method="POST" >
                	<input  type="text" name="email" class="field" placeholder="Nhập Email">
                    <input  type="password" name="password" class="field" placeholder="Nhập mật khẩu">
             
                 <p class="note">Quên mật khẩu ? Nhấn vào <a href="#">đây</a></p>
                    <div class="buttons"><div><input type="submit" name="login" class="grey" value="Đăng nhập"></div></div>
                 </form>
              </div>
                    <?php 

                     ?>
    	<div class="register_account">
    		<h3>Đăng kí tài khoản người dùng</h3>
    		<?php 
    			if(isset($insertCustomers)){
    				echo $insertCustomers;
    			}
    		 ?>
    		<form action="" method="POST">
		   			 <table>
		   				<tbody>
						<tr>
						<td>
							<div>
							<input type="text" name="name" placeholder="Nhập tên" >
							</div>
							
							<div>
							   <input type="text" name="city" placeholder="Nhập thành phố">
							</div>
							
							<div>
								<input type="text" name="zipcode"placeholder="Nhập mã zipcode" >
							</div>
							<div>
								<input type="text" name="email"placeholder="Nhập email">
							</div>
		    			 </td>
		    			<td>
						<div>
							<input type="text" name="address" placeholder="Nhập địa chỉ">
						</div>
		    		<div>
						<select id="country" name="country" onchange="change_country(this.value)" class="frm-field required">
							<option value="null">Chọn quốc gia</option>  

							<option value="VN">Việt Nam</option>
								<option value="TL">Thái lan</option>
							<option value="ENG">Anh quốc</option>
							<option value="GER">Đức</option>
							<option value="FR">Pháp</option>
							<option value="SING">Singapore</option>
							
		         </select>
				 </div>		        
	
		           <div>
		          <input type="text" name="phone" placeholder="Nhập số điện thoại">
		          </div>
				  
				  <div>
					<input type="text" name="password" placeholder="Nhập mật khẩu">
				</div>
		    	</td>
		    </tr> 
		    </tbody></table> 
		   <div class="search"><div><input type="submit" name="submit" class="grey" value="Đăng kí tài khoản"></div></div>
		    <p class="terms">By clicking 'Create Account' you agree to the <a href="#">Terms &amp; Conditions</a>.</p>
		    <div class="clear"></div>
		    </form>
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
<?php
	include'inc/footer.php';
	
?>


