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
     <link rel="stylesheet" href="css/nouislider.css" type="text/css"/>
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <title>MOBILE FINDER</title>
      <style>
      .ex3 {
        background-color: lightblue;
        width: 100%;
        max-height: 150px;
        overflow: auto;
      }
    </style>

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
                  <li class="on-page">
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

        
        <section class="section">
            <div class="row">
                
                <div class="col l3" style="background-color: #bbdefb;border: 2px solid;" height="100px">
                    
                    <h3>Filter</h3>
                    
                    <hr/>
                    <h4>Brands</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input type="checkbox" id="brand1" value="Apple"/>
                                <span>Apple</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="brand2" value="Nokia"/>
                                <span>Nokia</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="brand3" value="OnePlus"/>
                                <span>OnePlus</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="brand4" value="Oppo"/>
                                <span>Oppo</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="brand5" value="Sony"/>
                                <span>Sony</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="brand6" value="Motorola"/>
                                <span>Motorola</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="brand7" value="Vivo"/>
                                <span>Vivo</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="brand8" value="Xiaomi"/>
                                <span>Xiaomi</span>
                            </label>
                        </p>
                    </div>
                    
                    
                    <hr/>
                    <h4>Screen Size</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input type="checkbox" id="size1" value="size < 4.0"/>
                                <span>less than 4.0 inches</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="size2" value="(size >= 4.0 and size <= 4.7)"/>
                                <span>4.0 - 4.7 inches</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="size3" value="(size >= 4.8 and size <= 5.5)"/>
                                <span>4.8 - 5.5 inches</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="size4" value="(size >= 5.6 and size <= 6.2)"/>
                                <span>5.6 - 6.2 inches</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="size5" value="(size >= 6.3 and size <= 7.0)"/>
                                <span>6.3 - 7.0 inches</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="size6" value="size > 7.0"/>
                                <span>above 7 inches</span>
                            </label>
                        </p>    
                    </div>
                    
                    
                    <hr/>
                    <h4>Battery</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input type="checkbox" id="battery1" value="battery < 1500"/>
                                <span>below 1500 mAh</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="battery2" value="battery > 1500 and battery < 2500"/>
                                <span>1500-2500 mAh</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="battery3" value="battery > 2500 and battery < 3500"/>
                                <span>2500-3500 mAh</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="battery4" value="battery > 3500"/>
                                <span>above 3500 mAh</span>
                            </label>
                        </p>
                    </div>
                    
                    
                    <hr/>
                    <h4>Fingerprint</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input name="group1" value="fingerprint = 1" id="fingerprint1" type="radio" checked />
                                <span>Yes</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input name="group1" value="fingerprint = 0" id="fingerprint2" type="radio" />
                                <span>No</span>
                            </label>
                        </p>    
                    </div>
                    
                    
                    <hr/>
                    <h4>Os</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input type="checkbox" id="os1" value="os = 'android'" />
                                <span>Android</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="os2" value="os = 'ios'" />
                                <span>iOS</span>
                            </label>
                        </p>
                    </div>
                    
                    
                    <hr/>
                    <h4>Front Camera</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input type="checkbox" id="front1" value="front < 5"/>
                                <span>less than 5 MP</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="front2" value="front >= 5 and front <= 10"/>
                                <span>5-10 MP</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="front3" value="front >= 11 and front <= 15"/>
                                <span>11-15 MP</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="front4" value="front > 15"/>
                                <span>above 15 MP</span>
                            </label>
                        </p>
                    </div>
                    
                    
                    <hr/>
                    <h4>Rear Camera</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input type="checkbox" id="rear1" value="rear < 5"/>
                                <span>less than 5 MP</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="rear2" value="rear >= 5 and rear <= 10"/>
                                <span>5-10 MP</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="rear3" value="rear >= 11 and rear <= 15"/>
                                <span>11-15 MP</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="rear4" value="rear > 15"/>
                                <span>above 15 MP</span>
                            </label>
                        </p>    
                    </div>
                    
                    
                    <hr/>
                    <h4>RAM</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input type="checkbox" id="ram1" value="ram < 3"/>
                                <span>less than 3 GB</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="ram2" value="ram = 3"/>
                                <span>3 GB</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="ram3" value="ram = 4"/>
                                <span>4 GB</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="ram4" value="ram = 5"/>
                                <span>5 GB</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="ram5" value="ram = 6"/>
                                <span>6 GB</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="ram6" value="ram > 6"/>
                                <span>above than 6 GB</span>
                            </label>
                        </p>    
                    </div>
                    
                    
                    <hr/>
                    <h4>CPU</h4>
                    <div class="ex3">
                        <p>
                            <label>
                                <input type="checkbox" id="cpu1" value="cpu = 'single'" />
                                <span>Single Core</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="cpu2" value="cpu = 'dual'" />
                                <span>Dual Core</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="cpu3" value="cpu = 'tri'" />
                                <span>Tri Core</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="cpu4" value="cpu = 'quad'" />
                                <span>Quad Core</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="cpu5" value="cpu = 'hexa'" />
                                <span>Hexa Core</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="cpu6" value="cpu = 'octa'" />
                                <span>Octa Core</span>
                            </label>
                        </p>
                        <p>
                            <label>
                                <input type="checkbox" id="cpu7" value="cpu = 'deca'" />
                                <span>Deca Core</span>
                            </label>
                        </p>
                    </div>
                    <br/>
                    <a href="" class="button"  id="sendfilter" onclick="filter1()">Search</a>
                    
                    <br/><br/>
                    
                </div>
                
                
                  
                <br>
                
                <div class="col l8">
                        
                        <%
                String search = request.getParameter("str");
                String img ="",name="";
                String sql2="",sql="";
                int id;
                int id2;
                int n=1;
                Statement st;
                ResultSet rs;
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");
                    
                    
                    sql2 = "select id from mb_filter where "+search;
                    Statement st2 = con.createStatement();
                    ResultSet rs2 = st2.executeQuery(sql2);
                    while(rs2.next())
                    {
                        id2 = Integer.parseInt(rs2.getString(1));
                        
                        sql = "select * from mb_detail where id="+id2;
                        st = con.createStatement();
                        rs = st.executeQuery(sql);
                        
                        System.out.println("id2 is : "+id2);
                        
                        while(rs.next()){
                        id = Integer.parseInt(rs.getString(1));
                        img = rs.getString(37);
                        name = rs.getString(3);
                        
                        System.out.println("id is : "+id);
                        System.out.println("img is : "+img);
                        System.out.println("name is : "+name);
                        
                        
                        
                        out.println("<a href='mbspecs.jsp?id="+id+"'><div class='row' style='border: 1px solid;margin-left: 30px;margin-right: 30px;'><div><img class='col l2' height='100px' id='img"+n+"'></div><div class='col l4'><p style='font-size: 20px;color:#000000;' id='name"+n+"'></p></div></div></a>");
                        out.println("<script>var img"+n+" = document.getElementById('img"+n+"');img"+n+".src ='"+img+"';document.getElementById('name"+n+"').innerHTML = '"+name+"';</script>");
                        
                        n = n + 1;
                        }
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



      <!--JavaScript at end of body for optimized loading-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
       </script>
      <script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
      
      <script>
          
        var n = 1;
        var truecount = 0;
        function filter1(){
            
            
//            var span1 = document.getElementById("brand_Nokia").checked;
//            var span2 = document.getElementById("brand_Nokia").value;
//            document.getElementById("hello").innerHTML = span1;
            var i;
            var val;
            var str = "";
            var href = "filter2.jsp?str=(";
            
            // brand section
            
            for(i=1;i<=8;i++)
            {
                if(document.getElementById("brand"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if(truecount > 0){
            for(i=1;i<=8;i++)
            {
                if(document.getElementById("brand"+i).checked === true)
                {
                    val = document.getElementById("brand"+i).value;
                    if(n===1)
                    {
                        href = href + "brand='" + val +"'";
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or brand='" + val + "'";
                    }
                }
            }
            }
            
            //size section
            
            truecount = 0;
            for (i=1;i<=6;i++)
            {
                if(document.getElementById("size"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if( n !== 1 && truecount > 0)
            {
            href = href + ") and (";
            n = 1;
            }
            for(i=1;i<=6;i++)
            {
                if(document.getElementById("size"+i).checked === true)
                {
                    val = document.getElementById("size"+i).value;
                    if(n===1)
                    {
                        href = href +val;
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or " + val;
                    }
                
                }
            }
            
            //battery section
            
            truecount = 0;
            for (i=1;i<=4;i++)
            {
                if(document.getElementById("battery"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if( n !== 1 && truecount > 0)
            {
            href = href + ") and (";
            n = 1;
            }
            for(i=1;i<=4;i++)
            {
                if(document.getElementById("battery"+i).checked === true)
                {
                    val = document.getElementById("battery"+i).value;
                    if(n===1)
                    {
                        href = href +val;
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or " + val;
                    }
                }
            }
            
            //front section
            
            truecount = 0;
            for (i=1;i<=4;i++)
            {
                if(document.getElementById("front"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if( n !== 1 && truecount > 0)
            {
            href = href + ") and (";
            n = 1;
            }
            for(i=1;i<=4;i++)
            {
                if(document.getElementById("front"+i).checked === true)
                {
                    val = document.getElementById("front"+i).value;
                    if(n===1)
                    {
                        href = href +val;
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or " + val;
                    }
                }
            }
            
            
            //rear section
            
            truecount = 0;
            for (i=1;i<=4;i++)
            {
                if(document.getElementById("rear"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if( n !== 1 && truecount > 0)
            {
            href = href + ") and (";
            n = 1;
            }
            for(i=1;i<=4;i++)
            {
                if(document.getElementById("rear"+i).checked === true)
                {
                    val = document.getElementById("rear"+i).value;
                    if(n===1)
                    {
                        href = href +val;
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or " + val;
                    }
                }
            }
            
            //ram section
            
            truecount = 0;
            for (i=1;i<=6;i++)
            {
                if(document.getElementById("ram"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if( n !== 1 && truecount > 0)
            {
            href = href + ") and (";
            n = 1;
            }
            for(i=1;i<=6;i++)
            {
                if(document.getElementById("ram"+i).checked === true)
                {
                    val = document.getElementById("ram"+i).value;
                    if(n===1)
                    {
                        href = href +val;
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or " + val;
                    }
                }
            }
            
            //fingerprint section
            
            truecount = 0;
            for (i=1;i<=2;i++)
            {
                if(document.getElementById("fingerprint"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if( n !== 1 && truecount > 0)
            {
            href = href + ") and (";
            n = 1;
            }
            for(i=1;i<=2;i++)
            {
                if(document.getElementById("fingerprint"+i).checked === true)
                {
                    val = document.getElementById("fingerprint"+i).value;
                    if(n===1)
                    {
                        href = href +val;
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or " + val;
                    }
                }
            }
            
            //cpu section
            
            truecount = 0;
            for (i=1;i<=7;i++)
            {
                if(document.getElementById("cpu"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if( n !== 1 && truecount > 0)
            {
            href = href + ") and (";
            n = 1;
            }
            for(i=1;i<=7;i++)
            {
                if(document.getElementById("cpu"+i).checked === true)
                {
                    val = document.getElementById("cpu"+i).value;
                    if(n===1)
                    {
                        href = href +val;
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or " + val;
                    }
                }
            }
            
            //OS section
            
            truecount = 0;
            for (i=1;i<=2;i++)
            {
                if(document.getElementById("os"+i).checked === true)
                {
                    truecount = truecount + 1;
                }
            }
            if( n !== 1 && truecount > 0)
            {
            href = href + ") and (";
            n = 1;
            }
            for(i=1;i<=2;i++)
            {
                if(document.getElementById("os"+i).checked === true)
                {
                    val = document.getElementById("os"+i).value;
                    if(n===1)
                    {
                        href = href +val;
                        n = n + 1;
                    }
                    else if(n!==1)
                    {
                        href = href + " or " + val;
                    }
                }
            }
            
            href = href + ")";
            
            
            var sendfilter = document.getElementById("sendfilter");
            sendfilter.href = href;
//            document.write(href);
        }  
          
        // image section  
       
       M.AutoInit();
       
        // Sidenav
          const sideNav = document.querySelector('.sidenav');
          M.Sidenav.init(sideNav,{});
        
        document.getElementById("uid").innerHTML = "<%=fn%>";
        
        
        
      </script>
     

    </body>
    
</html>








