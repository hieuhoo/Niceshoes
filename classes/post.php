<?php 
    $filepath= realpath(dirname(__FILE__));
	include_once   ($filepath.'/../lib/database.php');
	include_once($filepath.'/../helpers/format.php');
 ?>
<?php 
 /**
  * 
  */
 class post 
 {
 	private $db;
 	private $fm;
 	
 	public function __construct()
 	{
 		$this ->db = new Database();
 		$this ->fm = new Format();
 	}
 	public function insert_category_post($catName,$catDesc,$catStatus){
 		$catName = $this -> fm ->validation($catName);
 		$catDesc = $this -> fm ->validation($catDesc);
        $catStatus = $this -> fm ->validation($catStatus);
 		$catName = mysqli_real_escape_string($this ->db ->link, $catName);
        $catDesc = mysqli_real_escape_string($this ->db ->link, $catDesc);
      $catStatus = mysqli_real_escape_string($this ->db ->link, $catStatus);

 		if(empty($catName) || empty($catDesc)){
 			$alert = "<span class='error'>Vui lòng nhập thông tin danh mục </span>";
 			return $alert;

 		}else{
 			$query = "INSERT INTO tbl_news(title,description,status) VALUES ('$catName','$catDesc','$catStatus')";
 			$result =$this ->db->insert($query);
            if($result){
                $alert="<span class ='success'>Thêm danh mục hoàn tất</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Vui lòng nhập thông tin danh mục</span>";
                return $alert;
            }
 			
 		}
 	}
    public function show_category_post(){
        $query = "SELECT * FROM tbl_news ORDER BY id_cate_post DESC ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function update_category_post($catName,$catDesc,$catStatus,$id){
      $catName = $this -> fm ->validation($catName);
        $catDesc = $this -> fm ->validation($catDesc);
        $catStatus = $this -> fm ->validation($catStatus);
        $catName = mysqli_real_escape_string($this ->db ->link, $catName);
        $catDesc = mysqli_real_escape_string($this ->db ->link, $catDesc);
      $catStatus = mysqli_real_escape_string($this ->db ->link, $catStatus);
        $id = mysqli_real_escape_string($this ->db ->link, $id);
      if(empty($catName) || empty($catDesc)){
            $alert = "<span class='error'>Vui lòng nhập thông tin danh mục </span>";
            return $alert;

        }else{
            $query = "UPDATE tbl_news SET title='$catName',description='$catDesc',status='$catStatus' WHERE id_cate_post='$id'";
            $result =$this ->db->update($query);
            if($result){
                $alert="<span class ='success'>Cập nhật danh mục thành công</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Vui lòng nhập thông tin danh mục</span>";
                return $alert;
            }
            
        }
    }
    public function del_category_post($id){
          $query = "DELETE FROM tbl_news WHERE id_cate_post ='$id'  ";
        $result =$this ->db->delete($query);
        if($result){
                $alert="<span class ='success'>Xóa danh mục tin tức thành công</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Chưa xóa danh mục</span>";
                return $alert;
            }

  
    }
    public function getcatebyId($id){
         $query = "SELECT * FROM tbl_news WHERE id_cate_post ='$id'  ";
        $result =$this ->db->select($query);
        return $result;
    }
     public function getpostbycateid($id){
         $query = "SELECT  tbl_news.* FROM tbl_news  WHERE   tbl_news.id_cate_post = '$id'  ";
        $result =$this ->db->select($query);
        return $result;
    }
     public function show_category_fontend(){
        $query = "SELECT * FROM tbl_category ORDER BY catId DESC ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function get_post_by_cat($id){
            $query = "SELECT  tbl_blog .* from  tbl_blog  WHERE  tbl_blog.category_post = '$id'  ";
        $result =$this ->db->select($query);
        return $result;
    }
    public function get_name_by_cat($id){
         $query = "SELECT  tbl_product.* ,tbl_category.catName,tbl_category.catId FROM tbl_product,tbl_category  WHERE tbl_product.catId=tbl_category.catId AND tbl_product.catId ='$id' LIMIT 1";
        $result =$this ->db->select($query);
        return $result;
    }
     public function getpostbyid($id){
            $query = "SELECT  * from  tbl_blog  WHERE  tbl_blog.id = '$id'  ";
        $result =$this ->db->select($query);
        return $result;
    }
   
 }
 ?>
