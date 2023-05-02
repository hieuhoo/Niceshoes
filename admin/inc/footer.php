 <div class="clear">
        </div>
    </div>
    <div class="clear">
    </div>
    <div id="site_info">
        <p>
         &copy; Copyright <a href="http://trainingwithliveproject.com">FB: HieuHoo</a>. Liên hệ fb hoặc tiktok để biết thêm chi tiết
        </p>
    </div>
    <!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!-- // câu script để chạy thư viện morris biểu đồ -->
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
 <!-- <script >
     $(function(){
        $("#datepicker_from").datepicker({
            dateFormat:'yy-mm-dd',
            duration:"slow" //duration: khoảng tgian
        });
         $("#datepicker_to").datepicker({
            dateFormat:'yy-mm-dd',
            duration:"slow" //duration: khoảng tgian
        });
     });
 </script>
 -->
     <script type="text/javascript">
        $(document).ready(function(){ // khi chạy footer là sẽ chạy tất cả những gì trong document
            day365();
             var chart = new Morris.Bar({
                // Bieu do hien thi theo dang thanh bar
                  // ID of the element in which to draw the chart.
                  element: 'myfirstchart',
                  // Chart data records -- each entry in this array corresponds to a point on
                 parseTime: false,
                  // The name of the data record attribute that contains x-values.
                  // X là trục ngang
                  xkey: 'date',
                  // A list of names of data record attributes that contain y-values.
                  ykeys: ['order','revenue','quantity'],
                  // revenue là doanh thu
                  // Labels for the ykeys -- will be displayed when you hover over the
                  // chart.
                  labels: ['Số đơn hàng','Doanh thu','Số lượng']
                });

                    // $('.btn-locngay').click(function(){
                    //     var from_date = $('.date_from').val();//khai báo các biến date_from
                    //       var from_to = $('.date_to').val();
                    //       $.ajax({
                    //          url:"../ajax/thongke.php",
                    //          type:"POST",
                    //         dataType:"JSON",
                    //         data:{from_date:from_date,from_to:from_to},
                    //           success: function(data)
                    //         {
                    //             chart.setData(data);//dữ liệu vào biểu đồ
                               
                    //         }
                    //       });
                    // })

                    $('.thongketheongay').change(function(){
                        var thoigian = $(this).val();// this là lấy các giá trị tgian 7,30,90,1 năm
                        if(thoigian =='7ngay'){
                            var text ='7 ngày qua';
                        }else if(thoigian=='30ngay'){
                            var text ='30 ngày qua';
                        }else if(thoigian=='90ngay'){
                            var text ='90 ngày qua';
                        }else {
                            var text ='365 ngày qua';
                        }

                        $('#text-date').text(text);
                            $.ajax(
                            {
                            url:"../ajax/thongke.php",
                            type:"POST",
                            dataType:"JSON",
                            data:{thoigian:thoigian},
                            //trả về kiểu json
                            success: function(data)
                            {
                                chart.setData(data);
                               
                            }
                        });

                     })

                      function day365(){
                        var text ="365 ngày qua"; // hiển thị 365 ngày
                        $('#text-date').text(text);//mặc định dữ liệu thống kê theo 365 ngày
                        $.ajax({ // thực thi ajax
                            url:"../ajax/thongke.php",
                            method:"POST", // phương thức POST
                            dataType:"JSON", // hiển thị dạng json
                            cache:false,
                            success:function(data)
                                    {
                                    chart.setData(data);
                                    $('#text-date').text(text);
                                }
                            });
                   }
                })
          
        </script>
</body>
</html>
