<%@page import="Impl.JustO"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>DDU's Canteen</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>


        <!-- Start Main Top -->
        <header class="main-header">
            <!-- Start Navigation -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
                <div class="container">
                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.html"><img src="images/logo.png" class="logo" alt=""></a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>

                            <li class="nav-item"><a class="nav-link" href="gallery.html">Gallery</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact-us.html">Register</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                    <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <ul>
                            <li class="side-menu"><a href="cart.html">
                                    <i class="fas fa-hamburger"></i>
                                    <span class="badge">0</span>
                                    <p>My Plate</p>
                                </a></li>
                        </ul>
                    </div>
                    <!-- End Atribute Navigation -->
                </div>
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->

        <!-- Start All Title Box -->
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Checkout</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a>User</a></li>
                            <li class="breadcrumb-item active">Checkout</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->
        <%
            JustO newO = (JustO) session.getAttribute("maroo");
        %>
        <!-- Start Cart  -->
        <div class="cart-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-main table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Username</th>
                                        <th>Phone</th>
                                        <%if(newO.getF1()!=0){%>
                                        <th>Aloo Parotha</th>
                                        <%}%>
                                        <%if(newO.getF2()!=0){%>
                                        <th>Upma</th>
                                        <%}%>
                                        <%if(newO.getF3()!=0){%>
                                        <th>Masala Dosa</th>
                                        <%}%>
                                        <%if(newO.getF4()!=0){%>
                                        <th>Methi Thepla</th>
                                        <%}%>
                                        <%if(newO.getF5()!=0){%>
                                        <th>Pav Katka</th>
                                        <%}%>
                                        <%if(newO.getF6()!=0){%>
                                        <th>Chole Puri</th>
                                        <%}%>
                                        <%if(newO.getF7()!=0){%>
                                        <th>Thepla</th>
                                        <%}%>
                                        <%if(newO.getF8()!=0){%>
                                        <th>Frankie</th>
                                        <%}%>
                                        <%if(newO.getF9()!=0){%>
                                        <th>Paneer Sandwich</th>
                                        <%}%>
                                        <%if(newO.getF10()!=0){%>
                                        <th>Indori Pauva</th>
                                        <%}%>
                                        <%if(newO.getF11()!=0){%>
                                        <th>Rava Idli</th>
                                        <%}%>
                                        <%if(newO.getF12()!=0){%>
                                        <th>Murukku</th>
                                        <%}%>
                                        <%if(newO.getF13()!=0){%>
                                        <th>Butter Toast</th>
                                        <%}%>
                                        <%if(newO.getF14()!=0){%>
                                        <th>Mango Lassi</th>
                                        <%}%>
                                        <%if(newO.getF15()!=0){%>
                                        <th>Chai</th>
                                        <%}%>
                                        <%if(newO.getF16()!=0){%>
                                        <th>Masala Chass</th>
                                        <%}%>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="name-pr">
                                            <p><%=newO.getUserName()%></p>
                                        </td>
                                        <td class="name-pr">
                                            <p><%=newO.getUserPhone()%></p>
                                        </td>
                                        <%if(newO.getF1()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF1()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF2()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF2()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF3()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF3()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF4()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF4()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF5()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF5()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF6()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF6()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF7()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF7()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF8()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF8()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF9()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF9()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF10()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF10()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF11()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF11()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF12()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF12()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF13()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF13()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF14()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF14()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF15()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF15()%></p>
                                        </td>
                                        <%}%>
                                        <%if(newO.getF16()!=0){%>
                                        <td class="name-pr">
                                            <p><%=newO.getF16()%></p>
                                        </td>
                                        <%}%>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


<%
    int bhav = 20*newO.getF1()+30*newO.getF2()+60*newO.getF3()+25*newO.getF4()+20*newO.getF5()+40*newO.getF6()+20*newO.getF7()+40*newO.getF8()+75*newO.getF9()+20*newO.getF10()+35*newO.getF11()+40*newO.getF12()+20*newO.getF13()+30*newO.getF14()+10*newO.getF15()+20*newO.getF16();
    float bhavt = (float)(5*bhav)/100;
    float hav = bhav+bhavt;
%>
                <div class="row my-5">
                    <div class="col-lg-8 col-sm-12"></div>
                    <div class="col-lg-4 col-sm-12">
                        <div class="order-box">
                            <h3>Order summary</h3>
                            <div class="d-flex">
                                <h4>Sub Total</h4>
                                <div class="ml-auto font-weight-bold">&#8377;<%=bhav%></div>
                            </div>

                            <div class="d-flex">
                                <h4>Tax</h4>
                                <div class="ml-auto font-weight-bold">&#8377;<%=bhavt%></div>
                            </div>
                            <hr>
                            <div class="d-flex gr-total">
                                <h5>Grand Total</h5>
                                <div class="ml-auto h5">&#8377;<%=hav%></div>
                                <!--hav ne paytm ma nakhvanu-->
                            </div>
                            <hr> </div>
                    </div>
                    <div class="col-12 d-flex shopping-box"> <a href="checkout.html" class="ml-auto btn hvr-hover">Place Order</a> </div>
                </div>

            </div>
        </div>
        <!-- End Cart -->





        <!-- Start Footer  -->
        <footer>
            <div class="footer-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-top-box">
                                <h3>Canteen Time</h3>
                                <ul class="list-time">
                                    <li>Monday - Friday: 08.00am to 05.00pm</li> <li>Saturday: 10.00am to 08.00pm</li> <li>Sunday: <span>Closed</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-top-box">
                                <h3>Social Media</h3>
                                <p>Want to Connect?, Hit any of these</p>
                                <ul>
                                    <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                    <li><a href="mailto:canteen@ddu.ac.in"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li><a href="tel:+9102682520502"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-top-box">
                                <h3>Contact Us</h3>
                                <ul>
                                    <li>
                                        <p><i class="fas fa-map-marker-alt"></i> Address:Ddit College Canteen,<br> Ddu University, Sh 61,<br>Nadiad - 387001 </p>
                                    </li>
                                    <!--                                    <li>
                                                                            <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+9102682520502">+9102682520502</a></p>
                                                                        </li>
                                                                        <li>
                                                                            <p><i class="fas fa-envelope"></i>Email: <a href="mailto:canteen@ddu.ac.in">canteen@ddu.ac.in</a></p>
                                                                        </li>-->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer  -->

        <!-- Start copyright  -->
        <div class="footer-copyright">
            <p class="footer-company">bunkORNER &copy; 2021 <a href="https://www.instagram.com/_het.shah_/">Het Shah</a> & <a href="https://www.instagram.com/gautam_rizwani/">Gautam Rizwani</a></p>
        </div>
        <!-- End copyright  -->

        <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

        <!-- ALL JS FILES -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <!-- ALL PLUGINS -->
        <script src="js/jquery.superslides.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="js/inewsticker.js"></script>
        <script src="js/bootsnav.js."></script>
        <script src="js/images-loded.min.js"></script>
        <script src="js/isotope.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/baguetteBox.min.js"></script>
        <script src="js/form-validator.min.js"></script>
        <script src="js/contact-form-script.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/script.js"></script>
        <script src="js/hript.js"></script>




    </body>

</html>