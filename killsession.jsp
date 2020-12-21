<%-- 
    Document   : killsession
    Created on : Sep 24, 2018, 11:43:13 PM
    Author     : MY
--%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log out</title>
</head>
<body>
<%
    session = request.getSession();
    session.setAttribute("login", "no");
    response.sendRedirect("index2.jsp");
%>

</body>
</html>