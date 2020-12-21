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
        <link rel="stylesheet" href="css/mycss1.css" type="text/css"/><!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>MOBILE FINDER</title>
    </head>
    <body>
         <%
            String[] li1 = new String[10];
            String[] li2 = new String[10];
            String[] li3 = new String[10];
            String[] li4 = new String[10];
            String[] li5 = new String[10];
            String[] li6 = new String[10];
            String[] span1 = new String[10];
            String[] span2 = new String[10];
            String[] img1 = new String[10];
            String[] hrefstr1 = new String[10];
            String[] li11 = new String[10];
            String[] li22 = new String[10];
            String[] li33 = new String[10];
            String[] li44 = new String[10];
            String[] li55 = new String[10];
            String[] li66 = new String[10];
            String[] span11 = new String[10];
            String[] span22 = new String[10];
            String[] img2 = new String[10];
            String[] hrefstr2 = new String[10];
            int[] id1 = new int[10];
            int[] id2 = new int[10];
            int n1 = 0;
            int n2 = 0; 
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mydatabase","root","12345");
                String sql1 = "select * from mb_card order by launch desc";
                Statement st1 = con.createStatement();
                ResultSet rs1 = st1.executeQuery(sql1);
                while(rs1.next())
                {
                    if(n1<5)
                    {
                        id1[n1] = rs1.getInt(1);
                        hrefstr1[n1] = "mbspecs.jsp?id="+id1[n1];
                        span1[n1] = rs1.getString(2);
                        span2[n1] = rs1.getString(2);
                        li1[n1] = rs1.getString(3);
                        li2[n1] = rs1.getString(4);
                        li3[n1] = rs1.getString(5);
                        li4[n1] = rs1.getString(6);
                        li5[n1] = rs1.getString(7);
                        li6[n1] = rs1.getString(8);
                        img1[n1] = rs1.getString(11);       
                        System.out.println("id is : "+id1[n1]);
                        System.out.println(span1[n1]);
                        System.out.println(span2[n1]);
                        System.out.println(li1[n1]);
                        System.out.println(li2[n1]);
                        System.out.println(li3[n1]);
                        System.out.println(li4[n1]);
                        System.out.println(li5[n1]);
                        System.out.println(li6[n1]);
                        System.out.println(img1[n1]);
                        n1 = n1 + 1;
                    }
                }
                String sql2 = "select * from mb_card order by recommended desc";
                Statement st2 = con.createStatement();
                ResultSet rs2 = st2.executeQuery(sql2);
                while(rs2.next())
                {
                    if(n2<5)
                    {
                        id2[n2] = rs2.getInt(1);
                        hrefstr2[n2] = "mbspecs.jsp?id="+id2[n2];
                        span11[n2] = rs2.getString(2);
                        span22[n2] = rs2.getString(2);
                        li11[n2] = rs2.getString(3);
                        li22[n2] = rs2.getString(4);
                        li33[n2] = rs2.getString(5);
                        li44[n2] = rs2.getString(6);
                        li55[n2] = rs2.getString(7);
                        li66[n2] = rs2.getString(8);
                        img2[n2] = rs2.getString(11);
                        System.out.println("id is : "+id2[n2]);
                        System.out.println(span1[n2]);
                        System.out.println(span2[n2]);
                        System.out.println(li1[n2]);
                        System.out.println(li2[n2]);
                        System.out.println(li3[n2]);
                        System.out.println(li4[n2]);
                        System.out.println(li5[n2]);
                        System.out.println(li6[n2]);
                        System.out.println(img1[n2]);
                        n2 = n2 + 1;
                    }
                }
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>
        <!-- Nav Bar -->
        <div class="navbar-fixed">
          <nav style="background-color: #2f496e">
              <div class="nav-wrapper">
                  <a href="#" class="heading" style="margin-left: 150px;">MOBILE FINDER</a>
                  <a href="#" data-target="mobile-nav" class="sidenav-trigger">
                    <i class="material-icons">menu</i>
                  </a>
                  <ul class="right hide-on-med-and-down" style="margin-right: 100px;">
                  <li class="on-page">
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
            session.setAttribute("login", "no");
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
            
          </nav>
        </div>
        <!-- Section : Slider -->
        <section class="slider">
          <ul class="slides">
            <li>
              <img src="img/snapdragon.jpg"> <!-- random image -->
              <div class="caption left-align"> 
                <h2 class="bold blue-grey-text">Journey Of Thousand Miles Begins With Single Step</h2>
                <h4 class="bold black-text">Capture The Moments...</h4>
              </div>
            </li>
            <li>
              <img src="img/slider2.jpg"> <!-- random image -->
              <div class="caption right-align">
                    <h3 class="bold black-text">You Know What <br/>Camera is?</h3>
                    <h5 class="bold black-text">A Mirror With A Memory...</h5>
              </div>
            </li>
            <li>
                <img src="img/slider31.jpg"> <!-- random image -->
              <div class="caption right-align">
                <h3 class="bold white-text">Perfect Camera For <br/>Your Precious Smile...</h3>
              </div>
            </li>
            <li>
              <img src="img/slider4.jpg"> <!-- random image -->
              <div class="caption left-align">
                <h3 class="bold black-text">This is our big Tagline!</h3>
                <h5 class="bold black-text">Here's our small slogan.</h5>
              </div>
            </li>
            <li>
              <img src="img/vivo/img2.jpg"> <!-- random image -->
              <div class="caption right-align">
                <h3 class="bold black-text">Right Aligned Caption</h3>
                <h5 class="bold black-text">Here's our small slogan.</h5>
              </div>
            </li>
          </ul>        
        </section>
        <!-- Card Section -->
        <section class="section-padding">
          <h3>CATEGORIES</h3>
        </section>
        <section class="section mybackground">
            <div class="container">
                <br/>
                <section class="mycard-background">
                    <h3>LATEST ADDITIONS</h3>
                    <div class="row">
                    <div class="col s12 m6 l3">
                     <div class="card">
                       <div class="card-image waves-effect waves-block waves-light">
                           <img class="activator" src="img/iPhone1.jpeg" height="300" id="img1">
                       </div>
                         <div class="card-content card-mybackground">
                         <span class="card-title activator white-text" >
                             <i class="material-icons right">more_vert</i>
                             <div class="card-title activator" id="span11"></div></span>
                       </div>
                       <div class="card-reveal"  style="background-color: #011a27;">
                           <span class="card-title white-text">
                               <i class="material-icons right">close</i>
                               <div class="card-title" id="span12"></div></span>
                         <span>
                         <hr class="hr-prop" width="150px" align="left-align">
                         </span>
                         <li class="litext" id="li11">5.5 Inches</li>
                         <li class="litext" id="li12">Octa Core</li>
                         <li class="litext" id="li13">2500 mAh</li>
                         <li class="litext" id="li14">RAM 3 GB</li>
                         <li class="litext" id="li15">ROM 32 GB</li>
                         <hr width="150px" align="left-align">
                         <h6><a id="card1" style="color: #ffffff">SEE FULL SPECS</a></h6>
                       </div>
                     </div>
                   </div>
                     <div class="col s12 m6 l3">
                     <div class="card">
                       <div class="card-image waves-effect waves-block waves-light">
                           <img class="activator" src="img/mi.jpg" height="300" id="img2">
                       </div>
                       <div class="card-content card-mybackground">
                         <span class="card-title activator white-text">
                             <i class="material-icons right">more_vert</i>
                             <div class="card-title activator" id="span21"></div></span>
                       </div>
                       <div class="card-reveal" style="background-color: #011a27;">
                         <span class="card-title white-text">
                             <i class="material-icons right">close</i>
                             <div class="card-title" id="span22"></div></span>
                         <!-- <span>
                             <i class="material-icons">keyboard_arrow_right</i>5.5 Inches
                         </span> -->
                         <span>
                         <hr class="hr-prop" width="150px" align="left-align">
                         </span>
                         <li class="litext" id="li21">5.5 Inches</li>
                         <li class="litext" id="li22">Octa Core</li>
                         <li class="litext" id="li23">2500 mAh</li>
                         <li class="litext" id="li24">RAM 3 GB</li>
                         <li class="litext" id="li25">ROM 32 GB</li>
                         <hr width="150px" align="left-align">
                         <h6><a id="card2" style="color: #ffffff">SEE FULL SPECS</a></h6>
                       </div>
                     </div>
                   </div>
                     <div class="col s12 m6 l3">
                     <div class="card">
                       <div class="card-image waves-effect waves-block waves-light">
                           <img class="activator" src="img/oppo1.jpg" height="300" id="img3">
                       </div>
                       <div class="card-content card-mybackground">
                         <span class="card-title activator white-text">
                             <i class="material-icons right">more_vert</i>
                            <div class="card-title activator" id="span31"></div></span>
                       </div>
                       <div class="card-reveal" style="background-color: #011a27;">
                         <span class="card-title white-text">
                             <i class="material-icons right">close</i>
                            <div class="card-title" id="span32"></div></span>
                         <!-- <span>
                             <i class="material-icons">keyboard_arrow_right</i>5.5 Inches
                         </span> -->
                         <span>
                         <hr class="hr-prop" width="150px" align="left-align">
                         </span>
                         <li class="litext" id="li31">5.5 Inches</li>
                         <li class="litext" id="li32">Octa Core</li>
                         <li class="litext" id="li33">2500 mAh</li>
                         <li class="litext" id="li34">RAM 3 GB</li>
                         <li class="litext" id="li35">ROM 32 GB</li>
                         <hr width="150px" align="left-align">
                         <h6><a id="card3" style="color: #ffffff">SEE FULL SPECS</a></h6>
                       </div>
                     </div>
                   </div>
                   <div class="col s12 m6 l3">
                     <div class="card">
                       <div class="card-image waves-effect waves-block waves-light">
                           <img class="activator" height="300" id="img4">
                       </div> 
                       <div class="card-content card-mybackground">
                           <span class="card-title activator white-text">
                             <i class="material-icons right">more_vert</i>
                            <div class="card-title activator" id="span41"></div></span>
                       </div>
                       <div class="card-reveal" style="background-color: #011a27;">
                           <span class="card-title white-text">
                             <i class="material-icons right">close</i>
                            <div class="card-title" id="span42"></div></span>
                         <!-- <span>
                             <i class="material-icons">keyboard_arrow_right</i>5.5 Inches
                         </span> -->
                         <span>
                         <hr class="hr-prop" width="150px" align="left-align">
                         </span>
                         <li class="litext" id="li41">n</li>
                         <li class="litext" id="li42">n</li>
                         <li class="litext" id="li43">n</li>
                         <li class="litext" id="li44">n</li>
                         <li class="litext" id="li45">n</li>
                         <hr width="150px" align="left-align">
                         <h6><a id="card4" style="color: #ffffff">SEE FULL SPECS</a></h6>
                       </div>
                     </div>
                    </div>
                </div>
            </section>
                <br/><br/>
                <section class="mycard-background">
                    <h3>RECOMMENDED</h3>
                    <div class="row">
                    <div class="col s12 m6 l3">
                     <div class="card">
                       <div class="card-image waves-effect waves-block waves-light">
                           <img class="activator" src="img/iPhone1.jpeg" height="300" id="img5">
                       </div>
                       <div class="card-content card-mybackground">
                           <span class="card-title activator white-text">
                             <i class="material-icons right">more_vert</i>
                            <div class="card-title activator" id="span51"></div></span>
                       </div>
                       <div class="card-reveal" style="background-color: #011a27;">
                           <span class="card-title white-text">
                             <i class="material-icons right">close</i>
                            <div class="card-title" id="span52"></div></span>
                         <!-- <span>
                             <i class="material-icons">keyboard_arrow_right</i>5.5 Inches
                         </span> -->
                         <span>
                         <hr class="hr-prop" width="150px" align="left-align">
                         </span>
                         <li class="litext" id="li51">5.5 Inches</li>
                         <li class="litext" id="li52">Octa Core</li>
                         <li class="litext" id="li53">2500 mAh</li>
                         <li class="litext" id="li54">RAM 3 GB</li>
                         <li class="litext" id="li55">ROM 32 GB</li>
                         <hr width="150px" align="left-align">
                         <h6><a id="card5" style="color: #ffffff">SEE FULL SPECS</a></h6>
                       </div>
                     </div>
                   </div>
                     <div class="col s12 m6 l3">
                     <div class="card">
                       <div class="card-image waves-effect waves-block waves-light">
                         <img class="activator" src="img/mi.jpg" height="300" id="img6">
                       </div>
                       <div class="card-content card-mybackground">
                           <span class="card-title activator white-text">
                             <i class="material-icons right">more_vert</i>
                            <div class="card-title activator" id="span61"></div></span>
                       </div>
                       <div class="card-reveal" style="background-color: #011a27;">
                           <span class="card-title white-text">
                             <i class="material-icons right">close</i>
                            <div class="card-title" id="span62"></div></span>
                         <!-- <span>
                             <i class="material-icons">keyboard_arrow_right</i>5.5 Inches
                         </span> -->
                         <span>
                         <hr class="hr-prop" width="150px" align="left-align">
                         </span>
                         <li class="litext" id="li61">5.5 Inches</li>
                         <li class="litext" id="li62">Octa Core</li>
                         <li class="litext" id="li63">2500 mAh</li>
                         <li class="litext" id="li64">RAM 3 GB</li>
                         <li class="litext" id="li65">ROM 32 GB</li>
                         <hr width="150px" align="left-align">
                         <h6><a id="card6" style="color: #ffffff">SEE FULL SPECS</a></h6>
                       </div>
                     </div>
                   </div>
                     <div class="col s12 m6 l3">
                     <div class="card">
                       <div class="card-image waves-effect waves-block waves-light">
                           <img class="activator" src="img/oppo1.jpg" height="300" id="img7">
                       </div>
                       <div class="card-content card-mybackground">
                           <span class="card-title activator white-text">
                             <i class="material-icons right">more_vert</i>
                            <div class="card-title activator" id="span71"></div></span>
                       </div>
                       <div class="card-reveal" style="background-color: #011a27;">
                         <span class="card-title white-text">
                             <i class="material-icons right">close</i>
                            <div class="card-title" id="span72"></div></span>
                         <!-- <span>
                             <i class="material-icons">keyboard_arrow_right</i>5.5 Inches
                         </span> -->
                         <span>
                         <hr class="hr-prop" width="150px" align="left-align">
                         </span>
                         <li class="litext" id="li71">5.5 Inches</li>
                         <li class="litext" id="li72">Octa Core</li>
                         <li class="litext" id="li73">2500 mAh</li>
                         <li class="litext" id="li74">RAM 3 GB</li>
                         <li class="litext" id="li75">ROM 32 GB</li>
                         <hr width="150px" align="left-align">
                         <h6><a id="card7" style="color: #ffffff">SEE FULL SPECS</a></h6>
                       </div>
                     </div>
                   </div>
                   <div class="col s12 m6 l3">
                     <div class="card">
                       <div class="card-image waves-effect waves-block waves-light">
                           <img class="activator" height="300" id="img8">
                       </div>
                       <div class="card-content card-mybackground">
                           <span class="card-title activator white-text">
                             <i class="material-icons right">more_vert</i>
                             <div class="card-title activator" id="span81"></div></span>
                       </div>
                         <div class="card-reveal" style="background-color: #011a27;">
                         <span class="card-title grey-text white-text">
                             <i class="material-icons right">close</i>
                            <div class="card-title" id="span82"></div></span>
                         <span>
                         <hr class="hr-prop" width="150px" align="left-align">
                         </span>
                         <li class="litext" id="li81">n</li>
                         <li class="litext" id="li82">n</li>
                         <li class="litext" id="li83">n</li>
                         <li class="litext" id="li84">n</li>
                         <li class="litext" id="li85">n</li>
                         <hr width="150px" align="left-align">
                         <h6><a id="card8" style="color: #ffffff">SEE FULL SPECS</a></h6>
                       </div>
                     </div>
                    </div>
                </div>
            </section>
        </div>
    </section><!--JavaScript at end of body for optimized loading-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
      </script>
      <script>
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
        }); //card section 1
        document.getElementById("li11").innerHTML = "<%=li1[0]%>";
        document.getElementById("li12").innerHTML = "<%=li2[0]%>";
        document.getElementById("li13").innerHTML = "<%=li3[0]%>";
        document.getElementById("li14").innerHTML = "<%=li4[0]%>";
        document.getElementById("li15").innerHTML = "<%=li5[0]%>";
        document.getElementById("span11").innerHTML = "<%=span1[0]%>";
        document.getElementById("span12").innerHTML = "<%=span2[0]%>";
        var img_id1 = document.getElementById("img1");
        img_id1.src = "<%=img1[0]%>"; 
        document.getElementById("li21").innerHTML = "<%=li1[1]%>";
        document.getElementById("li22").innerHTML = "<%=li2[1]%>";
        document.getElementById("li23").innerHTML = "<%=li3[1]%>";
        document.getElementById("li24").innerHTML = "<%=li4[1]%>";
        document.getElementById("li25").innerHTML = "<%=li5[1]%>";
        document.getElementById("span21").innerHTML = "<%=span1[1]%>";
        document.getElementById("span22").innerHTML = "<%=span2[1]%>";
        var img_id2 = document.getElementById("img2");
        img_id2.src = "<%=img1[1]%>"; 
        document.getElementById("li31").innerHTML = "<%=li1[2]%>";
        document.getElementById("li32").innerHTML = "<%=li2[2]%>";
        document.getElementById("li33").innerHTML = "<%=li3[2]%>";
        document.getElementById("li34").innerHTML = "<%=li4[2]%>";
        document.getElementById("li35").innerHTML = "<%=li5[2]%>";
        document.getElementById("span31").innerHTML = "<%=span1[2]%>";
        document.getElementById("span32").innerHTML = "<%=span2[2]%>";
        var img_id3 = document.getElementById("img3");
        document.getElementById("li41").innerHTML = "<%=li1[3]%>";
        document.getElementById("li42").innerHTML = "<%=li2[3]%>";
        document.getElementById("li43").innerHTML = "<%=li3[3]%>";
        document.getElementById("li44").innerHTML = "<%=li4[3]%>";
        document.getElementById("li45").innerHTML = "<%=li5[3]%>";
        document.getElementById("span41").innerHTML = "<%=span1[3]%>";
        document.getElementById("span42").innerHTML = "<%=span2[3]%>";
        var img_id4 = document.getElementById("img4");
        img_id4.src = "<%=img1[3]%>";  
        //card section 2
        document.getElementById("li51").innerHTML = "<%=li11[0]%>";
        document.getElementById("li52").innerHTML = "<%=li22[0]%>";
        document.getElementById("li53").innerHTML = "<%=li33[0]%>";
        document.getElementById("li54").innerHTML = "<%=li44[0]%>";
        document.getElementById("li55").innerHTML = "<%=li55[0]%>";
        document.getElementById("span51").innerHTML = "<%=span11[0]%>";
        document.getElementById("span52").innerHTML = "<%=span22[0]%>";
        var img_id1 = document.getElementById("img5");
        img_id1.src = "<%=img2[0]%>";  
        document.getElementById("li61").innerHTML = "<%=li11[1]%>";
        document.getElementById("li62").innerHTML = "<%=li22[1]%>";
        document.getElementById("li63").innerHTML = "<%=li33[1]%>";
        document.getElementById("li64").innerHTML = "<%=li44[1]%>";
        document.getElementById("li65").innerHTML = "<%=li55[1]%>";
        document.getElementById("span61").innerHTML = "<%=span11[1]%>";
        document.getElementById("span62").innerHTML = "<%=span22[1]%>";
        var img_id2 = document.getElementById("img6");
        img_id2.src = "<%=img2[1]%>";  
        document.getElementById("li71").innerHTML = "<%=li11[2]%>";
        document.getElementById("li72").innerHTML = "<%=li22[2]%>";
        document.getElementById("li73").innerHTML = "<%=li33[2]%>";
        document.getElementById("li74").innerHTML = "<%=li44[2]%>";
        document.getElementById("li75").innerHTML = "<%=li55[2]%>";
        document.getElementById("span71").innerHTML = "<%=span11[2]%>";
        document.getElementById("span72").innerHTML = "<%=span22[2]%>";
        var img_id3 = document.getElementById("img7");
        img_id3.src = "<%=img2[2]%>"; 
        document.getElementById("li81").innerHTML = "<%=li11[3]%>";
        document.getElementById("li82").innerHTML = "<%=li22[3]%>";
        document.getElementById("li83").innerHTML = "<%=li33[3]%>";
        document.getElementById("li84").innerHTML = "<%=li44[3]%>";
        document.getElementById("li85").innerHTML = "<%=li55[3]%>";
        document.getElementById("span81").innerHTML = "<%=span11[3]%>";
        document.getElementById("span82").innerHTML = "<%=span22[3]%>";
        var img_id4 = document.getElementById("img8");
        img_id4.src = "<%=img2[3]%>"; 
        M.AutoInit();
        var card1 = document.getElementById('card1');
        card1.href="<%=hrefstr1[0]%>";
        var card2 = document.getElementById('card2');
        card2.href="<%=hrefstr1[1]%>";
        var card3 = document.getElementById('card3');
        card3.href="<%=hrefstr1[2]%>";
        var card4 = document.getElementById('card4');
        card4.href="<%=hrefstr1[3]%>";
        var card5 = document.getElementById('card5');
        card5.href="<%=hrefstr2[0]%>";
        var card6 = document.getElementById('card6');
        card6.href="<%=hrefstr2[1]%>";
        var card7 = document.getElementById('card7');
        card7.href="<%=hrefstr2[2]%>";
        var card8 = document.getElementById('card8');
        card8.href="<%=hrefstr2[3]%>";
      </script>
    </body>
</html>
<!-- create table mb_specs(id int(20),name char(20),screen int(10),ram int(10),rom int(10),battery int(10),frontcam int(5),rearcam int(5)); -->

<!-- create table mb_specs(id int(20),brand varchar(20),name varchar(100),dis_type varchar(100),dis_size varchar(100),dis_resolution varchar(100),dis_multitouch varchar(30),dis_protection varchar(100),ram varchar(50),rom varchar(50),cardslot varchar(100),rear_cam varchar(100),rear_features varchar(100),rear_video varchar(100),front_cam varchar(50),front_features varchar(50),front_video varchar(50),os varchar(50),chipset varchar(50),cpu varchar(100),gpu varchar(50),sound_alerttype varchar(50),sound_speaker varchar(50),jack varchar(20),battery varchar(50),launch varchar(30),colors varchar(100)); -->

<!-- insert into mb_specs values(10001,"OnePlus","OnePlus 6","Optic AMOLED capacitive touchscreen, 16M colors","6.28 inches, 98.4 cm2 (~83.8% screen-to-body ratio)","1080 x 2280 pixels, 19:9 ratio (~402 ppi density)","Yes","Corning Gorilla Glass 5","8 GB RAM ","128/256 GB","No","16 MP, f/1.7, 25mm, 1/2.6, 1.22µm, OIS, PDAF","Dual-LED flash, HDR, panorama","2160p@30/60fps, 1080p@30/60/240fps, 720p@480fps, Auto HDR","16 MP, f/2.0, 25mm, 1/3, 1.0µm","Auto-HDR","1080p (gyro-EIS)","Android 8.1 (Oreo)","Qualcomm SDM845 Snapdragon 845","Octa-core (4x2.8 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)","Adreno 630","Vibration, MP3, WAV ringtones","Yes","Yes","Non-removable Li-Po 3300 mAh battery","2018, May","Midnight Black, Mirror Black, Silk White, Amber Red"); -->

<!-- create table mb_card(id int(20),name varchar(100),dis_size varchar(50),ram varchar(20),rom varchar(20),front_cam varchar(50),os varchar(30),battery varchar(30),launch date,filename varchar(50),path varchar(100)); -->


