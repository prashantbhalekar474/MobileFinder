<%-- 
    Document   : index
    Created on : Jul 31, 2018, 2:33:14 AM
    Author     : PRASHANT-AKSHAY
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
    <script defer src="https://use.fontawesome.com/releases/v5.1.0/js/all.js" integrity="sha384-3LK/3kTpDE/Pkp8gTNp2gR/2gOiwQ6QaO7Td0zV76UFJVhqLl4Vl3KL1We6q6wR9" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/mycss1.css" type="text/css"/>
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <title>MOBILE FINDER</title>
    </head>
    <body>
         
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
                  <li class="on-page">
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
        

        <section class="section">
        <div class="container">
        <div class="container1">
            <div class="row">
        <form action="search1.jsp" enctype="multipart/form-data">
        
        Enter Mobile Brand Or Name :
        <input type="text" name="search" placeholder="search here"><br/><br/>        
        <input type="submit" value="Search" class="col l6">
        
        </form>
            </div>
            </div>
        </div>
        </section>
        <br><br>
        
        
        
        <section class="section-padding">
            <h3 id="search">Choose Mobile</h3>
        </section>
        <br>
        
        <section class="section">
            
            <%
                String search = request.getParameter("search");
                String img ="",name="",brand="";
                int id;
                int n=1;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");

                    String sql = "select * from mb_detail where brand ='"+search+"' or name ='"+search+"'";
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    while(rs.next())
                    {
                        id = Integer.parseInt(rs.getString(1));
                        img = rs.getString(37);
                        name = rs.getString(3);
                        brand = rs.getString(2);
                        System.out.println("id is : "+id);
                        System.out.println("img is : "+img);
                        System.out.println("name is : "+name);
                        
                        
                        
                        out.println("<a href='mbspecs.jsp?id="+id+"'><div class='row' style='border: 1px solid;margin-left: 30px;margin-right: 30px;'><div><img class='col l1' height='100px' id='img"+n+"'></div><div class='col l4'><p style='font-size: 20px;color:#000000;' id='name"+n+"'></p></div></div></a>");
                        out.println("<script>var img"+n+" = document.getElementById('img"+n+"');img"+n+".src ='"+img+"';document.getElementById('name"+n+"').innerHTML = '"+name+"';</script>");
                        
                        n = n + 1;
                        
                    }
                    con.close();
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
               
            %>
            
            
        </section>
        
        
        
        
        


      <!--JavaScript at end of body for optimized loading-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
       </script>
      <script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
      
      <script>
        // image section  
        
       M.AutoInit();
       
        // Sidenav
          const sideNav = document.querySelector('.sidenav');
          M.Sidenav.init(sideNav,{});
        
       document.getElementById("search").innerHTML = "<%=search%>";
       document.getElementById("uid").innerHTML = "<%=fn%>";
        
        
  
        
      </script>
     

    </body>
    
</html>






