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
            String heading = "";
            String img1="",img2="",img3="",img4="";
            String dis_size_min="", dis_resolution_min="", rearcam_min="", rearvideo_min="", ram_min="", rom_min="", battery_min1="", battery_min2="";
            String name="", brand="", dis_type="", dis_size="", dis_resolution="", dis_multitouch="", dis_protection="";
            String ram="", rom="", cardslot="";
            String rearcam="", rearfeatures="", rearvideo="", frontcam="", frontfeatures="", frontvideo="";
            String os="", chipset="", cpu="", gpu="";
            String soundalerttype="", loudspeaker="", jack="";
            String battery="", launch="", color="";
            String href="";
            int id = Integer.parseInt(request.getParameter("id"));
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/MyDatabase","root","12345");
                String sql = "select * from mb_detail where id = "+id;
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                while(rs.next())
                {
                    System.out.println("id is : "+id);
                    heading = rs.getString(3);
                    img1 = rs.getString(37);
                    img2 = rs.getString(39);
                    img3 = rs.getString(41);
                    img4 = rs.getString(43);
                    dis_size_min = rs.getString(6);
                    dis_resolution_min = rs.getString(8);
                    rearcam_min = rs.getString(17);
                    rearvideo_min = rs.getString(20);
                    ram_min = rs.getString(12);
                    rom_min = rs.getString(14);
                    battery_min1 = rs.getString(32);
                    battery_min2 = rs.getString(33);
                    name = rs.getString(3);
                    brand = rs.getString(2);
                    dis_type = rs.getString(4);
                    dis_size = rs.getString(5);
                    dis_resolution = rs.getString(7);
                    dis_multitouch = rs.getString(9);
                    dis_protection = rs.getString(10);
                    ram = rs.getString(11);
                    rom = rs.getString(13);
                    cardslot = rs.getString(15);
                    rearcam = rs.getString(16);
                    rearfeatures = rs.getString(18);
                    rearvideo = rs.getString(19);
                    frontcam = rs.getString(21);
                    frontfeatures = rs.getString(22);
                    frontvideo = rs.getString(23);
                    os = rs.getString(24);
                    chipset = rs.getString(25);
                    cpu = rs.getString(26);
                    gpu = rs.getString(27);
                    soundalerttype = rs.getString(28);
                    loudspeaker = rs.getString(29);
                    jack = rs.getString(30);
                    battery = rs.getString(31);
                    launch = rs.getString(34);
                    color = rs.getString(35);
                    href = "compareonly1.jsp?compare1="+name;
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
                        <li>
                            <a href="aboutus.jsp" style="font-size: 15px">About Us</a>
                        </li>
                        <%
                            String fn="";
                            try
                            {
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
            <h3 id="heading1">OnePlus 6</h3>
        </section>
        <br/>
        <section class="section">
            <div class="row">
                <div class="col s12 m2 l1">
                    <img class="mbimg" onclick="changeimg1()" height="100px" width="80px" id="img1" style="cursor: pointer;">
                    <img class="mbimg" onclick="changeimg2()" height="100px" width="80px" id="img2" style="cursor: pointer;">
                    <img class="mbimg" onclick="changeimg3()" height="100px" width="80px" id="img3" style="cursor: pointer;">
                    <img class="mbimg" onclick="changeimg4()" height="100px" width="80px" id="img4" style="cursor: pointer;">
                </div>
                <div>
                    <div>
                        <img src="icon/OnePlus 6-main.jpg"  style="margin-left: 40px" class="materialboxed responsive-img col s12 m4 l3 mbimg" id="spimg">
                    </div>
                    <div class="col l1"></div>
                    <div class="col s12 m6 l6">
                        <table class="specs1">
                            <thead>
                                <tr>
                                    <th colspan="3"><p style="display: inline" id="heading2">OnePlus 6</p></th>
                                </tr>
                            </thead>

                            <tbody>
                                <tr>
                                    <td><i class="fas fa-mobile-alt" style="font-size: 50px"></i></td>
                                    <td id="dis_size_min">6.28 Inches</td>
                                    <td id="dis_resolution_min">1080 x 2280 pixels</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">camera</i></td>
                                    <td id="rearcam_min">16 MP Rear</td>
                                    <td id="rearvideo_min">2160p</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">memory</i></td>
                                    <td id="ram_min">8GB RAM</td>
                                    <td id="rom_min">128/256GB Internal</td>
                                </tr>
                                <tr>
                                    <td><i class="material-icons" style="font-size: 50px">battery_std</i></td>
                                    <td id="battery_min1">3300mAh</td>
                                    <td id="battery_min2">Non-removable Li-Po</td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- <a href="" class="button" onclick="filter1()">Like</a> -->
                        <a href="#review" class="button">Review</a>
                        <%
                            out.println("<a href='"+href+"' class='button right' style='cursor: pointer;'>Compare +</a>");
                        %>
                        
                    </div>
                </div>
            </div>
        </section>
        <section class="section-padding">
            <h3>Detailed Info</h3>
        </section>
        <section class="section mybackground">
            <div class="container">
                <div class="row">
                    <div class="col specs2">
                        <table>
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th></th>
                                    <th id="name">OnePlus 6</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>BRAND</th>
                                    <td></td>
                                    <td id="brand">OnePlus</td>
                                </tr>
                                <tr>
                                    <th rowspan="5">Display</th>
                                    <td>Type</td>
                                    <td id="dis_type">Optic AMOLED capacitive touchscreen, 16M colors</td>
                                </tr>
                                <tr>
                                    <td>Size</td>
                                    <td id="dis_size">6.28 inches, 98.4 cm2 (~83.8% screen-to-body ratio)</td>
                                </tr>
                                <tr>
                                    <td>Resolution</td>
                                    <td id="dis_resolution">1080 x 2280 pixels, 19:9 ratio (~402 ppi density)</td>
                                </tr>
                                <tr>
                                    <td>Multitouch</td>
                                    <td id="dis_multitouch">Yes</td>
                                </tr>
                                <tr>
                                    <td>Protection</td>
                                    <td id="dis_protection">Corning Gorilla Glass 5</td>
                                </tr>
                                <tr>
                                    <td>RAM</td>
                                    <td></td>
                                    <td id="ram">8 GB RAM </td>
                                </tr>
                                <tr>
                                    <td>Internal</td>
                                    <td></td>
                                    <td id="rom">128/256 GB</td>
                                </tr>
                                <tr>
                                    <td>CARD SLOT</td>
                                    <td></td>
                                    <td id="cardslot">NO</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">MAIN CAMERA(REAR)</td>
                                    <td>Single / Dual</td>
                                    <td id="rearcam">16 MP, f/1.7, 25mm, 1/2.6", 1.22µm, OIS, PDAF</td>
                                </tr>
                                <tr>
                                    <td>Features</td>
                                    <td id="rearfeatures">Dual-LED flash, HDR, panorama</td>
                                </tr>
                                <tr>
                                    <td>Video</td>
                                    <td id="rearvideo">2160p@30/60fps, 1080p@30/60/240fps, 720p@480fps, Auto HDR</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">SELFIE CAMERA(FRONT)</td>
                                    <td>Single</td>
                                    <td id="frontcam">16 MP, f/2.0, 25mm, 1/3", 1.0µm</td>
                                </tr>
                                <tr>
                                    <td>Features</td>
                                    <td id="frontfeatures">Auto-HDR</td>
                                </tr>
                                <tr>
                                    <td>Video</td>
                                    <td id="frontvideo">1080p (gyro-EIS)</td>
                                </tr>
                                <tr>
                                    <td rowspan="4">PLATFORM</td>
                                    <td>OS</td>
                                    <td id="os">Android 8.1 (Oreo)</td>
                                </tr>
                                <tr>
                                    <td>Chipset</td>
                                    <td id="chipset">Qualcomm SDM845 Snapdragon 845</td>
                                </tr>
                                <tr>
                                    <td>CPU</td>
                                    <td id="cpu">Octa-core (4x2.8 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)</td>
                                </tr>
                                <tr>
                                    <td>GPU</td>
                                    <td id="gpu">Adreno 630</td>
                                </tr>
                                <tr>
                                    <td rowspan="3">SOUND</td>
                                    <td>Alert Types</td>
                                    <td id="soundalerttype">Vibration; MP3, WAV ringtones</td>
                                </tr>
                                <tr>
                                    <td>LoudSpeaker</td>
                                    <td id="loudspeaker">Yes</td>
                                </tr>
                                <tr>
                                    <td>3.5mm jack</td>
                                    <td id="jack">Yes</td>
                                </tr>
                                <tr>
                                    <td>BATTERY</td>
                                    <td></td>
                                    <td id="battery">Non-removable Li-Po 3300 mAh battery</td>
                                </tr>
                                <tr>
                                    <td>LAUNCH</td>
                                    <td></td>
                                    <td id="launch">2018, May</td>
                                </tr>
                                <tr>
                                    <td>COLORS</td>
                                    <td></td>
                                    <td id="color"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <section id="review" class="section" style="border-top: 3px solid;">
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
                    <div class='row'>
                        <div class="col l1"></div>
                        <div class='col l10' style='border: 2px solid #2f496e;border-radius: 30px;'>
                            <h5 id='title'style='color: '>useful</h5>
                            <h6 id='descr'>"I think mobile finder is useful to find a mobile..." </h6>
                        </div>
                    </div>
                    <div class='row'>
                        <div class="col l1"></div>
                        <div class='col l10' style='border: 2px solid #2f496e;border-radius: 30px;'>
                            <h5 id='title'style='color: '>easy to use</h5>
                            <h6 id='descr'>"This is amazing, its quick and easy. I love it" </h6>
                        </div>
                    </div>
                    <div class='row'>
                        <div class="col l1"></div>
                        <div class='col l10' style='border: 2px solid #2f496e;border-radius: 30px;'>
                            <h5 id='title'style='color: '>useful</h5>
                            <h6 id='descr'>"I think mobile finder is useful to find a mobile..." </h6>
                        </div>
                    </div>
                    <div class='row'>
                        <div class="col l1"></div>
                        <div class='col l10' style='border: 2px solid #2f496e;border-radius: 30px;'>
                            <h5 id='title'style='color: '>easy to use</h5>
                            <h6 id='descr'>"This is amazing, its quick and easy. I love it" </h6>
                        </div>
                    </div>
                    <h4 style="text-align: center;text-decoration: underline;"><a href="#">Read All Reviews</a></h4>  
                </div>
            </div>
        </section>
        <!--JavaScript at end of body for optimized loading-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js">
        </script>
        <script defer src="https://use.fontawesome.com/releases/v5.2.0/js/all.js" integrity="sha384-4oV5EgaV02iISL2ban6c/RmotsABqE4yZxZLcYMAdG7FAPsyHYAPpywE9PJo+Khy" crossorigin="anonymous"></script>
        <script>
            M.AutoInit();
            // image section  
            var img_id1 = document.getElementById("spimg");
            img_id1.src = "<%=img1%>";  
            var img_id2 = document.getElementById("img1");
            img_id2.src = "<%=img1%>";  
            var img_id3 = document.getElementById("img2");
            img_id3.src = "<%=img2%>";
            var img_id4 = document.getElementById("img3");
            img_id4.src = "<%=img3%>";
            var img_id5 = document.getElementById("img4");
            img_id5.src = "<%=img4%>";
            function changeimg1() {
            var spimg1 = document.getElementById("spimg");
            spimg1.src="<%=img1%>";
            }
            function changeimg2() {
            var spimg2 = document.getElementById("spimg");
            spimg2.src="<%=img2%>";
            }
            function changeimg3() {
            var spimg3 = document.getElementById("spimg");
            spimg3.src="<%=img3%>";
            }
            function changeimg4() {
            var spimg4 = document.getElementById("spimg");
            spimg4.src="<%=img4%>";
            }
            //info section mini
            document.getElementById("heading1").innerHTML = "<%=heading%>";  
            document.getElementById("heading2").innerHTML = "<%=heading%>";  
            document.getElementById("dis_size_min").innerHTML = "<%=dis_size_min%>";  
            document.getElementById("dis_resolution_min").innerHTML = "<%=dis_resolution_min%>";  
            document.getElementById("rearcam_min").innerHTML = "<%=rearcam_min%>";  
            document.getElementById("rearvideo_min").innerHTML = "<%=rearvideo_min%>";  
            document.getElementById("ram_min").innerHTML = "<%=ram_min%>";  
            document.getElementById("rom_min").innerHTML = "<%=rom_min%>"; 
            document.getElementById("battery_min1").innerHTML = "<%=battery_min1%>";  
            document.getElementById("battery_min2").innerHTML = "<%=battery_min2%>";
            //info section detail
            document.getElementById("name").innerHTML = "<%=name%>"; 
            document.getElementById("brand").innerHTML = "<%=brand%>"; 
            document.getElementById("dis_type").innerHTML = "<%=dis_type%>"; 
            document.getElementById("dis_size").innerHTML = "<%=dis_size%>"; 
            document.getElementById("dis_resolution").innerHTML = "<%=dis_resolution%>"; 
            document.getElementById("dis_multitouch").innerHTML = "<%=dis_multitouch%>"; 
            document.getElementById("dis_protection").innerHTML = "<%=dis_protection%>"; 
            document.getElementById("ram").innerHTML = "<%=ram%>"; 
            document.getElementById("rom").innerHTML = "<%=rom%>"; 
            document.getElementById("cardslot").innerHTML = "<%=cardslot%>"; 
            document.getElementById("rearcam").innerHTML = "<%=rearcam%>"; 
            document.getElementById("rearfeatures").innerHTML = "<%=rearfeatures%>"; 
            document.getElementById("rearvideo").innerHTML = "<%=rearvideo%>"; 
            document.getElementById("frontcam").innerHTML = "<%=frontcam%>"; 
            document.getElementById("frontfeatures").innerHTML = "<%=frontfeatures%>"; 
            document.getElementById("frontvideo").innerHTML = "<%=frontvideo%>"; 
            document.getElementById("os").innerHTML = "<%=os%>"; 
            document.getElementById("chipset").innerHTML = "<%=chipset%>"; 
            document.getElementById("cpu").innerHTML = "<%=cpu%>"; 
            document.getElementById("gpu").innerHTML = "<%=gpu%>"; 
            document.getElementById("soundalerttype").innerHTML = "<%=soundalerttype%>"; 
            document.getElementById("loudspeaker").innerHTML = "<%=loudspeaker%>"; 
            document.getElementById("jack").innerHTML = "<%=jack%>"; 
            document.getElementById("battery").innerHTML = "<%=battery%>"; 
            document.getElementById("launch").innerHTML = "<%=launch%>"; 
            document.getElementById("color").innerHTML = "<%=color%>"; 
            document.getElementById("uid").innerHTML = "<%=fn%>";
            // Sidenav
            const sideNav = document.querySelector('.sidenav');
            M.Sidenav.init(sideNav,{});
            </script>
    </body>
</html>
