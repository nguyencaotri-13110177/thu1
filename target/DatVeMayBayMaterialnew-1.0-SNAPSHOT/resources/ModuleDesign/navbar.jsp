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
                    <li><a href="index"><spring:message code="lable.index.Home"/></a></li>
                    <li><a href="huongdan"><spring:message code="lable.index.TicketingGuide"/></a></li>
                    <li><a href="contact"><spring:message code="lable.index.Contact"/></a></li>
                    <li>
                        <ul id="dropdown1" class="dropdown-content">
                            <li><a href="?lang=en">Tiếng anh</a></li>
                            <li><a href="?lang=vi">Tiếng việt</a></li>
                        </ul>
                        <a class="btn dropdown-button" href="#!" data-activates="dropdown1"><i class="material-icons left">language</i><spring:message code="lable.index.ChooseLanguage"/></a>
                    </li>
                </ul>


                <!-- menu ở chế độ mobile  -->
                <ul id="nav-mobile" class="side-nav">
                    <li><a href="index"><spring:message code="lable.index.Home"/></a></li>
                    <li><a href="huongdan"><spring:message code="lable.index.TicketingGuide"/></a></li>
                    <li><a href="contact"><spring:message code="lable.index.Contact"/></a></li>
                    <li>
                        <ul id="dropdown2" class="dropdown-content">
                            <li><a href="?lang=en">Tiếng anh</a></li>
                            <li><a href="?lang=vi">Tiếng việt</a></li>
                        </ul>
                        <a class="btn dropdown-button" href="#!" data-activates="dropdown2"><i class="material-icons left">language</i><spring:message code="lable.index.ChooseLanguage"/></a>
                    </li>

                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>
    </body>
</html>
