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
                  <li>
                    <a href="search.jsp" style="font-size: 15px">Search</a>
                  </li>
                  <li>
                    <a href="filter.jsp" style="font-size: 15px">Filter</a>
                  </li>
                  <li class="on-page">
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
            <form action="comparison_send1.jsp" enctype="multipart/form-data">
                <div class="row">
                    <div class="col l6">
                        Enter Mobile Brand Or Name : 
                        <input type="text" name="compare1" placeholder="search here"><br/><br/>
                    </div>
                    <div class="col l6">
                        Enter Mobile Brand Or Name : 
                        <input type="text" name="compare2" placeholder="search here"><br/><br/>
                    </div>
                </div>
                <div class="row">
                    <div class="col l3"></div>
                <input type="submit" value="Search" class="col l6">
                </div>
            </form>
        </div>
        </section>
        
         </section>
            
         

        <section class="section-padding">
            <h3>Choose Mobile</h3>
        </section>
        <br>
        
        <section class="section">
            <div class='row'>
                <div class="col l5">
                    <div class='row mycard-background' style='margin-left: 50px; margin-right: 20px;'>
                        <div class="col l12">
                            <p style="font-size: 40px;text-align: center">Compare 1</p>
                        </div>
                    
                 <%
                String compare1 = request.getParameter("compare1");
                String img ="",name="";
                int id;
                int n1=1;
                int passid1;
                int passid2;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");

                    String sql = "select * from mb_detail where brand ='"+compare1+"' or name ='"+compare1+"'";
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    while(rs.next())
                    {
                        id = Integer.parseInt(rs.getString(1));
                        img = rs.getString(37);
                        name = rs.getString(3);
                        
                        System.out.println("id is : "+id);
                        System.out.println("img is : "+img);
                        System.out.println("name is : "+name);
                        
                        
                        
                       // out.println("<a href='mbspecs.jsp?id="+id+"'><div class='row' style='border: 1px solid;'><div><img class='col l1' height='100px' id='img"+n1+"'></div><div class='col l4'><p style='font-size: 20px;color:#000000;' id='name"+n1+"'></p></div><div><img class='col l1' height='100px' id='img"+n2+"'></div><div class='col l4'><p style='font-size: 20px;color:#000000;' id='name"+n2+"'></p></div></div></a>");
                       // out.println("<script>var img"+n1+" = document.getElementById('img"+n1+"');img"+n1+".src ='"+img+"';document.getElementById('name"+n1+"').innerHTML = '"+name+"';var img"+n2+" = document.getElementById('img"+n2+"');img"+n2+".src ='"+img+"';document.getElementById('name"+n2+"').innerHTML = '"+name+"';</script>");
                       
                        out.println("<a onclick='changecompare"+n1+"()' style='cursor:pointer;'><div class='col l12' style='border: 1px solid; margin-bottom: 10px; background-color: #ffffff'><img class='col l3' height='100px' src='img/OnePlus6.jpg' id='img"+n1+"'><div><p style='font-size: 20px;color:#000000;' id='name"+n1+"'>OnePlus6</p></div></div></a>");
                        out.println("<script>var img"+n1+" = document.getElementById('img"+n1+"');img"+n1+".src ='"+img+"';document.getElementById('name"+n1+"').innerHTML = '"+name+"';</script>");
                        out.println("<script>function changecompare"+n1+"() {document.getElementById('mobile1').innerHTML = '"+name+"';passid1="+id+";var comparehref = document.getElementById('comparehref');comparehref.href='comparison_main.jsp?id1='+passid1.valueOf()+'&id2='+passid2.valueOf();}</script>");
                       
                       
                       
                        n1 = n1 + 2;
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
                <div class="col l1"></div>
                <div class="col l5">
                    <div class='row mycard-background' style='margin-left: 30px; margin-right: 50px;'>
                        <div class="col l12">
                            <p style="font-size: 40px;">Compare 2</p>
                        </div>
                        
                        
            <%
                
                String compare2 = request.getParameter("compare2");
                
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");

                    String sql = "select * from mb_detail where brand ='"+compare2+"' or name='"+compare2+"'";
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery(sql);
                    while(rs.next())
                    {
                        id = Integer.parseInt(rs.getString(1));
                        img = rs.getString(37);
                        name = rs.getString(3);
                        
                        System.out.println("id is : "+id);
                        System.out.println("img is : "+img);
                        System.out.println("name is : "+name);
                        
                        
                        
                       // out.println("<a href='mbspecs.jsp?id="+id+"'><div class='row' style='border: 1px solid;'><div><img class='col l1' height='100px' id='img"+n1+"'></div><div class='col l4'><p style='font-size: 20px;color:#000000;' id='name"+n1+"'></p></div><div><img class='col l1' height='100px' id='img"+n2+"'></div><div class='col l4'><p style='font-size: 20px;color:#000000;' id='name"+n2+"'></p></div></div></a>");
                       // out.println("<script>var img"+n1+" = document.getElementById('img"+n1+"');img"+n1+".src ='"+img+"';document.getElementById('name"+n1+"').innerHTML = '"+name+"';var img"+n2+" = document.getElementById('img"+n2+"');img"+n2+".src ='"+img+"';document.getElementById('name"+n2+"').innerHTML = '"+name+"';</script>");
                       
                        out.println("<a onclick='changecompare"+n1+"()' style='cursor:pointer;'><div class='col l12' style='border: 1px solid; margin-bottom: 10px; background-color: #ffffff'><img class='col l3' height='100px' src='img/OnePlus6.jpg' id='img"+n1+"'><div><p style='font-size: 20px;color:#000000;' id='name"+n1+"'>OnePlus6</p></div></div></a>");
                        out.println("<script>var img"+n1+" = document.getElementById('img"+n1+"');img"+n1+".src ='"+img+"';document.getElementById('name"+n1+"').innerHTML = '"+name+"';</script>");
                        out.println("<script>function changecompare"+n1+"() {document.getElementById('mobile2').innerHTML = '"+name+"';passid2="+id+";var comparehref = document.getElementById('comparehref');comparehref.href='comparison_main.jsp?id1='+passid1.valueOf()+'&id2='+passid2.valueOf();}</script>");
                        
                        n1 = n1 + 1;
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
            </div>
            
                          
       
        
        
        
        <section class="section-padding ">
        
            <div class="row">
                <div class="col l5">
                    <h3 id="mobile1">Compare 1</h3>
                </div>
                <div class="col l2">
                    <a href="#" id="comparehref"><i class="material-icons right" style='font-size: 100px;color: white;border: solid'>compare_arrows</i></a>
                </div>
                <div class="col l5">
                    <h3 id="mobile2">Compare 2</h3>
                </div>
            </div>
            
         </section>
         <br><br>
        
        
        
        
        
        
        


      <!--JavaScript at end of body for optimized loading-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
       </script>
      <script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
      
      <script>
    
        document.getElementById("uid").innerHTML = "<%=fn%>";
        
    // image section  
        
       M.AutoInit();
       
        // Sidenav
          const sideNav = document.querySelector('.sidenav');
          M.Sidenav.init(sideNav,{});
        
        //Slider
        const slider = document.querySelector('.slider');
        M.Slider.init(slider,{
            indicators : false,
            height : 600,
            transition : 500,
            interval : 4000
        });
        
        
        var passid1=0;
        var passid2=0;
        
        
       
        
        
        
  
        
      </script>
     

    </body>
    
</html>






