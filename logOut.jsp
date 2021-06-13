<%@include file="components/head.jsp"%>

<%
    session.setAttribute("sessionType", null);
    response.sendRedirect("index.jsp");
%>

<%@include file="components/foot.jsp"%>