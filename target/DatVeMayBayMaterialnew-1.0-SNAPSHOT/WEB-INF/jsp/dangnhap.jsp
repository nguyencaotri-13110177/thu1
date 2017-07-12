<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="resources/img/favicon.ico" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>T&T_DangNhap</title>

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
                    <div class="col s12 m8 offset-m2 l6 offset-l3">
                        <div class="card-panel grey lighten-5 z-depth-1">
                            <center><img src="resources/img/locked.png" alt="" ></center><br>
                            <div class="row">
                                <form class="col s12">                                                          
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="username" type="text" class="validate">
                                            <label for="username"><spring:message code="dangnhap.TenDangNhap"/></label>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="password" type="password" class="validate">
                                            <label for="password"><spring:message code="dangnhap.MatKhau"/></label>
                                        </div>
                                    </div>
                                    <center>
                                        <button class="btn waves-effect waves-light" type="submit" name="action"><spring:message code="dangnhap.button.DangNhap"/>
                                            <i class="material-icons right">input</i>
                                        </button>
                                    </center>
                                    <span class="black-text">
                                        <a href="quenmatkhau"><u><spring:message code="dangnhap.QuenMatKhau"/></u></a>
                                    </span>

                                </form>
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