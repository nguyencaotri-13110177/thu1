<%@page  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="index" class="brand-logo"><image src="resources/img/logo.png"></a>

                <!-- menu ở chế độ desktop  -->
                <ul class="right hide-on-med-and-down">
                    <li><a href="contact">Live Chat</a></li>
                    <li><a href="contact">Gửi Email</a></li>
                    <li><a href="dangnhap">Thống Kê</a></li>
                    <li><a href="index">Đăng xuất</a></li>                    
                </ul>


                <!-- menu ở chế độ mobile  -->
                <ul id="nav-mobile" class="side-nav">
                    <li><a href="index">Live Chat</a></li>
                    <li><a href="index">Gửi Email</a></li>
                    <li><a href="huongdan">Thống Kê</a></li>
                    <li><a href="contact">Đăng xuất</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>
    </body>
</html>
