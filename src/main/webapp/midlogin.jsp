<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>DDU's Canteen</title>

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

<SCRIPT LANGUAGE="JavaScript">
            function dil(form)
            {
                var b = /^([0-9]{2}[A-Z]{5}[0-9]{3})?(bharatbhai)?$/;
                if (!b.test(document.F1.ename.value))
                {
                    alert("Your College ID Is Not Valid. Valid Example : 18ITUOS012.")
                    document.F1.ename.value = ""
                    document.F1.ename.focus()
                    return false
                }
                return true
            }
        </SCRIPT>

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
						<li class="nav-item active"><a class="nav-link" href="contact-us.html">Login</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <ul>
                            <li class="side-menu"><a href="#">
                                    <i class="fas fa-hamburger"></i>
                                    <span class="badge">3</span>
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

    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->

    <!-- Start All Title Box -->
    <div class="all-title-box">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Login</h2>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active"> Login </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End All Title Box -->

    <!-- Start Login  -->
    <div class="contact-box-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-sm-12">
                    <div class="contact-form-right">
                        <%@include file="message.jsp"%>
                        <h2>Login here</h2>
                        <form name=F1 onSubmit="return dil(this)" id="contactForm" action="Login" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="name" name="ename" placeholder="Your College Id" required data-error="Enter Valid College Id">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="subject" name="pname" placeholder="Password" required data-error="Please enter your password">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>
                                
                                <div class="col-md-12">
                                    <div class="submit-button text-center">
                                        <button class="btn hvr-hover" id="submit" type="submit">Login</button>
                                        <div id="msgSubmit" class="h3 text-center hidden"></div>
                                        <div class="clearfix"></div>
                                        <div class="col-md-12">
                                            <a href="#">Forgot password?</a>
                                        </div>
                                    </div>
                                </div> 
                                <div class="col-md-12"><p></p></div>
                                <div class="col-md-12">
                                    <div class="submit-button text-center">
                                        <p>New to bunkORNER?
                                            <a href="contact-us.html" class="reg">Register Here</a>
                                        </p>                                        
                                    </div>
                                </div> 
                            </div>
                        </form>
                    </div>
                </div>
                    <div class="col-lg-4 col-sm-12">
                        <div class="contact-info-left">
                            <h2>CONTACT INFO</h2>
                            <p>Sometimes you need treat and you deserve a nice one. Check out our brand-new menu and book a table or order a takeaway at bunkORNER </p>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Address:Ddit College Canteen,<br> Ddu University, Sh 61,<br>Nadiad - 387001</p>
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+9102682520502">+9102682520502</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:canteen@ddu.ac.in">canteen@ddu.ac.in</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
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