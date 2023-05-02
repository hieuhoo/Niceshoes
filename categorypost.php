<?php
	include'inc/header.php';
	// include'inc/slider.php';

?>
<?php 
	
    if(!isset($_GET['idpost']) || $_GET['idpost']==NULL){
        echo "<script>window.location ='404.php'</script>";    
    }else{
        $id=$_GET['idpost'];
    }

 //     if($_SERVER['REQUEST_METHOD']==='POST'){
 //    $catName=$_POST['catName'];

 //    $updateCat= $cat -> update_category($catName,$id);
 // }
 ?>
 <div class="main">
    <div class="content">
    			<?php 
	      		$name_cat= $pos->getpostbycateid($id);
	      		if($name_cat){
	      			while($result_name =$name_cat->fetch_assoc()){
	      	 ?>
    	<div class="content_top">

    		<div class="heading">
    			<h3>Danh mục :<span style="color:red;"> <?php echo $result_name['title']?></span> </h3>
    		</div>   
				    <?php
				}
				}
					?>
			<div class="clear"></div>
			</div>
			<div class="section-group">
				<?php 
			      		$postbycat= $pos->get_post_by_cat($id);
			      		if($postbycat){
			      			while($result =$postbycat->fetch_assoc()){
			      	 ?>

						<div class="grid_1_of_4 images_1_of_4">
							 <a href="details_blog.php?blogid=<?php echo $result['id'] ?>"><img  height="250px"src="admin/uploads/<?php echo $result['image'] ?> " width="250px" alt="" /></a>
							 <h2 style="font-size:20px"><?php echo $result['title'] ?> </h2>
							 <p><?php echo $fm->textShorten($result['description'],150); ?></p>
							 
						     <div class="button"><span><a href="details_blog.php?blogid=<?php echo $result['id'] ?>" class="details">Xem chi tiết</a></span>
						     </div>
						</div>
						<?php
					}
				}else{
					echo 'Chua co bai viet thuoc tin nay';
				}
					?>
		

 	</div>
</div>
<!-- <?php
	include'inc/footer.php';
	
?> -->


