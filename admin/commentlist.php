<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/brand.php';?>
<?php include '../classes/category.php';?>
<?php include '../classes/product.php';?>
<?php include '../classes/comment.php';?>
<?php include_once '../helpers/format.php';?>
<?php 
	$comment = new comment(); 

	if(isset($_GET['commentid'])){
     
        $id=$_GET['commentid'];
         $delcment= $comment -> del_comment($id);
    }
?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Danh sách bình luận</h2>
        <div class="block"> 
         <?php 
         if(isset($delcment)){
         	echo $delcment;
         }
          ?>
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>ID</th>
					<th>Người bình luận</th>
		
					<th>Bình luận</th>
					<th>Sản phẩm</th>
					<!-- <th>Ảnh sản phẩm</th> -->
			
					<th>Quản lý</th>

				</tr>
			</thead>
			<tbody>
				<?php 
			
				$cmlist =$comment-> show_comment_list();
				if($cmlist){
					$i=0;
					while($result = $cmlist->fetch_assoc()){
						$i++;
				 ?>
				
				<tr class="odd gradeX">
					<td><?php echo  $i ?></td>
					<td><?php  echo $result['tenbinhluan']?></td>
					<td><?php  echo $result['binhluan']?></td>
					<td><?php  echo $result['product_id']?></td>
					<!-- <td><img src="uploads/<?php echo $result['image']?>"width="150" ></td> -->
					
				
					
					<td> <a href="?commentid=<?php echo $result['binhluan_id']?>">Xóa</a></td>
				</tr>
				<?php
			}
		}
			?>
			</tbody>
		</table>

       </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
        $('.datatable').dataTable();
		setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>
