<%--
  Created by IntelliJ IDEA.
  User: mario
  Date: 13. 5. 2020
  Time: 19:14
  To change this template use File | Settings | File Templates.
--%>
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header tit-up">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Prihlásenie</h4>
            </div>
            <div class="modal-body customer-box">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs">
                    <li><a class="active" href="#Login" data-toggle="tab">Login</a></li>
                    <li><a href="#Registration" data-toggle="tab">Registration</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div class="tab-pane active" id="Login">
                        <form role="form" class="form-horizontal" method="post" action="loginUser">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="email">Mail</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="heslo">Heslo</label>
                                    <input type="password" class="form-control" id="heslo" name="heslo" placeholder="heslo">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Prihlásiť</button>
<%--                            <div class="row">--%>
<%--                                <div class="col-sm-10">--%>
<%--                                    --%>
<%--                                    <a class="for-pwd" href="javascript:;">Forgot your password?</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </form>
                    </div>
                    <div class="tab-pane" id="Registration">
                        <form role="form" class="form-horizontal" method="post" action="insertUser">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="meno">Meno: *</label>
                                    <input type="text" class="form-control" id="meno" name="meno" placeholder="meno" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="priezvisko">Priezvisko: *</label>
                                    <input type="text" class="form-control" id="priezvisko" name="priezvisko" placeholder="priezvisko" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="email">E-mail: *</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="email" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="heslo">Heslo: *</label>
                                    <input type="password" class="form-control" id="heslo" name="heslo" placeholder="heslo"
                                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                                           title="Must contain at least one number and one uppercase and
                                            lowercase letter, and at least 8 or more characters" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label for="heslo">Telefón: *</label>
                                    <input type="tel" class="form-control" id="telefon" name="telefon" placeholder="telefon" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <fieldset class="form-group">
                                        <div class="row">
                                            <legend class="col-form-label col-sm-2 pt-0">Pohlavie: *</legend>
                                            <div class="col-sm-10">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="pohlavie" id="pohlavie1" value="muz" checked>
                                                    <label class="form-check-label" for="pohlavie1">
                                                        Muž
                                                    </label>
                                                </div>
                                                <div class="form-check">
                                                    <input class="form-check-input" type="radio" name="pohlavie" id="pohlavie2" value="zena">
                                                    <label class="form-check-label" for="pohlavie2">
                                                        Žena
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset> </div>
                            </div>
                            <button type="submit" class="btn btn-primary">Registrovať sa</button>
<%--                            <div class="row">--%>
<%--                                <div class="col-sm-10">--%>
<%--                                    <button type="button" class="btn btn-light btn-radius btn-brd grd1">--%>
<%--                                        Save &amp; Continue--%>
<%--                                    </button>--%>
<%--                                    <button type="button" class="btn btn-light btn-radius btn-brd grd1">--%>
<%--                                        Cancel</button>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<header class="top-navbar">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">BeachVolley</a>

    <h2><strong>BeachVolleyball </strong> California</h2>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
            aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Uvod</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="liga.jsp">Liga</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="coachesTable.jsp">Tréneri</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="turnaje.jsp">Turnaje</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="rezervacia.jsp">Rezervacia</a>
            </li>

<%--            <li>--%>
<%--                <a class="nav-link" href="login.jsp">Prihlasenie</a>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <a class="nav-link" href="register.jsp">Registracia</a>--%>
<%--            </li>--%>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a class="hover-btn-new log orange" href="#" data-toggle="modal" data-target="#login"><span>Prihlasenie</span></a></li>
        </ul>
    </div>
        </div>
</nav>
</header>




