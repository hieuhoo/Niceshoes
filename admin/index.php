<?php 
require('../carbon/autoload.php');//su dụng carbon lấy ngày tháng
use Carbon\Carbon;
use Carbon\CarbonInterval;
?>
<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2> Thống kê đơn hàng : <?php echo Carbon::now('Asia/Ho_Chi_Minh'); ?></h2>
                 <!-- lay ra ngayf gio hien tai  -->
                <div class="block"> 
                    <div class="col-md-3">
                        Từ ngày: <input class="form-control " type="text" id="datepicker_from"></p>

                    </div>              
                    <div class="col-md-3">
                        Tới ngày: <input class="form-control " type="text" id="datepicker_to"></p>
                          <!-- <input type="button" value="Lọc theo ngày" name="" class="btn btn-success "> -->
                    </div> 
                    <div class="col-md-3">
                        Lọc theo: <span id="text-date"></span>
                        <select class="form-control thongketheongay">
                            <option>Lọc theo</option>
                            <option value="7ngay">7 ngày</option>
                            <option value="30ngay"> 30 ngày</option>
                            <option value="90ngay"> 90 ngày</option>
                            <option value="365ngay">  1 năm</option>
                        </select>
                    </div>

                </div>
                <div class="row"></div>
                <div class="col-md-12"></div>
                <div id="myfirstchart" style="height:250px;"></div>
            </div>
        </div>
       
<?php include 'inc/footer.php';?>