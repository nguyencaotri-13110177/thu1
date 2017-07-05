<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="resources/img/favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>T&T_ChuyenKhoan</title>

        <!-- CSS  -->
        <link href="resources/css/icon.css" rel="stylesheet">
        <link href="resources/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="resources/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

        <link rel="stylesheet" href="resources/css/jquery-ui.css">
        <script src="resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="resources/js/jquery-ui.min.js" type="text/javascript"></script>
        <script src="resources/js/air-port-codes-api-min.js"></script>



        <!--Script Zendesk Chat Support Live Chat-->
        <script src="resources/js/livechat.js"></script>
        <!--End of Zendesk Chat Script-->






    </head>
    <body>
        <%@ include file="/resources/ModuleDesign/navbar.jsp"%>

        <div class="container">
            <div class="section">

                <div class="row">
                    <div class="col s12">
                        <h4>Hướng dẫn thanh toán qua MOMO</h4>
                        <h6 style="color: red">! Hướng dẫn thanh toán đã được gởi vào email của bạn</h6>
                    </div>
                    <div class="col s12">

                        <div class="col s12">
                                <div class="card-panel ">
                                    <span>1. Tiến hành thanh toán trước hh:mm hôm nay
                                    </span>
                                </div>
                        </div>
                        
                        <div class="col s12">
                            <div class="card-panel ">
                                <span>2. Thanh toán<br>
                                    Mã thanh toán MOMO: 9704 1800 5909 9440<br>
                                    Nội dung thanh toán:     Thanh toán đặt chỗ ${id}<br>
                                    Số tiền:    ${TongTien} VND<br>
                                    <p style="color:red;">Lưu ý: Nếu thanh toán qua cửa hàng phải yêu cầu lấy hóa đơn</p>
                                </span>
                            </div>
                        </div>
                        
                        <div class="col s12">
                            <div class="card-panel ">
                                <span>3. Sau khi xác nhận thanh toán, chúng tôi sẽ gởi Email cho bạn<br>
                                </span>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>





        <!--  Scripts-->
        <script src="resources/js/materialize.js"></script>
        <script src="resources/js/init_2.js"></script>

    </body>
</html>