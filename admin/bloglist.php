<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>

<?php include '../classes/post.php';?>
<?php include '../classes/blog.php';?>

<?php 
	
	$blog = new blog();
	if(isset($_GET['id'])){
     
        $id=$_GET['id'];
         $delblog= $blog -> del_blog($id);
    }
?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Danh sách blog</h2>
        <div class="block"> 
         <?php 
         if(isset($delpro)){
         	echo $delpro;
         }
          ?>
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>ID</th>
					<th>Tiêu đề</th>
					<th>Mô tả ngan </th>
					<th>Hình ảnh</th>
					<th>Danh mục</th>
				
					<th>Trạng thái </th>
				
					<th>Quản lý</th>

				</tr>
			</thead>
			<tbody>
				<?php 
			
				$bloglist =$blog-> show_blog();
				if($bloglist){
					$i=0;
					while($result = $bloglist->fetch_assoc()){
						$i++;
				 ?>
				
				<tr class="odd gradeX">
					<td><?php echo  $i ?></td>
					<td><?php  echo $result['title']?></td>
					<td><?php  echo $result['description']?></td>
					<td><img src="uploads/<?php echo $result['image']?>"width="150" ></td>
					<td><?php  echo $result['title']?></td>
					
					
					<td><?php  
						if($result['status']==0){
							echo 'Hiển thị';
						}else{
							echo 'Ẩn';
						}
					?></td>
					
					<td><a href="blogedit.php?id=<?php echo $result['id']?>">Sửa</a> || <a href="?id=<?php echo $result['id']?>">Xóa</a></td>
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
