<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="shortcut icon" href="resources/img/favicon.ico" /><!-- icon kế bênh title trên URL  -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>T&T_Index</title>

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


        <!--AirPortCode API tim san bay  -->
        <script>
            $(function () {
                var apiKey,
                        apca,
                        params = {
                            secret: '924dcf0e052d689',
                            key: '6fbf037413',
                            limit: 10
                        };

                initAutoSelect();




                function initAutoSelect() {
                    $(".autocomplete").each(function () {
                        var apca = new apc('autocomplete', params),
                                autocompleteObj = {
                                    source: function (request, response) {
                                        // make the request
                                        apca.request(request.term);

                                        // this builds each line of the autocomplete
                                        itemObj = function (airport, isChild) {
                                            var label;
                                            if (isChild) {
                                                label = '&rdsh;' + airport.iata + ' - ' + airport.name;
                                            } else {
                                                label = airport.city;
                                                if (airport.state.abbr) {
                                                    label += ', ' + airport.state.abbr;
                                                }
                                                if (airport.country.name && ['US'].indexOf(airport.country.iso) < 0) {
                                                    label += ', ' + airport.country.name;
                                                }
                                                label += ' (' + airport.iata + ' - ' + airport.name + ')';
                                            }
                                            return {
                                                label: label,
                                                value: airport.iata + ' - ' + airport.name,
                                                code: airport.iata
                                            };
                                        };


                                        // this deals with the successful response data
                                        apca.onSuccess = function (data) {
                                            var listAry = [],
                                                    thisAirport;
                                            if (data.status) { // success
                                                for (var i = 0, len = data.airports.length; i < len; i++) {
                                                    thisAirport = data.airports[i];
                                                    listAry.push(itemObj(thisAirport));
                                                    if (thisAirport.children) {
                                                        for (var j = 0, jLen = thisAirport.children.length; j < jLen; j++) {
                                                            listAry.push(itemObj(thisAirport.children[j], true));
                                                        }
                                                    }
                                                }
                                                response(listAry);
                                            } else { // no results
                                                response();
                                            }
                                        };
                                        apca.onError = function (data) {
                                            response();
                                            console.log(data.message);
                                        };
                                    },
                                    select: function (event, ui) {
                                        // do something for click event
                                        console.log(ui.item.code);
                                    }
                                }



                        // this is necessary to allow html entities to display properly in the jqueryUI labels
                        $(this).autocomplete(autocompleteObj).data("ui-autocomplete")._renderItem = function (ul, item) {
                            $("#process").hide();
                            $("#process2").hide();
                            return $("<li></li>")
                                    .data("item.autocomplete", item)
                                    .append($("<a></a>").html(item.label))
                                    .appendTo(ul);
                        };

                    });
                }
                ;
            });
        </script>



        <!-- disable ngày về khi chọn 1 chiều -->
        <script>
            $(document).ready(function () {

                $('#motchieu').change(function () {
                    $("#NgayVe").hide();
                });
                $('#khuhoi').change(function () {
                    $("#NgayVe").show();
                });
            });
        </script>

        <!-- hiển thị icon Process khi tìm Mã Sân Bay -->
        <script>
            function TimSanBayDi() {
                var chatinput = document.getElementById("MaSanBayDi").value;
                if (chatinput === "" || chatinput.length === 0 || chatinput === null)
                {
                    $("#process").hide();
                } else
                    $("#process").show();
            }

            function TimSanBayDen() {
                var chatinput = document.getElementById("MaSanBayDen").value;
                if (chatinput === "" || chatinput.length === 0 || chatinput === null)
                {
                    $("#process2").hide();
                } else
                    $("#process2").show();
            }
        </script>

        <!-- kiểm tra trường rỗng -->
        <script>
            function KiemTraTruongRong() {
                var MaSanBayDi = document.getElementById("MaSanBayDi").value;
                var MaSanBayDen = document.getElementById("MaSanBayDen").value;
                var ngaydi = document.getElementById("ngaydi").value;

                if (MaSanBayDi.length === 0 || MaSanBayDen.length === 0 || ngaydi.length === 0)
                {
                    $('#modal1').modal('open');
                }
                else
                    document.getElementById("FormTimVe").submit();
                      
            }
        </script>





    </head>
    <body>
        <%@ include file="/resources/ModuleDesign/navbar.jsp"%>
        
        <!-- Modal Thông báo trường rỗng -->
        <div id="modal1" class="modal">
            <div class="modal-content">
                <img src="resources/img/logo.png">
                <p>Bạn vui lòng nhập đầy đủ: Sân Bay Đi - Sân Bay Đến - Ngày Đi</p>
            </div>
            <div class="modal-footer">
                <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Nhập lại</a>
            </div>
        </div>
        <!-- End Modal Thông báo trường rỗng -->
        
        
        <div id="index-banner" class="parallax-container"><!-- class quy dinh mau chu cua banner trong style.css / hinh nen -->
            <div class="section no-pad-bot">
                <div class="container">
                    <div class="row">
                        <div class="col s12 m7">
                            <div class="card">
                                <div class="card-image">
                                    <img src="resources/img/img8.jpg"> <!-- hinh cua image Card TimVe -->
                                    <span class="card-title"><spring:message code="lable.index.Title"/></span>
                                </div>
                                <div class="card-content">

                                    <div class="row">

                                        <form class="col s12" action="result" method="post" id="FormTimVe">
                                            <div class="row">
                                                <div class="input-field col s5">
                                                    <input onkeyup="TimSanBayDi()" name="MaSanBayDi" id="MaSanBayDi" placeholder="<spring:message code="lable.index.From.comment"/>" id="SanBayDi" type="text" class="validate autocomplete">
                                                    <label for="SanBayDi"><spring:message code="lable.index.From"/></label>                                                    
                                                </div>
                                                <div class="input-field col s1 left">
                                                    <img src="resources/img/810.gif" hidden id="process" >
                                                </div>
                                                <div class="input-field col s5">
                                                    <input onkeyup="TimSanBayDen()" name="MaSanBayDen" id="MaSanBayDen" placeholder="<spring:message code="lable.index.From.comment"/>" id="SanBayDen" type="text" class="validate autocomplete">
                                                    <label for="SanBayDen"><spring:message code="lable.index.To"/></label>
                                                </div>
                                                <div class="input-field col s1">
                                                    <img src="resources/img/810.gif" hidden id="process2">
                                                </div>
                                            </div>

                                            <div class="row">
                                                &nbsp;&nbsp;<input name="group1" type="radio" id="motchieu" checked/>
                                                <label for="motchieu"><spring:message code="lable.index.OneWay"/></label>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <input name="group1" type="radio" id="khuhoi" />
                                                <label for="khuhoi"><spring:message code="lable.index.TwoWay"/></label>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s6">
                                                    <label ><spring:message code="lable.index.Departure"/></label>
                                                    <input name="NgayDi" type="date" class="datepicker" placeholder="<spring:message code="lable.index.Departure.comment"/>" id="ngaydi">
                                                </div>
                                                <div class="input-field col s6" hidden id="NgayVe">
                                                    <label for="first_name"><spring:message code="lable.index.Return"/></label>
                                                    <input name="NgayVe" type="date" class="datepicker" placeholder="<spring:message code="lable.index.Return.comment"/>" id="ngayve">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="input-field col s4">
                                                    <select name="SLNguoiLon">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                    </select>
                                                    <label><spring:message code="lable.index.Adults"/></label>
                                                </div>
                                                <div class="input-field col s4">
                                                    <select name="SLTreEm">
                                                        <option value="0">0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                    </select>
                                                    <label><spring:message code="lable.index.Children"/></label>
                                                </div>
                                                <div class="input-field col s4">

                                                    <select name="SLEmBe">
                                                        <option value="0">0</option>
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                    </select>
                                                    <label><spring:message code="lable.index.Infants"/></label>
                                                </div>
                                            </div>


                                            <center>
                                                <a onclick="KiemTraTruongRong()" class="waves-effect waves-light btn"><i class="material-icons left">search</i><spring:message code="lable.index.SearchTickets"/></a>
                                            </center>
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="parallax"><img src="resources/img/imga.jpg" alt="Unsplashed background img 1" style="height:500px;width:100%;"></div> <!-- hinh cua banner -->
        </div>



        <div class="container">
            <div class="section">
                <!--   Icon Section   -->
                <div class="row">
                    <div class="col s12 m4">
                        <div class="icon-block">
                            <h2 class="center brown-text"><img src="resources/img/iconapi.png" height="70px" width="100px"></h2>
                            <h5 class="center"><spring:message code="lable.index.col1"/></h5>

                            <p class="light"><spring:message code="lable.index.col1.content"/></p>
                        </div>
                    </div>

                    <div class="col s12 m4">
                        <div class="icon-block">
                            <h2 class="center brown-text"><img src="resources/img/iconMaterial2.png" height="70px" width="100px"></h2>
                            <h5 class="center"><spring:message code="lable.index.col2"/></h5>

                            <p class="light"><spring:message code="lable.index.col2.content"/></p>
                        </div>
                    </div>

                    <div class="col s12 m4">
                        <div class="icon-block">
                            <h2 class="center brown-text"><img src="resources/img/iconCloud.png" height="70px" width="100px"></h2>
                            <h5 class="center"><spring:message code="lable.index.col3"/></h5>

                            <p class="light"><spring:message code="lable.index.col3.content"/></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="container">
            <div class="row">
                <img src="resources/img/imgbr.jpg" alt="Unsplashed background img 2" class="col s12"> <!-- hinh cac hang may bay -->
            </div>
        </div>





        <div class="container">
            <div class="section">

                <div class="row">
                    <div class="col s12 center">
                        <h3><i class="mdi-content-send brown-text"></i></h3>
                        <h4><spring:message code="lable.index.TicketAgent"/></h4>
                        <p class="left-align light"><spring:message code="lable.index.TicketAgent.content"/></p>
                    </div>
                </div>

            </div>
        </div>




        <%@ include file="/resources/ModuleDesign/footer.jsp"%>


        <!--  Scripts-->

        <script src="resources/js/materialize.js"></script>
        <script src="resources/js/init_2.js"></script>

    </body>
</html>
