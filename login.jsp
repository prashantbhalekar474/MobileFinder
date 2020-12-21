<%-- 
    Document   : login
    Created on : Sep 24, 2018, 11:32:07 PM
    Author     : MY
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.SQLException" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  
  <!--Import materialize.css-->
  <!--<link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />-->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
   
    <!--Font awesome.css-->
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
   
  <link rel="stylesheet" href="css/mycss1.css">
  <link rel="stylesheet" href="css/materialize-social.css">
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
<body id="home" class="scrollspy" style="background-image: url(css/background111.jpg);background-size: cover;background-repeat: no-repeat;">
    
    <!-- Nav Bar -->
        <div class="navbar-fixed">
          <nav style="background-color: #2f496e">
              <div class="nav-wrapper">
                  <a href="#" class="heading" style="margin-left: 150px;">MOBILE FINDER</a>
                  <a href="#" data-target="mobile-nav" class="sidenav-trigger">
                    <i class="material-icons">menu</i>
                  </a>
                  <ul class="right hide-on-med-and-down" style="margin-right: 100px;">
                  <li>
                    <a href="index.jsp" style="font-size: 15px">Home</a>
                  </li>
                  <li>
                    <a href="search.jsp" style="font-size: 15px">Search</a>
                  </li>
                  <li>
                    <a href="filter.jsp" style="font-size: 15px">Filter</a>
                  </li>
                  <li>
                    <a href="comparison_send.jsp" style="font-size: 15px">Compare</a>
                  </li>
                  <li>
                    <a href="aboutus.jsp" style="font-size: 15px">About Us</a>
                  </li>
                  <%
                
            String fn="";
            try{
            
            session = request.getSession();
            
            if(session.getAttribute("login").toString() == "yes")
            {
            System.out.println("loged in");
            fn= session.getAttribute("rs.getString(1)").toString();
            String ln= session.getAttribute("rs.getString(2)").toString();
            String uid= session.getAttribute("userid").toString();
            String login = session.getAttribute("login").toString();
            System.out.println("Welcome "+fn+" "+ln+" "+uid+" "+login);
            out.println("<li><a>Account</a>");
            out.println("<ul><li>");
            out.println(" &nbsp;<span id='uid'></span>");
            out.println("</li>"); 
            out.println("<li>");
            out.println("<a href='killsession.jsp'>Logout</a>");
            out.println("</li></ul>");
            out.println("</li>");
            }
            if(session.getAttribute("login").toString() == "no")
            {
                System.out.println("not loged in");
                out.println("<li><a href='login.jsp' class='on-page'>Login</a>");
            }
           
            }
            catch(Exception e){}
            
           
           System.out.println("JSP ID:"+session.getId()); 

            %>
                </ul>
              </div>
            </div>
          </nav>
        </div>
        <ul class="sidenav" id="mobile-nav">
          <li>
            <a href="index.html">Home</a>
          </li>
          <li>
            <a href="Services.html">Services</a>
          </li>
          <li>
            <a href="AboutUs.html">About Us</a>
          </li>
          <li>
            <a href="ContactUs.html">Contact Us</a>
          </li>
        </ul>

  
 <%

  String userid="",passwd="",sql="",ln="";
  Statement st;
  ResultSet rs;
  userid = request.getParameter("userid");
  passwd = request.getParameter("passwd");
  System.out.print("userid: '"+userid+"' passwd: '"+passwd+"'");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");
  try{
  sql = "select * from signup";
  st = con.createStatement();
  rs = st.executeQuery(sql);
  while(rs.next())
  {
    if(userid.equals(rs.getString(3)) && passwd.equals(rs.getString(4)))
    {
        fn=rs.getString(1);
        ln=rs.getString(2);
        System.out.println("Hello "+fn+""+ln);
        System.out.println("Logged in sucessfully");
        session = request.getSession();
        session.setAttribute("rs.getString(1)", fn);
        session.setAttribute("rs.getString(2)", ln);
        session.setAttribute("userid", userid);
        session.setAttribute("login", "yes");
        response.sendRedirect("index2.jsp");
    }
    else{
        System.out.println("Username doesnt exist");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Username or Password incorrect');");
        out.println("location='login.jsp';");
        out.println("</script>");
    }
  }  

   
   
               
  }
  catch(Exception e){}
  
  %>
  
  
  
<br>
<h4 style="font-family: Maiandra GD;text-align: center">Login to Mobile Finder</h4>
<br>
  <div class="containerlogin" >
    <div class="row">
        <form id="formid" method="post" class="col s12" id="reg-form" action="login.jsp">
     <div class="row">
        <div class="input-field col s6"  >
          <input style="margin-top: 50px;;border-radius:5px;background-color: whitesmoke;text-align: center;width: 140%;margin-left: 80px" name="userid" type="text"  class="validate" required placeholder="Username">
        </div>
      </div>
     <div class="row">
        <div class="input-field col s6">
          <input style="border-radius:5px;background-color: whitesmoke;text-align: center;width: 140%;margin-left: 80px" name="passwd" type="password" class="validate" required placeholder="Password">
        </div>
      </div>
      <div class="wrap" >
          <input type="submit" value="submit" class="button" style="padding-left: 80px;padding-top: 10px;width: 50%;margin-bottom: 50px;margin-left: 10px">
      </div>
        <br>
        <h5 style="text-align: center;font-family: Maiandra GD;color: white;">Not registered yet ? 
            <a href="signup.jsp">Create an account</a></h5>
   </form>
</div>
</div>        
    <br><br>
  
  
  
  
  
</body>



</html>