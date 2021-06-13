<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 6. 5. 2020
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <header class="header js-header" role="banner">
        <div class="header__wrapper clearfix">
            <div class="site-logo js-site-logo">
                <a href="#"><img src="image/logo.png"  srcset="image/logo.png 2x" alt="Beach Ružomberok" class="site-logo__img"></a>
            </div>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Úvod <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="turnaje.jsp">Turnaje</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="liga.jsp">Liga</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="true">
                            Prihlásenie
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="login.jsp">Prihlasenie</a>
                            <a class="dropdown-item" href="register.jsp">Registrácia</a>

                        </div>
                    </li>
                </ul>
            </div></div></header>
</nav>
</body>
</html>
