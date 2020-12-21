
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
    
    
    
    
<body style="background-image: url(css/background111.jpg);background-size: cover;background-repeat: no-repeat;">
   
  
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
                out.println("<li><a href='login.jsp'>Login</a>");
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
        
        
    <br>
    <h4 style="font-family: Maiandra GD;text-align: center">Sign Up to Mobile Finder</h4>
    <br>
  <div class="containersignup" >
    <div class="row">
        <form id="formid" class="col s12" id="reg-form" action="signup.jsp">
     <div class="row">
        <div class="input-field col s6">
          <input style="margin-top: 10px;border-radius:5px;background-color: whitesmoke;text-align: center;width: 140%;margin-left: 80px" name="firstname" type="text"  class="validate" required placeholder="First Name">
        </div>
      </div>
     <div class="row">
        <div class="input-field col s6">
          <input style="margin-top: 10px;border-radius:5px;background-color: whitesmoke;text-align: center;width: 140%;margin-left: 80px" name="lastname" type="text" class="validate" required placeholder="Last Name">
        </div>
      </div>
     <div class="row">
        <div class="input-field col s6">
          <input style="margin-top: 10px;border-radius:5px;background-color: whitesmoke;text-align: center;width: 140%;margin-left: 80px" name="username" type="text" class="validate" required placeholder="Username">
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input style="margin-top: 10px;border-radius:5px;background-color: whitesmoke;text-align: center;width: 140%;margin-left: 80px" name="password" id="password" type="password" class="validate" required placeholder="Enter Password" required>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s6">
          <input style="margin-top: 10px;border-radius:5px;background-color: whitesmoke;text-align: center;width: 140%;margin-left: 80px" name="repassword" id="repassword" type="password" class="validate" required placeholder="Re-enter Password" required>
        </div>
      </div>
           
      <div class="wrap" >
          <input type="submit" value="submit" class="button" style="padding-left: 80px;padding-top: 10px;width: 50%;margin-bottom: 10px;margin-left: 10px">
      </div>
        <br>
        <h5 style="text-align: center;font-family: Maiandra GD;">Have an account already ? <a href="login.jsp">Login In</a></h5>
   </form>
</div>
</div>        
    <br><br>
    
    
    <%
  String firstname = "";
  String lastname = "";
  String username = "";
  String password = "";
  String repassword = "";
  
  try{
  
                String sql1="",sql2="";
                Statement st;
                ResultSet rs;
                StringBuilder sb = new StringBuilder();
                boolean found = false;
                String sql="";
                String userid="";
                String passwd="";
                userid = request.getParameter("userid");
                passwd = request.getParameter("passwd");
                
                firstname = request.getParameter("firstname");
                lastname = request.getParameter("lastname");
                username = request.getParameter("username");
                password = request.getParameter("password");
                repassword = request.getParameter("repassword");
                
                if(password.equals(repassword))
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");
                sql1 = "insert into signup values(?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql1);
                ps.setString(1,firstname);
                ps.setString(2,lastname);
                ps.setString(3,username);
                ps.setString(4,password);
                
                sql2 = "select * from signup";
                st = con.createStatement();
                rs = st.executeQuery(sql2);
                while(rs.next())
                {
                    for(char c : firstname.toCharArray())
                    {
                        if(Character.isDigit(c))
                        {
                        sb.append(c);
                        found = true;
                        System.out.print("Firstname contains digits");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Firstname contains digits');");
                        out.println("location='signup.jsp';");
                        out.println("</script>");
                        return;
                        }
                        else if(found)
                        {
                            break;                
                        }
                    }
                    for(char c : lastname.toCharArray())
                    {
                        if(Character.isDigit(c))
                        {
                        sb.append(c);
                        found = true;
                        System.out.print("Lastname contains digits");
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Lastname contains digits');");
                        out.println("location='signup.jsp';");
                        out.println("</script>");
                        return;
                        }
                        else if(found)
                        {
                            break;                
                        }
                    }
                    if(username.equals(rs.getString(3)))
                    {
                        System.out.println("Username exist");
                        
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Username already exists');");
                        out.println("location='signup.jsp';");
                        out.println("</script>");
                        return;
                    }
                    
                }
                System.out.print("Username is unique");
                ps.executeUpdate();
                response.sendRedirect("login.jsp");
                
                
                }
  
  }
  catch(Exception e){}
  %>
    
    
<script>
        document.getElementById('formid').reset();
        $(document).ready(function () {
            resetForms();
        });

        function resetForms() {
            document.forms['myFormName'].reset();
        }
        
    
        var password = document.getElementById("password");
        var confirm_password = document.getElementById("repassword");

        function validatePassword(){
            if(password.value !== repassword.value) {
                repassword.setCustomValidity("Passwords Don't Match");
            } else {
                repassword.setCustomValidity('');
            }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
</body>
</html>
