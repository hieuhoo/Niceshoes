</div>
   <div class="footer">
   	  <div class="wrapper">	
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>Information</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						<li><a href="#"><span>Advanced Search</span></a></li>
						<li><a href="#">Orders and Returns</a></li>
						<li><a href="#"><span>Contact Us</span></a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
						<ul>
						<li><a href="about.php">About Us</a></li>
						<li><a href="faq.php">Customer Service</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="contact.php"><span>Site Map</span></a></li>
						<li><a href="preview.php"><span>Search Terms</span></a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
						<ul>
							<li><a href="contact.php">Sign In</a></li>
							<li><a href="index.php">View Cart</a></li>
							<li><a href="#">My Wishlist</a></li>
							<li><a href="#">Track My Order</a></li>
							<li><a href="faq.php">Help</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><span>+88-01713458599</span></li>
							<li><span>+88-01813458552</span></li>
						</ul>
						<div class="social-icons">
							<h4>Follow Us</h4>
					   		  <ul style="display:inline-grid;color: #979797;">
							      <li style="color:white;" class="facebook"> Facebook</li>
							      <li style="color:white;"class="twitter">Twitter</li>
							      <li style="color:white;"class="youtube">Youtube</li>
							      <li style="color:white;" class="tiktok">Tiktok</li>
							      <div class="clear"></div>
						     </ul>
   	 					</div>
				</div>
			</div>
			<div class="copy_right">
				<p>Training with live project &amp; All rights Reseverd </p>
		   </div>
     </div>
    </div>
    <script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
	  			containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
	 		};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>

	<script >
	 	$('.buy_checked').change(function(){ //change tức là khi ấn vào sẽ thay đổi
	 		var id_cart =$(this).val();
	 		 alert(id_cart); //hiển thị ra id cart của sản phẩm tích vào

	 		if($(this).is(':checked')){ // checked tức là khi ấn vào ô tích mua (chạy dòng 75)
	 			var cart_status =1; // trạng thái cart status sẽ thay đổi thành 1 (mặc định là 0 khi 1 spham được thêm vào giỏ)
	 			$.ajax(
	 				{ 
	 					url: 'ajax/stick_buy.php', //sẽ chạy vào trang trong folder ajax
	 					data : {id_cart:id_cart,cart_status:cart_status},
	 					type:'post',
	 					success:function(){
	 						alert('Đã chọn sản phẩm'); // khi thành công sẽ hiện ra dòng chữ
	 					}
	 			});
	 		}else{
	 			var cart_status =0; //nếu không tích thì vẫn giữ nguyên
	 			$.ajax(
	 				{ 
	 					url: 'ajax/stick_buy.php', 
	 					data : {id_cart:id_cart,cart_status:cart_status}, // gửi qua 2 biến là id_cart và cart_status
	 					type:'post',
	 					success:function(){
	 						alert('Bỏ chọn sản phẩm'); 
	 					}
	 			});
	 		}
	 	})
 </script>

    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
    <link href="css/flexslider.css" rel='stylesheet' type='text/css' />
	  <script defer src="js/jquery.flexslider.js"></script>
	  <script type="text/javascript">
		$(function(){
		  SyntaxHighlighter.all();
		});
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	  </script>
</body>
</html>
