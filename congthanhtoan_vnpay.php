<?php 
//code thanh toán vnpay
date_default_timezone_set('Asia/Ho_Chi_Minh');
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
  
$vnp_TmnCode = " HSA1OOS4"; //Mã định danh merchant kết nối (Terminal Id)
$vnp_HashSecret = " SLYTLCYZXRYZSRUFCVFZTHQJSYLJVWQS
"; //Secret key
$vnp_Url = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
$vnp_Returnurl = "http://localhost:81/shopbida/donhangthanhtoanonline.php";
$vnp_apiUrl = "http://sandbox.vnpayment.vn/merchant_webapi/merchant.html";
// $apiUrl = "https://sandbox.vnpayment.vn/merchant_webapi/api/transaction";
//Config input format
//Expire
$startTime = date("YmdHis");
$expire = date('YmdHis',strtotime('+15 minutes',strtotime($startTime)));
//end config file

$vnp_TxnRef = time(); //Mã giao dịch thanh toán tham chiếu của merchant
$vnp_OrderInfo='Thanh toán đơn hàng vnpay';
$vnp_OrderType='other';
$vnp_Amount = $_POST['total_congthanhtoan']; // Số tiền thanh toán
$vnp_Locale = 'vn'; //Ngôn ngữ chuyển hướng thanh toán
$vnp_BankCode = 'NCB'; //Mã phương thức thanh toán
$vnp_IpAddr = $_SERVER['REMOTE_ADDR']; //IP Khách hàng thanh toán

$inputData = array(
    "vnp_Version" => "2.1.0",
    "vnp_TmnCode" => $vnp_TmnCode,
    "vnp_Amount" => $vnp_Amount,
    "vnp_Command" => "pay",
    "vnp_CreateDate" => date('YmdHis'),
    "vnp_CurrCode" => "VND",
    "vnp_IpAddr" => $vnp_IpAddr,
    "vnp_Locale" => $vnp_Locale,
    "vnp_OrderInfo" => $vnp_OrderInfo,
    "vnp_OrderType" => $vnp_OrderType,
    "vnp_ReturnUrl" => $vnp_Returnurl,
    "vnp_TxnRef" => $vnp_TxnRef
    // "vnp_ExpireDate"=>$expire
);

if (isset($vnp_BankCode) && $vnp_BankCode != "") {
    $inputData['vnp_BankCode'] = $vnp_BankCode;
}
if (isset($vnp_Bill_State) && $vnp_Bill_State != "") {
    $inputData['vnp_Bill_State'] = $vnp_Bill_State;
}
ksort($inputData);
$query = "";
$i = 0;
$hashdata = "";
foreach ($inputData as $key => $value) {
    if ($i == 1) {
        $hashdata .= '&' . urlencode($key) . "=" . urlencode($value);
    } else {
        $hashdata .= urlencode($key) . "=" . urlencode($value);
        $i = 1;
    }
    $query .= urlencode($key) . "=" . urlencode($value) . '&';
}

$vnp_Url = $vnp_Url . "?" . $query;
if (isset($vnp_HashSecret)) {
    $vnpSecureHash =   hash_hmac('sha512', $hashdata, $vnp_HashSecret);//  
    $vnp_Url .= 'vnp_SecureHash=' . $vnpSecureHash;
}
$returnData = array('code' => '00'
    , 'message' => 'success'
    , 'data' => $vnp_Url);
if(isset($_POST['redirect'])){
    header('Location:' . $vnp_Url);
    die();
}else{
    echo json_encode($returnData);
}



//thanh toán momo


//thanh toán paypal
//thanh toán onepay


 ?>

 {"code":"00","message":"success","data":"https:\/\/sandbox.vnpayment.vn\/paymentv2\/vpcpay.html?
 vnp_Amount=2500000000&
 vnp_BankCode=NCB&
 vnp_Command=pay&
 vnp_CreateDate=20230201140534&
 vnp_CurrCode=VND&vnp_IpAddr=%3A%3A1&
 vnp_Locale=vn&
 vnp_OrderInfo=Thanh+to%C3%A1n+%C4%91%C6%A1n+h%C3%A0ng+vnpay&
 vnp_OrderType=other&
 vnp_ReturnUrl=http%3A%2F%2Flocalhost%3A81%2Fshopbida%2Fonlinepayment.php&
 vnp_TmnCode=+HSA1OOS4&
 vnp_TxnRef=1675235134&
 vnp_Version=2.1.0&vnp_SecureHash=4997236e2b8e962bd3df522e5e3722fb9e6bdab0b2c76f7fc5596a604f8b05042a29d2c53b076167b4c981303cf79e0219a017aab35fc0ff2824f30cb65e8532"}