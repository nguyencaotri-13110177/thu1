<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="resources/img/favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>T&T_Contact</title>

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

                <div class="row col s12">
                    <div class="col s2"></div>
                    <div class="col s8">
                        <div class="card">
                            <div class="card-image">
                                <img src="resources/img/pp1.jpg">
                                <span class="card-title"><spring:message code="contact.LienHeVoiChungToi"/></span>
                            </div>
                            <div class="card-content">
                                <div class="chip">
                                    <img src="resources/img/gmail.png">
                                    Email: datvemaybay2017@gmail.com
                                </div>
                                <div class="chip">
                                    <img src="resources/img/call.png">
                                    SDT: MR.Tri - 0167.4960.395 / MR.Tuong - 0167.944.6739
                                </div>
                                <div class="chip">
                                    <img src="resources/img/skype.png">
                                    Skype: Nguyễn Cao Trí - nguyencaotri1995
                                </div>
                                <div class="chip">
                                    <img src="resources/img/facebook.png">
                                    Facebook: facebook.com/caotri.nguyen.735
                                </div>
                            </div>                            
                        </div>
                    </div>
                    <div class="col s2"></div>
                </div>


            </div>
        </div>





        <!--  Scripts-->
        <script src="resources/js/materialize.js"></script>
        <script src="resources/js/init_2.js"></script>

    </body>
</html>