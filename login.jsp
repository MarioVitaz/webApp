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
        <form method="post" action="loginUser">

          <div class="form-group">
            <label for="email">Mail</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="email">
          </div>

          <div class="form-group">
            <label for="heslo">Heslo</label>
            <input type="password" class="form-control" id="heslo" name="heslo" placeholder="heslo">
          </div>


          <button type="submit" class="btn btn-primary">Prihlásiť</button>
        </form>
      </div>
    </div>

    <%--    <div class="row">--%>
    <%--        <div class="col-sm">--%>
    <%--            <form method="post" action="loginUser">--%>

    <%--                <div class="form-group">--%>
    <%--                    <label for="logEmail">Mail</label>--%>
    <%--                    <input type="logEmail" class="form-control" id="logEmail" name="logEmail" placeholder="logEmail">--%>
    <%--                </div>--%>

    <%--                <div class="form-group">--%>
    <%--                    <label for="logHeslo">Heslo</label>--%>
    <%--                    <input type="password" class="form-control" id="logHeslo" name="logHeslo" placeholder="logHeslo">--%>
    <%--                </div>--%>


    <%--                <button type="submit" class="btn btn-primary">Prihlasit</button>--%>
    <%--            </form>--%>
    <%--        </div>--%>
    <%--    </div>--%>
  </div>
<%@include file="components/foot.jsp"%>