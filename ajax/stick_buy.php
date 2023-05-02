<?php 
    $filepath= realpath(dirname(__FILE__)); // filepath là file gốc
	include_once ($filepath.'/../lib/database.php');//lấy db
	include_once($filepath.'/../helpers/format.php');//lấy format
 ?>
<?php
	$db= new database();
	 $id_cart = $_POST['id_cart'] ;     
        $cart_status = $_POST['cart_status'] ;  
     
            $query = "UPDATE tbl_cart SET status='$cart_status' WHERE cartId='$id_cart'"; //câu lệnh update vào csdl khi câu ajax tích chọn được thực hiện
            $result = $db->update($query); // thực thi câu query
            if($result){
               echo " cập nhật thành công" ;
            }else{
                 echo " cập nhật  không thành công" ;
            }
?>