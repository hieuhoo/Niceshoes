<?php 
    $filepath= realpath(dirname(__FILE__));
	include_once ($filepath.'/../lib/database.php');
	include_once($filepath.'/../helpers/format.php');
 ?>
 <?php 
 /**
  * 
  */
 class comment 
 {
 	private $db;
 	private $fm;
 	
 	public function __construct()
 	{
 		$this ->db = new Database();
 		$this ->fm = new Format();
 	}
 	public function show_comment_list(){
        $query= "SELECT * FROM tbl_binhluan  order by binhluan_id desc ";
        $result =$this->db->select($query);
        return $result;
    }
      public function del_comment($id){
          $query = "DELETE FROM tbl_binhluan WHERE binhluan_id ='$id'  ";
        $result =$this ->db->delete($query);
        if($result){
                $alert="<span class ='success'>Xóa bình luận thành công</span>";
                return $alert;
            }else{
                 $alert="<span class ='error'>Chưa xóa binh luan</span>";
                return $alert;
            }

  
    }
  }
 ?>