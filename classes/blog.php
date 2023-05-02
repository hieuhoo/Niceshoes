<?php 
    $filepath= realpath(dirname(__FILE__));
    include_once ($filepath.'/../lib/database.php');
    include_once($filepath.'/../helpers/format.php');
 ?>
<?php 
 /**
  * 
  */
 class blog 
 {
    private $db;
    private $fm;
    
    public function __construct()
    {
        $this ->db = new Database();
        $this ->fm = new Format();
    }
   
    public function insert_blog($data,$files){

        $title = mysqli_real_escape_string($this ->db ->link, $data['title']);
        $desc = mysqli_real_escape_string($this ->db ->link, $data['desc']);
        $category = mysqli_real_escape_string($this ->db ->link, $data['category_post']);
        $content = mysqli_real_escape_string($this ->db ->link, $data['content']);
        
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


        if($title == "" || $desc== ""|| $category== "" ||$content== "" ||$type== "" || $file_name==""){
            $alert = "<span class='error'>Vui lòng nhập thông tin  </span>";
            return $alert;

        }else{
            move_uploaded_file($file_temp, $uploaded_image);
            $query = "INSERT INTO tbl_blog(title,description,content,category_post,image,status) VALUES ('$title','$desc','$content','$category','$unique_image','$type')";
            $result =$this ->db->insert($query);
            if($result){
                $alert="<span class ='success'>Thêm bài viêt hoàn tất</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Vui lòng nhập thông tin sản phẩm</span>";
                return $alert;
            }
            
        }
    }

    public function show_blog(){

        $query = "SELECT  tbl_blog.* , tbl_news.title
                     FROM tbl_blog INNER JOIN  tbl_news ON tbl_news.id_cate_post= tbl_blog.category_post
                    
                     ORDER BY tbl_blog.id DESC ";

        // $query = "SELECT * FROM tbl_product ORDER BY productId DESC ";

        $result =$this ->db->select($query);
        return $result;
    }

   
   
    public function update_blog($data,$files,$id){
    
        
           $title = mysqli_real_escape_string($this ->db ->link, $data['title']);
        $desc = mysqli_real_escape_string($this ->db ->link, $data['desc']);
        $category = mysqli_real_escape_string($this ->db ->link, $data['category_post']);
        $content = mysqli_real_escape_string($this ->db ->link, $data['content']);
        
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

 
        if($title == "" || $desc== ""|| $category== "" ||$content== "" ||$type== "" ){
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

                  $query = "UPDATE tbl_blog SET 
                  title='$title',
                  description='$desc',
                  category_post='$category',
                  status='$type',
                  content='$content',
                  image='$unique_image'
                 

                   WHERE id='$id'";

            }else{

//Nếu ng dùng k chon janhr
 $query = "UPDATE tbl_blog SET 
                  title='$title',
                  description='$desc',
                  category_post='$category',
                  status='$type',
                  content='$content'
               
                 

                   WHERE id='$id'";


        }
          
            $result =$this ->db->update($query);
            if($result){
                $alert="<span class ='success'>Cập nhật bài viêt thành công</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Vui lòng nhập thông tin sản phẩm</span>";
                return $alert;
            }
          }  
        }
    
    public function del_blog($id){
          $query = "DELETE FROM tbl_blog WHERE id ='$id'  ";
        $result =$this ->db->delete($query);
        if($result){
                $alert="<span class ='success'>Xóa bài viêt thành công</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Chưa xóa baif vieets</span>";
                return $alert;
            }

  
    }
   
    public function getblogbyId($id){
         $query = "SELECT * FROM tbl_blog WHERE id ='$id'  ";
        $result =$this ->db->select($query);
        return $result;
    }
    // kết thúc backend
  
   
    
 }
  ?>
