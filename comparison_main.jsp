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
         <%
            String heading1 = "";
            String img11="",img12="",img13="",img14="";
            String dis_size_min1="", dis_resolution_min1="", rearcam_min1="", rearvideo_min1="", ram_min1="", rom_min1="", battery_min11="", battery_min12="";
            String name1="", brand1="", dis_type1="", dis_size1="", dis_resolution1="", dis_multitouch1="", dis_protection1="";
            String ram1="", rom1="", cardslot1="";
            String rearcam1="", rearfeatures1="", rearvideo1="", frontcam1="", frontfeatures1="", frontvideo1="";
            String os1="", chipset1="", cpu1="", gpu1="";
            String soundalerttype1="", loudspeaker1="", jack1="";
            String battery1="", launch1="", color1="";
            
            
            String heading2 = "";
            String img21="",img22="",img23="",img24="";
            String dis_size_min2="", dis_resolution_min2="", rearcam_min2="", rearvideo_min2="", ram_min2="", rom_min2="", battery_min21="", battery_min22="";
            String name2="", brand2="", dis_type2="", dis_size2="", dis_resolution2="", dis_multitouch2="", dis_protection2="";
            String ram2="", rom2="", cardslot2="";
            String rearcam2="", rearfeatures2="", rearvideo2="", frontcam2="", frontfeatures2="", frontvideo2="";
            String os2="", chipset2="", cpu2="", gpu2="";
            String soundalerttype2="", loudspeaker2="", jack2="";
            String battery2="", launch2="", color2="";
            
            
            try
            {
                int id1 = Integer.parseInt(request.getParameter("id1"));
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MyDatabase","root","12345");
                String sql1 = "select * from mb_detail where id = "+id1;
                Statement st1 = con.createStatement();
                ResultSet rs1 = st1.executeQuery(sql1);
                while(rs1.next())
                {
                    System.out.println("id is : "+id1);
                    heading1 = rs1.getString(3);
                    img11 = rs1.getString(37);
                    img12 = rs1.getString(39);
                    img13 = rs1.getString(41);
                    img14 = rs1.getString(43);
                 
                    dis_size_min1 = rs1.getString(6);
                    dis_resolution_min1 = rs1.getString(8);
                    rearcam_min1 = rs1.getString(17);
                    rearvideo_min1 = rs1.getString(20);
                    ram_min1 = rs1.getString(12);
                    rom_min1 = rs1.getString(14);
                    battery_min11 = rs1.getString(32);
                    battery_min12 = rs1.getString(33);
                    
                    name1 = rs1.getString(3);
                    brand1 = rs1.getString(2);
                    dis_type1 = rs1.getString(4);
                    dis_size1 = rs1.getString(5);
                    dis_resolution1 = rs1.getString(7);
                    dis_multitouch1 = rs1.getString(9);
                    dis_protection1 = rs1.getString(10);
                    ram1 = rs1.getString(11);
                    rom1 = rs1.getString(13);
                    cardslot1 = rs1.getString(15);
                    
                    rearcam1 = rs1.getString(16);
                    rearfeatures1 = rs1.getString(18);
                    rearvideo1 = rs1.getString(19);
                    
                    frontcam1 = rs1.getString(21);
                    frontfeatures1 = rs1.getString(22);
                    frontvideo1 = rs1.getString(23);
                    
                    os1 = rs1.getString(24);
                    chipset1 = rs1.getString(25);
                    cpu1 = rs1.getString(26);
                    gpu1 = rs1.getString(27);
                    
                    soundalerttype1 = rs1.getString(28);
                    loudspeaker1 = rs1.getString(29);
                    jack1 = rs1.getString(30);
                    
                    battery1 = rs1.getString(31);
                    launch1 = rs1.getString(34);
                    color1 = rs1.getString(35);
                }
                
                
                
                
                int id2 = Integer.parseInt(request.getParameter("id2"));
                
                String sql2 = "select * from mb_detail where id = "+id2;
                Statement st2 = con.createStatement();
                ResultSet rs2 = st2.executeQuery(sql2);
                while(rs2.next())
                {
                    System.out.println("id is : "+id1);
                    heading2 = rs2.getString(3);
                    img21 = rs2.getString(37);
                    img22 = rs2.getString(39);
                    img23 = rs2.getString(41);
                    img24 = rs2.getString(43);
                 
                    dis_size_min2 = rs2.getString(6);
                    dis_resolution_min2 = rs2.getString(8);
                    rearcam_min2 = rs2.getString(17);
                    rearvideo_min2 = rs2.getString(20);
                    ram_min2 = rs2.getString(12);
                    rom_min2 = rs2.getString(14);
                    battery_min21 = rs2.getString(32);
                    battery_min22 = rs2.getString(33);
                    
                    name2 = rs2.getString(3);
                    brand2 = rs2.getString(2);
                    dis_type2 = rs2.getString(4);
                    dis_size2 = rs2.getString(5);
                    dis_resolution2 = rs2.getString(7);
                    dis_multitouch2 = rs2.getString(9);
                    dis_protection2 = rs2.getString(10);
                    ram2 = rs2.getString(11);
                    rom2 = rs2.getString(13);
                    cardslot2 = rs2.getString(15);
                    
                    rearcam2 = rs2.getString(16);
                    rearfeatures2 = rs2.getString(18);
                    rearvideo2 = rs2.getString(19);
                    
                    frontcam2 = rs2.getString(21);
                    frontfeatures2 = rs2.getString(22);
                    frontvideo2 = rs2.getString(23);
                    
                    os2 = rs2.getString(24);
                    chipset2 = rs2.getString(25);
                    cpu2 = rs2.getString(26);
                    gpu2 = rs2.getString(27);
                    
                    soundalerttype2 = rs2.getString(28);
                    loudspeaker2 = rs2.getString(29);
                    jack2 = rs2.getString(30);
                    
                    battery2 = rs2.getString(31);
                    launch2 = rs2.getString(34);
                    color2 = rs2.getString(35);
                }
                
                
                
                
                
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
            };
    
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
        <!-- Card Section -->

        <section class="section-padding ">
        
            <div class="row">
                <div class="col l6">
                    <h3 id="heading11">OnePlus 6</h3>
                </div>
                <div class="col l6">
                    <h3 id="heading21">OnePlus 6</h3>
                </div>
            </div>
            
        </section>
        
        <br/>
        
        
        <section class="section">
            <div class="row">
                <div class="col s12 m2 l1">
                    <img src="icon/OnePlus 6-main.jpg" class="mbimg" onclick="changeimg11()" height="100px" width="80px" id="img11">
                    <img src="icon/OnePlus 6-6.jpg" class="mbimg" onclick="changeimg12()" height="100px" width="80px" id="img12">
                    <img src="icon/OnePlus 6-4.jpg" class="mbimg" onclick="changeimg13()" height="100px" width="80px" id="img13">
                    <img src="icon/OnePlus 6-3.jpg" class="mbimg" onclick="changeimg14()" height="100px" width="80px" id="img14">
                </div>
                <div>
                    <div>
                        <img src="icon/OnePlus 6-main.jpg"  style="margin-left: 60px" class="materialboxed responsive-img col s12 m4 l3 mbimg" id="spimg1">
                    </div>
                    
                    <div class="col l2" style="margin-left: 60px"></div>
                    
                    <div>
                        <img src="icon/OnePlus 6-main.jpg"  style="margin-left: 40px" class="materialboxed responsive-img col s12 m4 l3 mbimg" id="spimg2">
                    </div>
                </div>
                <div class="col s12 m2 l1 right"  style="margin-left: 40px">
                    <img src="icon/OnePlus 6-main.jpg" class="mbimg" onclick="changeimg21()" height="100px" width="80px" id="img21">
                    <img src="icon/OnePlus 6-6.jpg" class="mbimg" onclick="changeimg22()" height="100px" width="80px" id="img22">
                    <img src="icon/OnePlus 6-4.jpg" class="mbimg" onclick="changeimg23()" height="100px" width="80px" id="img23">
                    <img src="icon/OnePlus 6-3.jpg" class="mbimg" onclick="changeimg24()" height="100px" width="80px" id="img24">
                </div>
            </div>
        </section>
        <section class="section-padding">
            <h3>Specifications</h3>
        </section>
        <section class="section">
            <div class="row">
                    <div class="col s12 m6 l6">
                        <table class="specs11" style="border: 2px solid;">
                            <thead>
                                <tr>
                                    <th colspan="3"><p style="display: inline" id="heading12">OnePlus 6</p></th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td><i class="fas fa-mobile-alt" style="font-size: 50px"></i></td>
                                    <td id="dis_size_min1">6.28 Inches</td>
                                    <td id="dis_resolution_min1">1080 x 2280 pixels</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">camera</i></td>
                                    <td id="rearcam_min1">16 MP Rear</td>
                                    <td id="rearvideo_min1">2160p</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">memory</i></td>
                                    <td id="ram_min1">8GB RAM</td>
                                    <td id="rom_min1">128/256GB Internal</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">battery_std</i></td>
                                    <td id="battery_min11">3300mAh</td>
                                    <td id="battery_min12">Non-removable Li-Po</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col s12 m6 l6">
                        <table class="specs22" style="border: 2px solid;">
                            <thead>
                                <tr>
                                    <th colspan="3"><p style="display: inline" id="heading22">OnePlus 6</p></th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td><i class="fas fa-mobile-alt" style="font-size: 50px"></i></td>
                                    <td id="dis_size_min2">6.28 Inches</td>
                                    <td id="dis_resolution_min2">1080 x 2280 pixels</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">camera</i></td>
                                    <td id="rearcam_min2">16 MP Rear</td>
                                    <td id="rearvideo_min2">2160p</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">memory</i></td>
                                    <td id="ram_min2">8GB RAM</td>
                                    <td id="rom_min2">128/256GB Internal</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">battery_std</i></td>
                                    <td id="battery_min21">3300mAh</td>
                                    <td id="battery_min22">Non-removable Li-Po</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
           
        </section>
        
        <section class="section-padding">
            <h3>Detailed Info</h3>
        </section>

        <section class="section mybackground">
            
                <div class="row">
                    
                    <div class="col l6">
                        <table class="specs111">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th></th>
                                    <th id="name1">OnePlus 6</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <th>BRAND</th>
                                    <td></td>
                                    <td id="brand1">OnePlus</td>
                                </tr>
                                <tr>
                                    <th rowspan="5">Display</th>
                                    <td>Type</td>
                                    <td id="dis_type1">Optic AMOLED capacitive touchscreen, 16M colors</td>
                                </tr>
                                <tr>
                                    <td>Size</td>
                                    <td id="dis_size1">6.28 inches, 98.4 cm2 (~83.8% screen-to-body ratio)</td>
                                </tr>
                                <tr>
                                    <td>Resolution</td>
                                    <td id="dis_resolution1">1080 x 2280 pixels, 19:9 ratio (~402 ppi density)</td>
                                </tr>
                                <tr>
                                    <td>Multitouch</td>
                                    <td id="dis_multitouch1">Yes</td>
                                </tr>
                                <tr>
                                    <td>Protection</td>
                                    <td id="dis_protection1">Corning Gorilla Glass 5</td>
                                </tr>
                                    
                                
                                <tr>
                                    <td>RAM</td>
                                    <td></td>
                                    <td id="ram1">8 GB RAM </td>
                                </tr>
                                <tr>
                                    <td>Internal</td>
                                    <td></td>
                                    <td id="rom1">128/256 GB</td>
                                </tr>
                                <tr>
                                    <td>CARD SLOT</td>
                                    <td></td>
                                    <td id="cardslot1">NO</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">MAIN CAMERA(REAR)</td>
                                    <td>Single / Dual</td>
                                    <td id="rearcam1">16 MP, f/1.7, 25mm, 1/2.6", 1.22µm, OIS, PDAF</td>
                                </tr>
                                <tr>
                                    <td>Features</td>
                                    <td id="rearfeatures1">Dual-LED flash, HDR, panorama</td>
                                </tr>
                                <tr>
                                    <td>Video</td>
                                    <td id="rearvideo1">2160p@30/60fps, 1080p@30/60/240fps, 720p@480fps, Auto HDR</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">SELFIE CAMERA(FRONT)</td>
                                    <td>Single</td>
                                    <td id="frontcam1">16 MP, f/2.0, 25mm, 1/3", 1.0µm</td>
                                </tr>
                                <tr>
                                    <td>Features</td>
                                    <td id="frontfeatures1">Auto-HDR</td>
                                </tr>
                                <tr>
                                    <td>Video</td>
                                    <td id="frontvideo1">1080p (gyro-EIS)</td>
                                </tr>
                                <tr>
                                    <td rowspan="4">PLATFORM</td>
                                    <td>OS</td>
                                    <td id="os1">Android 8.1 (Oreo)</td>
                                </tr>
                                <tr>
                                    <td>Chipset</td>
                                    <td id="chipset1">Qualcomm SDM845 Snapdragon 845</td>
                                </tr>
                                <tr>
                                    <td>CPU</td>
                                    <td id="cpu1">Octa-core (4x2.8 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)</td>
                                </tr>
                                <tr>
                                    <td>GPU</td>
                                    <td id="gpu1">Adreno 630</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">SOUND</td>
                                    <td>Alert Types</td>
                                    <td id="soundalerttype1">Vibration; MP3, WAV ringtones</td>
                                </tr>
                                <tr>
                                    <td>LoudSpeaker</td>
                                    <td id="loudspeaker1">Yes</td>
                                </tr>
                                <tr>
                                    <td>3.5mm jack</td>
                                    <td id="jack1">Yes</td>
                                </tr>
                                <tr>
                                    <td>BATTERY</td>
                                    <td></td>
                                    <td id="battery1">Non-removable Li-Po 3300 mAh battery</td>
                                </tr>
                                <tr>
                                    <td>LAUNCH</td>
                                    <td></td>
                                    <td id="launch1">2018, May</td>
                                </tr>
                                <tr>
                                    <td>COLORS</td>
                                    <td></td>
                                    <td id="color1"></td>
                                </tr>
                                 <!-- style="background-color: #000000;color:#f4ff81;text-align: center" -->
                                
                                
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="col l6">
                        <table class="specs222">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th></th>
                                    <th id="name2">OnePlus 6</th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <th>BRAND</th>
                                    <td></td>
                                    <td id="brand2">OnePlus</td>
                                </tr>
                                <tr>
                                    <th rowspan="5">Display</th>
                                    <td>Type</td>
                                    <td id="dis_type2">Optic AMOLED capacitive touchscreen, 16M colors</td>
                                </tr>
                                <tr>
                                    <td>Size</td>
                                    <td id="dis_size2">6.28 inches, 98.4 cm2 (~83.8% screen-to-body ratio)</td>
                                </tr>
                                <tr>
                                    <td>Resolution</td>
                                    <td id="dis_resolution2">1080 x 2280 pixels, 19:9 ratio (~402 ppi density)</td>
                                </tr>
                                <tr>
                                    <td>Multitouch</td>
                                    <td id="dis_multitouch2">Yes</td>
                                </tr>
                                <tr>
                                    <td>Protection</td>
                                    <td id="dis_protection2">Corning Gorilla Glass 5</td>
                                </tr>
                                    
                                
                                <tr>
                                    <td>RAM</td>
                                    <td></td>
                                    <td id="ram2">8 GB RAM </td>
                                </tr>
                                <tr>
                                    <td>Internal</td>
                                    <td></td>
                                    <td id="rom2">128/256 GB</td>
                                </tr>
                                <tr>
                                    <td>CARD SLOT</td>
                                    <td></td>
                                    <td id="cardslot2">NO</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">MAIN CAMERA(REAR)</td>
                                    <td>Single / Dual</td>
                                    <td id="rearcam2">16 MP, f/1.7, 25mm, 1/2.6", 1.22µm, OIS, PDAF</td>
                                </tr>
                                <tr>
                                    <td>Features</td>
                                    <td id="rearfeatures2">Dual-LED flash, HDR, panorama</td>
                                </tr>
                                <tr>
                                    <td>Video</td>
                                    <td id="rearvideo2">2160p@30/60fps, 1080p@30/60/240fps, 720p@480fps, Auto HDR</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">SELFIE CAMERA(FRONT)</td>
                                    <td>Single</td>
                                    <td id="frontcam2">16 MP, f/2.0, 25mm, 1/3", 1.0µm</td>
                                </tr>
                                <tr>
                                    <td>Features</td>
                                    <td id="frontfeatures2">Auto-HDR</td>
                                </tr>
                                <tr>
                                    <td>Video</td>
                                    <td id="frontvideo2">1080p (gyro-EIS)</td>
                                </tr>
                                <tr>
                                    <td rowspan="4">PLATFORM</td>
                                    <td>OS</td>
                                    <td id="os2">Android 8.1 (Oreo)</td>
                                </tr>
                                <tr>
                                    <td>Chipset</td>
                                    <td id="chipset2">Qualcomm SDM845 Snapdragon 845</td>
                                </tr>
                                <tr>
                                    <td>CPU</td>
                                    <td id="cpu2">Octa-core (4x2.8 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)</td>
                                </tr>
                                <tr>
                                    <td>GPU</td>
                                    <td id="gpu2">Adreno 630</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">SOUND</td>
                                    <td>Alert Types</td>
                                    <td id="soundalerttype2">Vibration; MP3, WAV ringtones</td>
                                </tr>
                                <tr>
                                    <td>LoudSpeaker</td>
                                    <td id="loudspeaker2">Yes</td>
                                </tr>
                                <tr>
                                    <td>3.5mm jack</td>
                                    <td id="jack2">Yes</td>
                                </tr>
                                <tr>
                                    <td>BATTERY</td>
                                    <td></td>
                                    <td id="battery2">Non-removable Li-Po 3300 mAh battery</td>
                                </tr>
                                <tr>
                                    <td>LAUNCH</td>
                                    <td></td>
                                    <td id="launch2">2018, May</td>
                                </tr>
                                <tr>
                                    <td>COLORS</td>
                                    <td></td>
                                    <td id="color2"></td>
                                </tr>
                                 <!-- style="background-color: #000000;color:#f4ff81;text-align: center" -->
                                
                                
                            </tbody>
                        </table>
                    </div>
                    
                </div>
            
        </section>

      





      <!--JavaScript at end of body for optimized loading-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
       </script>
      <script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
      
      <script>
          
        // mobile 1
        // image section  
        var img_id11 = document.getElementById("spimg1");
        img_id11.src = "<%=img11%>";  
        
        var img_id12 = document.getElementById("img11");
        img_id12.src = "<%=img11%>";  
        
        var img_id13 = document.getElementById("img12");
        img_id13.src = "<%=img12%>";
        
        var img_id14 = document.getElementById("img13");
        img_id14.src = "<%=img13%>";
        
        var img_id15 = document.getElementById("img14");
        img_id15.src = "<%=img14%>";
        
        function changeimg11() {
        var spimg11 = document.getElementById("spimg1");
        spimg11.src="<%=img11%>";
        }
        
        function changeimg12() {
        var spimg12 = document.getElementById("spimg1");
        spimg12.src="<%=img12%>";
        }
        
        function changeimg13() {
        var spimg13 = document.getElementById("spimg1");
        spimg13.src="<%=img13%>";
        }
        
        function changeimg14() {
        var spimg14 = document.getElementById("spimg1");
        spimg14.src="<%=img14%>";
        }
        
        
        //info section mini
        
        document.getElementById("heading11").innerHTML = "<%=heading1%>";  
        document.getElementById("heading12").innerHTML = "<%=heading1%>";  
        
        document.getElementById("dis_size_min1").innerHTML = "<%=dis_size_min1%>";  
        document.getElementById("dis_resolution_min1").innerHTML = "<%=dis_resolution_min1%>";  
        document.getElementById("rearcam_min1").innerHTML = "<%=rearcam_min1%>";  
        document.getElementById("rearvideo_min1").innerHTML = "<%=rearvideo_min1%>";  
        document.getElementById("ram_min1").innerHTML = "<%=ram_min1%>";  
        document.getElementById("rom_min1").innerHTML = "<%=rom_min1%>"; 
        document.getElementById("battery_min11").innerHTML = "<%=battery_min11%>";  
        document.getElementById("battery_min12").innerHTML = "<%=battery_min12%>";
        
        //info section detail
        
        document.getElementById("name1").innerHTML = "<%=name1%>"; 
        document.getElementById("brand1").innerHTML = "<%=brand1%>"; 
        document.getElementById("dis_type1").innerHTML = "<%=dis_type1%>"; 
        document.getElementById("dis_size1").innerHTML = "<%=dis_size1%>"; 
        document.getElementById("dis_resolution1").innerHTML = "<%=dis_resolution1%>"; 
        document.getElementById("dis_multitouch1").innerHTML = "<%=dis_multitouch1%>"; 
        document.getElementById("dis_protection1").innerHTML = "<%=dis_protection1%>"; 
        document.getElementById("ram1").innerHTML = "<%=ram1%>"; 
        document.getElementById("rom1").innerHTML = "<%=rom1%>"; 
        document.getElementById("cardslot1").innerHTML = "<%=cardslot1%>"; 
        
        document.getElementById("rearcam1").innerHTML = "<%=rearcam1%>"; 
        document.getElementById("rearfeatures1").innerHTML = "<%=rearfeatures1%>"; 
        document.getElementById("rearvideo1").innerHTML = "<%=rearvideo1%>"; 
        document.getElementById("frontcam1").innerHTML = "<%=frontcam1%>"; 
        document.getElementById("frontfeatures1").innerHTML = "<%=frontfeatures1%>"; 
        document.getElementById("frontvideo1").innerHTML = "<%=frontvideo1%>"; 
        
        document.getElementById("os1").innerHTML = "<%=os1%>"; 
        document.getElementById("chipset1").innerHTML = "<%=chipset1%>"; 
        document.getElementById("cpu1").innerHTML = "<%=cpu1%>"; 
        document.getElementById("gpu1").innerHTML = "<%=gpu1%>"; 
        
        document.getElementById("soundalerttype1").innerHTML = "<%=soundalerttype1%>"; 
        document.getElementById("loudspeaker1").innerHTML = "<%=loudspeaker1%>"; 
        document.getElementById("jack1").innerHTML = "<%=jack1%>"; 
        
        document.getElementById("battery1").innerHTML = "<%=battery1%>"; 
        document.getElementById("launch1").innerHTML = "<%=launch1%>"; 
        document.getElementById("color1").innerHTML = "<%=color1%>"; 
       
        
        
        
        // mobile 1
        // image section  
        var img_id21 = document.getElementById("spimg2");
        img_id21.src = "<%=img21%>";  
        
        var img_id22 = document.getElementById("img21");
        img_id22.src = "<%=img21%>";  
        
        var img_id23 = document.getElementById("img22");
        img_id23.src = "<%=img22%>";
        
        var img_id24 = document.getElementById("img23");
        img_id24.src = "<%=img23%>";
        
        var img_id25 = document.getElementById("img24");
        img_id25.src = "<%=img24%>";
        
        function changeimg21() {
        var spimg21 = document.getElementById("spimg2");
        spimg21.src="<%=img21%>";
        }
        
        function changeimg22() {
        var spimg22 = document.getElementById("spimg2");
        spimg22.src="<%=img22%>";
        }
        
        function changeimg23() {
        var spimg23 = document.getElementById("spimg2");
        spimg23.src="<%=img23%>";
        }
        
        function changeimg24() {
        var spimg24 = document.getElementById("spimg2");
        spimg24.src="<%=img24%>";
        }
        
        
        //info section mini
        
        document.getElementById("heading21").innerHTML = "<%=heading2%>";  
        document.getElementById("heading22").innerHTML = "<%=heading2%>";  
        
        document.getElementById("dis_size_min2").innerHTML = "<%=dis_size_min2%>";  
        document.getElementById("dis_resolution_min2").innerHTML = "<%=dis_resolution_min2%>";  
        document.getElementById("rearcam_min2").innerHTML = "<%=rearcam_min2%>";  
        document.getElementById("rearvideo_min2").innerHTML = "<%=rearvideo_min2%>";  
        document.getElementById("ram_min2").innerHTML = "<%=ram_min2%>";  
        document.getElementById("rom_min2").innerHTML = "<%=rom_min2%>"; 
        document.getElementById("battery_min21").innerHTML = "<%=battery_min21%>";  
        document.getElementById("battery_min22").innerHTML = "<%=battery_min22%>";
        
        //info section detail
        
        document.getElementById("name2").innerHTML = "<%=name2%>"; 
        document.getElementById("brand2").innerHTML = "<%=brand2%>"; 
        document.getElementById("dis_type2").innerHTML = "<%=dis_type2%>"; 
        document.getElementById("dis_size2").innerHTML = "<%=dis_size2%>"; 
        document.getElementById("dis_resolution2").innerHTML = "<%=dis_resolution2%>"; 
        document.getElementById("dis_multitouch2").innerHTML = "<%=dis_multitouch2%>"; 
        document.getElementById("dis_protection2").innerHTML = "<%=dis_protection2%>"; 
        document.getElementById("ram2").innerHTML = "<%=ram2%>"; 
        document.getElementById("rom2").innerHTML = "<%=rom2%>"; 
        document.getElementById("cardslot2").innerHTML = "<%=cardslot2%>"; 
        
        document.getElementById("rearcam2").innerHTML = "<%=rearcam2%>"; 
        document.getElementById("rearfeatures2").innerHTML = "<%=rearfeatures2%>"; 
        document.getElementById("rearvideo2").innerHTML = "<%=rearvideo2%>"; 
        document.getElementById("frontcam2").innerHTML = "<%=frontcam2%>"; 
        document.getElementById("frontfeatures2").innerHTML = "<%=frontfeatures2%>"; 
        document.getElementById("frontvideo2").innerHTML = "<%=frontvideo2%>"; 
        
        document.getElementById("os2").innerHTML = "<%=os2%>"; 
        document.getElementById("chipset2").innerHTML = "<%=chipset2%>"; 
        document.getElementById("cpu2").innerHTML = "<%=cpu2%>"; 
        document.getElementById("gpu2").innerHTML = "<%=gpu2%>"; 
        
        document.getElementById("soundalerttype2").innerHTML = "<%=soundalerttype2%>"; 
        document.getElementById("loudspeaker2").innerHTML = "<%=loudspeaker2%>"; 
        document.getElementById("jack2").innerHTML = "<%=jack2%>"; 
        
        document.getElementById("battery2").innerHTML = "<%=battery2%>"; 
        document.getElementById("launch2").innerHTML = "<%=launch2%>"; 
        document.getElementById("color2").innerHTML = "<%=color2%>"; 
       
        
        document.getElementById("uid").innerHTML = "<%=fn%>";
        
        
        
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
        
        
        
        
        
  
        
      </script>
     

    </body>
    
</html>
<!-- create table mb_specs(id int(20),name char(20),screen int(10),ram int(10),rom int(10),battery int(10),frontcam int(5),rearcam int(5)); -->






