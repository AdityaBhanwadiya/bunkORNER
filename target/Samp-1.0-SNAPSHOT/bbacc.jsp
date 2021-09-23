<%@page import="Impl.User"%>
<%

HttpSession httpSession = request.getSession();
User kal = (User)httpSession.getAttribute("current-user");
if (!kal.getUserEmail().equals("bharatbhai"))
{
httpSession.setAttribute("message", "You are not allowed in");
response.sendRedirect("midlogin.jsp");
return;
}
%>
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
                            <li class="nav-item"><a class="nav-link" href="contact-us.html">Contact Us</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->

                    
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
                        
                        <h2>Hello, Bharat Bhai</h2>
                        
                        }
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a >Admin</a></li>
                            <li class="breadcrumb-item active">Account</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start My Account  -->
        <div class="my-account-box-main">
            <div class="container">
                <div class="my-account-page">
                    <div class="row">
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-icon">
                                        <a href="OrdDisp.jsp"> <i class="fas fa-hotdog"></i> </a>
                                    </div>
                                    <div class="service-desc">
                                        <h4>Orders</h4>
                                        <p>Track, cancel, or modify services</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-icon">
                                        <a href="UserDisp.jsp"><i class="fas fa-users"></i> </a>
                                    </div>
                                    <div class="service-desc">
                                        <h4>Users &amp; security</h4>
                                        <p>Edit Users, name, and mobile number</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="account-box">
                                <div class="service-box">
                                    <div class="service-icon">
                                        <a href="Logout"> <i class="fa fa-location-arrow"></i> </a>
                                    </div>
                                    <div class="service-desc">
                                        <h4>Logout</h4>
                                        <p>Edit addresses for orders and gifts</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- End My Account -->




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
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        
    </body>

</html>