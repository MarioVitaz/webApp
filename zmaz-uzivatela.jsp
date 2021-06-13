<%@ page import="sk.User.UserController" %>
<%@ page import="sk.User.User" %>
<%@include file="components/head.jsp"%>
<%@include file="Menu/menuAdmin.jsp"%>


    <%@include file="components/head.jsp"%>
    <%
        UserController userController = new UserController();
        int id1 = Integer.parseInt(request.getParameter("id"));

        User p = userController.getUser(id1);

    %>


<div class="page-header">
    <h1>Úprava užívateľa</h1>
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <form method="post" action="deleteUser">
                    <div class="form-group" hidden>
                        <label for="id2">Id</label>
                        <input type="text" class="form-control" id="id2" name="id2" placeholder="id2"
                               value="<%=p.getId()%>">
                    </div>

                    <div class="form-group" >
                        <label for="meno">Meno: *</label>
                        <input type="text" disabled class="form-control" id="meno" name="meno" placeholder="meno"
                               value="<%=p.getMeno() %>">
                    </div>

                    <div class="form-group">
                        <label for="priezvisko">Priezvisko: *</label>
                        <input type="text" disabled  class="form-control" id="priezvisko" name="priezvisko"
                               placeholder="priezvisko"
                               value="<%=p.getPriezvisko() %>">
                    </div>

                    <div class="form-group">
                        <label for="email">E-mail: *</label>
                        <input type="email" disabled  class="form-control" id="email" name="email" placeholder="email"
                               value="<%=p.getEmail() %>">
                    </div>

                    <div class="form-group">
                        <label for="heslo">Heslo: *</label>
                        <input type="password" disabled  class="form-control" id="heslo" name="heslo" placeholder="heslo"
                               value="<%=p.getHeslo() %>">
                    </div>

                    <div class="form-group">
                        <label for="telefon">Telefón: *</label>
                        <input type="tel" disabled  class="form-control" id="telefon" name="telefon" placeholder="telefon"
                               value="<%=p.getTelefon() %>">
                    </div>

                    <div class="form-group">
                        <label for="pohlavie">Pohlavie</label>
                        <select class="form-control" disabled  id="pohlavie" name="pohlavie" placeholder="pohlavie"
                                value="<%=p.getId_skupina() %>">
                            <option>Muz</option>
                            <option>Zena</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="body">Body: *</label>
                        <input type="text" disabled  class="form-control" id="body" name="body" placeholder="body"
                               value="<%=p.getBody() %>">
                    </div>

                    <div class="form-group">
                        <label for="skupina">Skupina</label>
                        <select class="form-control" disabled  id="skupina" name="skupina" placeholder="skupina"
                                value="<%=p.getId_skupina() %>">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                        </select>
                    </div>


                    <button type="submit" class="btn btn-danger">Delete</button>


                </form>
            </div>
        </div>
    </div>
</div>
<%@include file="components/foot.jsp"%>