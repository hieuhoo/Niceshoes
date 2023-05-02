<?php 
$filepath= realpath(dirname(__FILE__));
	include ($filepath.'/../lib/session.php');
	Session:: checkLogin();
	include ($filepath.'/../lib/database.php');
	include($filepath.'/../helpers/format.php');
 ?>
<?php 
 /**
  * 
  */
 class adminlogin 
 {
 	private $db;
 	private $fm;
 	
 	public function __construct()
 	{
 		$this ->db = new Database();
 		$this ->fm = new Format();
 	}
 	public function login_admin($adminUser,$adminPass){
 		$adminUser = $this -> fm ->validation($adminUser);
 		$adminPass = $this -> fm ->validation($adminPass);

 		$adminUser = mysqli_real_escape_string($this ->db ->link, $adminUser);
 		$adminPass = mysqli_real_escape_string($this ->db ->link, $adminPass);
 		if(empty($adminUser)|| empty($adminPass)){
 			$alert = "Vui lòng nhập tài khoản và mật khẩu";
 			return $alert;

 		}else{
 			$query = "SELECT * FROM tbl_admin WHERE adminUser = '$adminUser' AND adminPass ='$adminPass' LIMIT 1";
 			$result =$this ->db->select($query);

 			if($result != false){
 				$value = $result->fetch_assoc();
 				Session ::set ('adminlogin',true);
 				Session ::set ('adminId',$value['adminId']);
 				Session ::set ('adminUser',$value['adminUser']);
 				Session ::set ('adminName',$value['adminName']);
 				header('Location:index.php');
 			}else{
 				$alert = "Tài khoản hoặc mật khẩu không đúng";
 				return $alert;
 			}
 		}
 	}
 }
 ?>
