<%-- 
    Document   : newjsp
    Created on : Sep 24, 2018, 10:25:41 PM
    Author     : MY
--%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.SQLException" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <%
            
            try{
            
            session = request.getSession();
            if(session.getAttribute("login").toString() == "yes")
            {
                String uid= session.getAttribute("userid").toString();
                System.out.println("Welcome "+uid);
                int phone;
                String email="",sql="",title="",descr="";
                phone = Integer.parseInt(request.getParameter("phone"));
                email = request.getParameter("email");
                title = request.getParameter("title");
                descr = request.getParameter("descr");
                Connection con;
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");
                    if(uid != "")
                    {
                        sql = "insert into review values(?,?,?,?,?)";
                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1,uid);
                        ps.setInt(2,phone);
                        ps.setString(3,email);
                        ps.setString(4,title);
                        ps.setString(5,descr);
                        ps.executeUpdate();
                        response.sendRedirect("aboutus.jsp");
                    }
                    else
                    {
                        response.sendRedirect("login.jsp");
                    }

                }
           
            
            else
            {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Sorry you are not logged in !!');");
                out.println("location='login.jsp';");
                out.println("</script>");

            }
           
            }
            catch(Exception e)
            {
                System.out.println(e);
            }

  
  
  %>      
    </body>
</html>
