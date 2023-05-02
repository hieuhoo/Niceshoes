<?php 
    $filepath= realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once($filepath.'/../helpers/format.php');
 ?>
<?php 
 /**
  * 
  */
 class product 
 {
 	private $db;
 	private $fm;
 	
 	public function __construct()
 	{
 		$this ->db = new Database();
 		$this ->fm = new Format();
 	}
    public function search_product($tukhoa){
        //kiểm tra xem biến "tukhoa" đã có chưa
        $tukhoa = $this -> fm ->validation($tukhoa);
           $query = "SELECT * FROM tbl_product where productName LIKE '%$tukhoa%' ";
        $result =$this ->db->select($query);
        return $result;
    }
 	public function insert_product($data,$files){

        $productName = mysqli_real_escape_string($this ->db ->link, $data['productName']);
        $product_quantity = mysqli_real_escape_string($this ->db ->link, $data['product_quantity']);
        $brand = mysqli_real_escape_string($this ->db ->link, $data['brand']);
        $category = mysqli_real_escape_string($this ->db ->link, $data['category']);
 		$product_desc = mysqli_real_escape_string($this ->db ->link, $data['product_desc']);
 		$price = mysqli_real_escape_string($this ->db ->link,$data['price']);
        $type = mysqli_real_escape_string($this ->db ->link, $data['type']);
//kiểm tra hình ảnh và lấy hình ảnh cho vào folder upload
        $permited = array('jpg','jpeg','png','gif');
        $file_name = $_FILES['image']['name'];
        $file_size = $_FILES['image']['size'];
        $file_temp = $_FILES['image']['tmp_name'];

        $div = explode('.',$file_name);
        $file_ext= strtolower(end($div));
        $unique_image= substr(md5(time()),0,10).'.'.$file_ext;
        $uploaded_image="uploads/".$unique_image;


 		if($product_quantity == "" ||$productName == ""|| $brand== ""|| $category== "" ||$product_desc== "" ||$price== "" ||$type== "" || $file_name ==""){
 			$alert = "<span class='error'>Vui lòng nhập thông tin  </span>";
 			return $alert;

 		}else{
            move_uploaded_file($file_temp, $uploaded_image);
 			$query = "INSERT INTO tbl_product(product_quantity,productName,brandId,catId,product_desc,price,type,image) VALUES ('$product_quantity','$productName','$brand','$category','$product_desc','$price','$type','$unique_image')";
 			$result =$this ->db->insert($query);
            if($result){
                $alert="<span class ='success'>Thêm sản phẩm hoàn tất</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Vui lòng nhập thông tin sản phẩm</span>";
                return $alert;
            }
 			
 		}
 	}
    public function insert_slider($data,$files){
         $sliderName = mysqli_real_escape_string($this ->db ->link, $data['sliderName']);
        $type = mysqli_real_escape_string($this ->db ->link, $data['type']);
       
//kiểm tra hình ảnh và lấy hình ảnh cho vào folder upload
        $permited = array('jpg','jpeg','png','gif');

        $file_name = $_FILES['image']['name'];
        $file_size = $_FILES['image']['size'];
        $file_temp = $_FILES['image']['tmp_name'];

        $div = explode('.',$file_name);
        $file_ext= strtolower(end($div));
        //$file_current =strtolower(current($div));
        $unique_image= substr(md5(time()),0,10).'.'.$file_ext;
        $uploaded_image="uploads/".$unique_image;

    if($sliderName == "" || $type== "" ){
            $alert = "<span class='error'>Vui lòng nhập thông tin  </span>";
            return $alert;

        }else{
            if(!empty($file_name)){
                //Nếu người dùng chọn ảnh
                if($file_size > 2048000){
                    $alert= "<span class='error'>Kích thước ảnh phải nhỏ hơn 2MB</span>";
                    return $alert;
                }
                elseif(in_array($file_ext,$permited)=== false)
                {
                    $alert="<span class='error'>Bạn chỉ có thể chỉnh sửa".implode(',',$permited)."</span>";
                    return $alert;
                }
                  
                move_uploaded_file($file_temp,$uploaded_image);

                 
                $query = "INSERT INTO tbl_slider(sliderName,type,slider_image) VALUES ('$sliderName','$type','$unique_image')";
                $result =$this ->db->insert($query);
                if($result){
                    $alert="<span class ='success'>Thêm slider thành công</span>";
                    return $alert;
                }else{
                     $alert="<span class ='error'>Vui lòng nhập slider</span>";
                    return $alert;
                }
              }  
        }
            
    }
    public function show_slider(){
        $query= "SELECT * FROM tbl_slider WHERE type='1' order by sliderId desc ";
        $result =$this->db->select($query);
        return $result;
    }
      public function show_slider_list(){
        $query= "SELECT * FROM tbl_slider order by sliderId desc ";
        $result =$this->db->select($query);
        return $result;
    }
    public function show_product(){

        $query = "SELECT  tbl_product.*,tbl_category.catName,tbl_brand.brandName
                     FROM tbl_product INNER JOIN  tbl_category ON tbl_product.catId= tbl_category.catId
                     INNER JOIN  tbl_brand ON tbl_product.brandId= tbl_brand.brandId
                     ORDER BY tbl_product.productId DESC ";

        // $query = "SELECT * FROM tbl_product ORDER BY productId DESC ";

        $result =$this ->db->select($query);
        return $result;
    }

    public function update_type_slider($id,$type){

         $type = mysqli_real_escape_string($this ->db ->link, $type);
       
            $query= "UPDATE  tbl_slider SET  type='$type' where sliderId='$id ' ";
        $result =$this->db->update($query);
        return $result;
    }
    public function del_slider($id){
   
          $query = "DELETE FROM tbl_slider WHERE sliderId ='$id'  ";
        $result =$this ->db->delete($query);
        if($result){
                $alert="<span class ='success'>Xóa sliderthành công</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Chưa xóa slider</span>";
                return $alert;
            }
    }
    public function update_product($data,$files,$id){
    
        
         $productName = mysqli_real_escape_string($this ->db ->link, $data['productName']);
          $product_quantity = mysqli_real_escape_string($this ->db ->link, $data['product_quantity']);
        $brand = mysqli_real_escape_string($this ->db ->link, $data['brand']);
        $category = mysqli_real_escape_string($this ->db ->link, $data['category']);
        $product_desc = mysqli_real_escape_string($this ->db ->link, $data['product_desc']);
        $price = mysqli_real_escape_string($this ->db ->link,$data['price']);
        $type = mysqli_real_escape_string($this ->db ->link, $data['type']);
//kiểm tra hình ảnh và lấy hình ảnh cho vào folder upload
        $permited = array('jpg','jpeg','png','gif');

        $file_name = $_FILES['image']['name'];
        $file_size = $_FILES['image']['size'];
        $file_temp = $_FILES['image']['tmp_name'];

        $div = explode('.',$file_name);
        $file_ext= strtolower(end($div));
        //$file_current =strtolower(current($div));
        $unique_image= substr(md5(time()),0,10).'.'.$file_ext;
        $uploaded_image="uploads/".$unique_image;

    if( $product_quantity == "" ||$productName == "" || $brand== ""|| $category== "" ||$product_desc== "" ||$price== "" ||$type== "" ){
            $alert = "<span class='error'>Vui lòng nhập thông tin  </span>";
            return $alert;

        }else{
            if(!empty($file_name)){
                //Nếu người dùng chọn ảnh
                if($file_size > 2048000){
                    $alert= "<span class='error'>Kích thước ảnh phải nhỏ hơn 2MB</span>";
                    return $alert;
                }
                elseif(in_array($file_ext,$permited)=== false)
                {
                    $alert="<span class='error'>Bạn chỉ có thể chỉnh sửa".implode(',',$permited)."</span>";
                    return $alert;
                }
                  
                move_uploaded_file($file_temp,$uploaded_image);

                  $query = "UPDATE tbl_product SET 
                  product_quantity ='$product_quantity',
                  productName='$productName',
                  brandId='$brand',
                  catId='$category',
                  type='$type',
                  price='$price',
                  image='$unique_image',
                  product_desc='$product_desc'

                   WHERE productId='$id'";

            }else{

//Nếu ng dùng k chon janhr
 $query = "UPDATE tbl_product SET 
                   productName='$productName',
                   product_quantity ='$product_quantity',
                  brandId='$brand',
                  catId='$category',
                  type='$type',
                  price='$price',
            
                  product_desc='$product_desc'

                   WHERE productId='$id'";


        }
          
            $result =$this ->db->update($query);
            if($result){
                $alert="<span class ='success'>Cập nhật sản phẩm thành công</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Vui lòng nhập thông tin sản phẩm</span>";
                return $alert;
            }
          }  
        }
    
    public function del_product($id){
          $query = "DELETE FROM tbl_product WHERE productId ='$id'  ";
        $result =$this ->db->delete($query);
        if($result){
                $alert="<span class ='success'>Xóa sản phẩm thành công</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Chưa xóa sản phẩm</span>";
                return $alert;
            }

  
    }
    public function  del_wlist($proid,$customer_id){
         $query = "DELETE FROM tbl_wishlist WHERE productId ='$proid' AND customer_id='$customer_id' ";
        $result =$this ->db->delete($query);
       return $result;
    }
    public function getproductbyId($id){
         $query = "SELECT * FROM tbl_product WHERE productId ='$id'  ";
        $result =$this ->db->select($query);
        return $result;
    }
    // kết thúc backend
    public function getproduct_feathered(){
          $query = "SELECT * FROM tbl_product WHERE type ='1'  ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function getproduct_new(){
        $sp_tungtrang =4;
        if(!isset($_GET['trang'])){
            $trang=1;
        }else{
            $trang=$_GET['trang'];
        }
        $tung_trang = ($trang - 1)*$sp_tungtrang;
          $query = "SELECT * FROM tbl_product ORDER BY productId DESC LIMIT $tung_trang ,$sp_tungtrang";
      
        $result =$this ->db->select($query);
        return $result;
    }
    public function get_all_product(){
          $query = "SELECT * FROM tbl_product  ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function get_details($id){
          $query = "SELECT  tbl_product.*,tbl_category.catName,tbl_brand.brandName
                     FROM tbl_product INNER JOIN  tbl_category ON tbl_product.catId= tbl_category.catId
                     INNER JOIN  tbl_brand ON tbl_product.brandId= tbl_brand.brandId WHERE tbl_product.productId='$id'
                  ";

              $result =$this ->db->select($query);
        return $result;
    }
    public function getLastedBalen(){
          $query = "SELECT * FROM tbl_product WHERE brandId='11' ORDER BY productId DESC LIMIT 1 ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function getLastedJordan(){
          $query = "SELECT * FROM tbl_product WHERE brandId='3' ORDER BY productId DESC LIMIT 1 ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function getLastedConverse(){
          $query = "SELECT * FROM tbl_product WHERE brandId='5' ORDER BY productId DESC LIMIT 1 ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function getLastedYeezy(){
          $query = "SELECT * FROM tbl_product WHERE brandId='10' ORDER BY productId ASC LIMIT 1 ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function insertCompare($productid,$customer_id){
        
        $productid = mysqli_real_escape_string($this ->db ->link, $productid);
         $customer_id = mysqli_real_escape_string($this ->db ->link, $customer_id);
      

        $check_compare ="SELECT * FROM tbl_compare WHERE productId='$productid' AND customer_id ='$customer_id'";
        $result_check_compare=$this->db->select($check_compare);
        // $check_cart = $this->db->select($check_cart);
        // if(mysqli_num_rows($check_cart)>0){
        //     $alert ="<span> Thêm mới sản phẩm vào giỏ thành công</span>";
        //     return $alert;
        // }
        if($result_check_compare){
            $msg ="<span style ='font-size:15px;'class ='error'>Sản phẩm đã được thêm vào danh sách so sánh</span>";
            return $msg;

        }else{


        $query="SELECT * FROM tbl_product WHERE productId='$productid'";
        $result=$this->db->select($query)->fetch_assoc();

        $productName = $result["productName"];

        $price = $result["price"];

        $image = $result["image"];

      
      $query_insert = "INSERT INTO tbl_compare(productId,price,image,customer_id,productName) VALUES ('$productid','$price','$image','$customer_id','$productName')";

            $insert_compare =$this ->db->insert($query_insert);


             if($insert_compare){
                $alert="<span  style ='font-size:15px;'class ='success'>Thêm sản phẩm so sánh thành công</span>";
                return $alert;
                }else{
                     $alert="<span style ='font-size:15px;' class ='error'>Sản phẩm đã được thêm so sánh </span>";
                    return $alert;
                }
        }
    }
    public function get_compare($customer_id){
        $query="SELECT * FROM tbl_compare WHERE customer_id='$customer_id' ORDER BY id DESC";
        $result=$this->db->select($query);
        return $result;

    }
    public function get_wishlist($customer_id){
          $query="SELECT * FROM tbl_wishlist WHERE customer_id='$customer_id' ORDER BY id DESC";
        $result=$this->db->select($query);
        return $result;
    }
     public function getproduct_adidas(){
          $query = "SELECT * FROM tbl_product WHERE catId ='6' order by productId desc limit 4 ";
        $result =$this ->db->select($query);
        return $result;
    }
     public function getproduct_nike(){
          $query = "SELECT * FROM tbl_product WHERE catId ='7' order by productId desc limit 4 ";
        $result =$this ->db->select($query);
        return $result;
    }
     public function getproduct_jordan(){
          $query = "SELECT * FROM tbl_product WHERE catId ='21' order by productId desc limit 4 ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function getproduct_balenciaga(){
          $query = "SELECT * FROM tbl_product WHERE catId ='3' order by productId desc limit 4 ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function  insertWishlist($productid,$customer_id){
         $productid = mysqli_real_escape_string($this ->db ->link, $productid);
         $customer_id = mysqli_real_escape_string($this ->db ->link, $customer_id);
      

        $check_wlist ="SELECT * FROM tbl_wishlist WHERE productId='$productid' AND customer_id ='$customer_id'";
        $result_check_wlist=$this->db->select($check_wlist);
        // $check_cart = $this->db->select($check_cart);
        // if(mysqli_num_rows($check_cart)>0){
        //     $alert ="<span> Thêm mới sản phẩm vào giỏ thành công</span>";
        //     return $alert;
        // }
        if($result_check_wlist){
            $msg ="<span style ='font-size:15px;'class ='error'>Đã  thêm vào danh sách yêu thích </span>";
            return $msg;

        }else{


        $query="SELECT * FROM tbl_product WHERE productId='$productid'";
        $result=$this->db->select($query)->fetch_assoc();

        $productName = $result["productName"];

        $price = $result["price"];

        $image = $result["image"];

      
      $query_insert = "INSERT INTO tbl_wishlist(productId,price,image,customer_id,productName) VALUES ('$productid','$price','$image','$customer_id','$productName')";

            $insert_wlist =$this ->db->insert($query_insert);


             if($insert_wlist){
                $alert="<span  style ='font-size:15px;'class ='success'> Thêm thành công </span>";
                    return $alert;
                }else{
                     $alert="<span style ='font-size:15px;' class ='error'>Chưa thêm vào danh sách </span>";
                    return $alert;
                }
        }
    }
 }
  ?>
