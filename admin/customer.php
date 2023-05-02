<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php 
    $filepath= realpath(dirname(__FILE__));
    include_once ($filepath.'/../classes/customer.php');
    include_once ($filepath.'/../helpers/format.php');
 ?>
<?php  
    // $cat = new category();
    if(!isset($_GET['customerid']) || $_GET['customerid']==NULL){
        echo "<script>window.location ='inbox.php'</script>";    
    }else{
        $id=$_GET['customerid'];
        $order_code=$_GET['order_code'];
    }
    $cs= new customer();
    //  if($_SERVER['REQUEST_METHOD']==='POST'){
    // $catName=$_POST['catName'];

    // $updateCat= $cat -> update_category($catName,$id);
 // }
    
?>
<?php  ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Thông tin cá nhân</h2>
               
                
               <div class="block copyblock"> 
                
                 <?php 
                    $get_customer =$cs->show_customers($id);
                    if($get_customer){
                        while($result =$get_customer->fetch_assoc()){

                  
                  ?>
                 <form action="" method="post">
                    <h3>Thông tin đơn hàng</h3>
                    <table class="form">					
                        <tr>
                            <td>Tên</td>
                            <td>:</td>
                            <td>
                                <input type="text" readonly="readonly" value="<?php  echo $result['name']?>" name="catName"  class="medium" />
                            </td>
                        </tr>
						 <tr>
                            <td>Số điện thoại</td>
                            <td>:</td>
                            <td>
                                <input type="text" readonly="readonly" value="<?php  echo $result['phone']?>" name="catName"  class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>Thành phố</td>
                            <td>:</td>
                            <td>
                                <input type="text" readonly="readonly" value="<?php  echo $result['city']?>" name="catName"  class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>Quốc gia</td>
                            <td>:</td>
                            <td>
                                <input type="text" readonly="readonly" value="<?php  echo $result['country']?>" name="catName"  class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>Địa chỉ</td>
                            <td>:</td>
                            <td>
                                <input type="text" readonly="readonly" value="<?php  echo $result['address']?>" name="catName"  class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>Zipcode</td>
                            <td>:</td>
                            <td>
                                <input type="text" readonly="readonly" value="<?php  echo $result['zipcode']?>" name="catName"  class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td>
                                <input type="text" readonly="readonly" value="<?php  echo $result['email']?>" name="catName"  class="medium" />
                            </td>
                        </tr>
                         
                    </table>
                </form>


                    <?php 
                          }
                    }
                     ?>
                </div>
                 <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>Tên sản phẩm</th>
                        <th>Hinh anh</th>
                        <th>Giá sản phẩm</th>
                        <th>Số lượng sản phẩm</th>
                         <th>Thành tiền</th>
                      </tr>
                    </thead>
                    <tbody>
                         <?php 
                    $get_order =$cs->show_order($order_code);
                    if($get_order){
                        $subtotal=0;
                        $total=0;
                        while($result_order =$get_order->fetch_assoc()){
                            $subtotal=$result_order['quantity']*$result_order['price'];
                            $total+=$subtotal;
                  
                        ?>
                      <tr>
                        <td><?php echo $result_order['productName'] ?></td>
                         <td><img src="uploads/<?php echo $result_order['image']?>"width="100" ></td>
                        <td><?php echo number_format ($result_order['price'],0,',','. ')?></td>
                        <td><?php echo $result_order['quantity'] ?></td>
                         <td> <?php echo number_format ($subtotal,0,',','. ')?></td>
                      </tr>
                      <?php 
                        }

                    }
                      ?>
                      <tr>
                          <td colspan="5">Tong tien :<span style="color:red;"><?php echo number_format ($total,0,',','. ')?></span></td>
                      </tr>
                    </tbody>
                </table>        
            </div>


        </div>
<?php include 'inc/footer.php';?>