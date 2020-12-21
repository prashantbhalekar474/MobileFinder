<%-- 
    Document   : aboutus
    Created on : Aug 29, 2018, 9:26:15 PM
    Author     : admin
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
    <link rel="stylesheet" href="css/mycss1.css" type="text/css"/>
    

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <title>MOBILE FINDER</title>
    </head>
    <body class="scrollspy">
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
                    <a href="index2.jsp" style="font-size: 15px">Home</a>
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
                  <li class="on-page">
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
        
    <h3 style="text-align: Center;font-family: Maiandra GD">MEET OUR TEAM</h3>
   
    <div class="container">
    <p style="text-align: center;font-size: 25px;font-family:  Maiandra GD">Analysis.Comparison.Reviews. Superior solutions at once! Mobile Finder gives you a chance to quickly and easily find the phone you want in a smarter and a better way. 
With the advent of online shopping portals, purchasing mobiles have become an effortless task. The emergence of Mobile Finder has made it convenient for shoppers to have plethora of products on one platform, which makes their job of researching and comparing between various products, then, finally choosing the one that suits them the best easy and quick. 
In fact, it saves a lot of time! Hence, if you want to analyze any mobile, Mobile Finder showcases a huge array of high end smartphone as well as budget mobiles that suits every pocket.
 </p></div>
   <h4 style="text-align: Center;font-family:  Maiandra GD">Welcome to Mobile Finder</h4>
  <div class="wrap">
  <a class="button" href="#">Contact Us</a>
  </div>
    
   <br><br>
   <section class="aboutus" ><br><br>
   <div class="container" >
       <div class="row">
           <div class="col s12 l5">
               <div class="card" style="transition:.5s">
                   <div class="card-content" style="text-align:center;padding: 0px;">
                       <div class="card-title white-text" style="padding:20px;background-color: #2f496e">
                           <h4>Sign Up</h4>
                           
                       </div>
                       <li class="collection-item" style="list-style-type:none;padding: 13px;font-weight: bold"><u>Stay updated about upcoming mobiles</u></li>
                           <li class="collection-item" style="list-style-type:none;padding: 13px;font-weight: bold"><u>Free sign up</u></li>
                           <li class="collection-item" style="list-style-type:none;padding: 13px;font-weight: bold"><u>Share your review</u></li>
                           <li class="collection-item" style="list-style-type:none;padding: 13px;font-weight: bold"><u>Be a part of Mobile Finder community</u></li>

                   </div>
                   <div class="card-action">
                       <a href="signup.jsp"><div class="btn btn-block btn-large " style="background-color: #c99e10">Sign UP</div></a>
                   </div>
               </div>
           </div>
       </div>
   </div><br>
   </section>
   
   <br><br>
   
   
   <section class="section">
       <div class="row">
           <div class="col l1"></div>
    <form class="col l4" action="newjsp.jsp">
         <h3 style="text-align: Center;font-family: Maiandra GD">Write Us</h3>

        <div class="row">
        <div class="input-field col l12">
          <input  id="phone" placeholder="Phone number" type="text" name="phone" >
        </div>
      </div>

      <div class="row">
        <div class="input-field col l12">
          <input  id="email" placeholder="Email" type="text" name="email" class="validate">
        </div>
      </div>
       
       <div class="row">
        <div class="input-field col l12">
          <input  id="title" type="text" placeholder="Title" name="title" class="validate">
        </div>
      </div> 
        
      <div class="row">
        <div class="input-field col l12">
          <input  id="description" type="text" placeholder="description" name="descr" class="validate">
          
        </div>
      </div>
        <div class="row">
            <div class="col l2"></div>
            <input type="submit" value="submit" class="col l8">
        </div>
        
    </form>
           
    <div class="col l1"></div>
        <div class="col l6" style='border: 2px solid #2f496e;'>
            <h3 style="text-align: Center;font-family: Maiandra GD">Reviews</h3>
             
            
            <%
            String title[] = new String[10];
            String descr[] = new String[10];
            
            int n = 0;
            
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");
                
                String sql = "select * from confirm_review";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                while(rs.next())
                {
                    if(n<4)
                    {
                        title[n] = rs.getString(4);
                        descr[n] = rs.getString(5);
                        
                        out.println("<div class='row'><div class='col l1'></div>");
                        out.println("<div class='col l10' style='border: 2px solid #2f496e;border-radius: 30px;'>");
                        out.println("<h5 id='title"+n+"'style='color: '>useful</h5>");
                        out.println("<h6 id='descr"+n+"'>I think mobile finder is useful to find a mobile... </h6>");
                        out.println("</div></div>");
                        
                        out.println("<script>");
                        out.println("document.getElementById('title"+n+"').innerHTML = '"+title[n]+"'");
                        out.println("document.getElementById('descr"+n+"').innerHTML = '"+descr[n]+"'");
                        out.println("</script>");
                        
                        n = n + 1;
                    }
                }
                if(n>=4)
                {
                    out.println("<h4 style='text-align: center;text-decoration: underline;'><a href='#'>Read All Reviews</a></h4>");
                }
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
    
        %>
            
            
          
            
               
           
        </div>
    </div>
   
   </section>
   
  <script>

    document.getElementById("uid").innerHTML = "<%=fn%>";

  </script>


    </body>
</html>
