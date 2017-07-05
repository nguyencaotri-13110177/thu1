<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="resources/img/favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>T&T_ThanhToan</title>

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
                        <h4><spring:message code="thanhtoan.ChooseAFormOfPayment"/></h4>
                    </div>
                    <div class="col s12">
                        <ul class="collapsible" data-collapsible="accordion">
                            <li>
                                <div class="collapsible-header"><i class="material-icons">polymer</i><spring:message code="thanhtoan.PaymentGatewayNGANLUONG"/></div>
                                <div class="collapsible-body">
                                    <img src="resources/img/nganluong.png"  height="90" width="50%">
                                    <p><spring:message code="thanhtoan.abc"/><br>
                                        <spring:message code="thanhtoan.comment2"/><br>
                                        <spring:message code="thanhtoan.comment3"/><br>
                                    </p>
                                    
                                    <center><a href="https://www.nganluong.vn/button_payment.php?receiver=datvemaybay2017@gmail.com&product_name=${id}&price=${TongTien}&return_url=index&comments=Thanh toan cho ma dat cho id=${id}"><img src="https://www.nganluong.vn/css/newhome/img/button/pay-sm.png"border="0" /></a></center>
                                </div>
                            </li>
                            <li>
                                <div class="collapsible-header"><i class="material-icons">label_outline</i><spring:message code="thanhtoan.DirectAtTheBankOrATM"/></div>
                                <div class="collapsible-body">
                                    <img src="resources/img/banklink.jpg"  height="250" width="100%">
                                    <p><spring:message code="thanhtoan.comment4"/><br>
                                        <spring:message code="thanhtoan.comment5"/><br>
                                        <spring:message code="thanhtoan.comment6"/><br>
                                        <spring:message code="thanhtoan.comment7"/>
                                    </p>
                                    <div><center><a class="waves-effect waves-light btn" href="chuyenkhoan"><spring:message code="thanhtoan.button.thanhtoan"/><i class="material-icons right">send</i></a></center></div>
                                </div>
                            </li>
                           
                            <li>
                                <div class="collapsible-header"><i class="material-icons">lock</i><spring:message code="thanhtoan.MOMOE-Wallet"/></div>
                                <div class="collapsible-body">
                                    <p><spring:message code="thanhtoan.comment8"/>
                                    </p>
                                    <img src="resources/img/payoo.jpg"  height="100" width="80%" class="center">
                                    <br><br>
                                    <div><center><a class="waves-effect waves-light btn" href="momo"><spring:message code="thanhtoan.button.thanhtoan"/><i class="material-icons right">send</i></a></center></div>
                                </div>
                            </li>
                            
                            <li>
                                <div class="collapsible-header"><i class="material-icons">store</i><spring:message code="thanhtoan.AtStore"/></div>
                                <div class="collapsible-body"><p><spring:message code="thanhtoan.comment9"/> <a href="#"><spring:message code="thanhtoan.comment10"/></a></p></div>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>





        <!--  Scripts-->
        <script src="resources/js/materialize.js"></script>
        <script src="resources/js/init_2.js"></script>

    </body>
</html>