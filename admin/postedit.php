<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include'../classes/post.php' ?>
<?php  
    $post = new post();
    if(!isset($_GET['catid']) || $_GET['catid']==NULL){
        echo "<script>window.location ='postlist.php'</script>";    
    }else{
        $id=$_GET['catid'];
    }
     if($_SERVER['REQUEST_METHOD']==='POST'){
    $catName=$_POST['catName'];
    $catDesc=$_POST['catDesc'];
    $catStatus=$_POST['catStatus'];

    $updateCat= $post -> update_category_post($catName,$catDesc,$catStatus,$id);
    }
    
?>
<?php  ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Sửa danh mục tin tức</h2>
               
                
               <div class="block copyblock"> 
                 <?php 
                if(isset($updateCat)){
                    echo $updateCat;
                }
                 ?>
                 <?php 
                    $get_cate_name =$post->getcatebyId($id);
                    if($get_cate_name){
                        while($result =$get_cate_name->fetch_assoc()){

                  
                  ?>
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text"value="<?php  echo $result['title']?>" name="catName" placeholder="Sửa danh mục " class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <input type="text" name="catDesc" placeholder="Nhập  mô tả danh mục " value="<?php  echo $result['description']?>" class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                               <select name="catStatus">
                                <?php
                                if($result['status']==0){
                                ?>
                                   <option selected value="0">Hiển thị</option>
                                   <option value="1">Ẩn</option>
                                <?php
                            }else{
                                ?>
                                 <option value="0">Hiển thị</option>
                                   <option selected value="1">Ẩn</option>
                                <?php
                            }
                            ?>
                               </select>
                            }
                            </td>
                        </tr>
						<tr> 
                            <td>
                                <input type="submit" name="submit" Value="Cập nhật" />
                            </td>
                        </tr>
                    </table>
                </form>

                    <?php 
                          }
                    }
                     ?>
                </div>
            </div>
        </div>
<?php include 'inc/footer.php';?>