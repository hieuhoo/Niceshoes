<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include'../classes/post.php' ?>
<?php  
$post = new post();
 if($_SERVER['REQUEST_METHOD']==='POST'){
    $catName=$_POST['catName'];
    $catDesc=$_POST['catDesc'];
    $catStatus=$_POST['catStatus'];

    $insertCat= $post -> insert_category_post($catName,$catDesc,$catStatus);
 }
?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Thêm danh mục</h2>
               
                
               <div class="block copyblock"> 
                 <?php 
                if(isset($insertCat)){
                    echo $insertCat;
                }
                 ?>
                 <form autocomplete="off" action="postadd.php" method="POST">
                    <table class="form">                    
                        <tr>
                            <td>
                                <input type="text" name="catName" placeholder="Nhập danh mục tin tức " class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <input type="text" name="catDesc" placeholder="Nhập  mô tả danh mục " class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                               <select name="catStatus">
                                   <option value="0">Hiển thị</option>
                                   <option value="1">Ẩn</option>
                               </select>
                            </td>
                        </tr>
                        <tr> 
                            <td>
                                <input type="submit" name="submit" Value="Lưu" />
                            </td>
                        </tr>
                    </table>
                    </form>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>


