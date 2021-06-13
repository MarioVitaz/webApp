
    <%@include file="components/head.jsp"%>

        <%
    if (session.getAttribute("sessionType") == "admin") {
        out.print("Admin session");
    } else if (session.getAttribute("sessionType") == "user") {
        out.print("User session");
%>
    <%@include file="Menu/menuUser.jsp" %>
        <%

} else {
    out.print("No session");
%>
    <%@include file="Menu/menu.jsp" %>
        <%
    }
%>
<div class="container">
    <div class="row">
        <div class="col-sm">
            <form method="post" action="insertUser">

                <div class="form-group">
                    <label for="meno">Meno: *</label>
                    <input type="text" class="form-control" id="meno" name="meno" placeholder="meno" required>
                </div>

                <div class="form-group">
                    <label for="priezvisko">Priezvisko: *</label>
                    <input type="text" class="form-control" id="priezvisko" name="priezvisko" placeholder="priezvisko" required>
                </div>

                <div class="form-group">
                    <label for="email">E-mail: *</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="email" required>
                </div>

                <div class="form-group">
                    <label for="heslo">Heslo: *</label>
                    <input type="password" class="form-control" id="heslo" name="heslo" placeholder="heslo"
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                           title="Must contain at least one number and one uppercase and
                           lowercase letter, and at least 8 or more characters" required>
                </div>

                <div class="form-group">
                    <label for="heslo">Telefón: *</label>
                    <input type="tel" class="form-control" id="telefon" name="telefon" placeholder="telefon" required>
                </div>

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
                </fieldset>


                <button type="submit" class="btn btn-primary">Registrovať sa</button>
            </form>
        </div>
        <div id="message">
            <h3>Password must contain the following:</h3>
            <p id="letter" class="invalid"><b>Malé</b> písmená</p>
            <p id="capital" class="invalid"><b>Veľké</b> písmená</p>
            <p id="number" class="invalid"><b>Čísla</b></p>
            <p id="length" class="invalid">Minimálne <b>8 znakov</b></p>
        </div>

    </div>
</div>

<%@include file="components/foot.jsp"%>