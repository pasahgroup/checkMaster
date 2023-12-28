<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes by Zerotheme dot com - Free Responsive Html5 Templates">
    <meta name="author" content="https://www.Zerotheme.com">
    
    <title>Newspaper | Free Bootstrap Themes by Zerotheme.com</title>
    
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="../custom/css/bootstrap.min.css"  type="text/css">
    
    <!-- Owl Carousel Assets -->
    <link href="../custom/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="../custom/owl-carousel/owl.theme.css" rel="stylesheet">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../custom/css/style.css">
     <link href="../custom/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    
    <!-- Custom Fonts -->
    <link rel="stylesheet" href="font-awesome-4.4.0/css/font-awesome.min.css"  type="text/css">
    
    <!-- jQuery and Modernizr-->
    <script src="../custom/js/jquery-2.1.1.js"></script>
    
    <!-- Core JavaScript Files -->       
    <script src="../custom/js/bootstrap.min.js"></script>
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
    <![endif]-->
         <?php echo \Livewire\Livewire::styles(); ?>

</head>

<body>
<header>
    <!--Top-->
    <nav id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <strong>Welcome to Us!</strong>
                </div>
                <div class="col-md-6">
                    <ul class="list-inline top-link link">
                        <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="contact.html"><i class="fa fa-comments"></i> Contact</a></li>
                        <li><a href="#"><i class="fa fa-question-circle"></i> FAQ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    
    <!--Navigation-->
    <nav id="menu" class="navbar container">
        <div class="navbar-header">
            <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            <a class="navbar-brand" href="#">
                <div class="logo"><span>Newspaper</span></div>
            </a>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html">Home</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Account <i class="fa fa-arrow-circle-o-down"></i></a>
                    <div class="dropdown-menu">
                        <div class="dropdown-inner">
                            <ul class="list-unstyled">
                                <li><a href="archive.html">Login</a></li>
                                <li><a href="archive.html">Register</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Video <i class="fa fa-arrow-circle-o-down"></i></a>
                    <div class="dropdown-menu">
                        <div class="dropdown-inner">
                            <ul class="list-unstyled">
                                <li><a href="archive.html">Text 201</a></li>
                                <li><a href="archive.html">Text 202</a></li>
                                <li><a href="archive.html">Text 203</a></li>
                                <li><a href="archive.html">Text 204</a></li>
                                <li><a href="archive.html">Text 205</a></li>
                            </ul>
                        </div> 
                    </div>
                </li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Category <i class="fa fa-arrow-circle-o-down"></i></a>
                    <div class="dropdown-menu" style="margin-left: -203.625px;">
                        <div class="dropdown-inner">
                            <ul class="list-unstyled">
                                <li><a href="archive.html">Text 301</a></li>
                                <li><a href="archive.html">Text 302</a></li>
                                <li><a href="archive.html">Text 303</a></li>
                                <li><a href="archive.html">Text 304</a></li>
                                <li><a href="archive.html">Text 305</a></li>
                            </ul>
                            <ul class="list-unstyled">
                                <li><a href="archive.html">Text 306</a></li>
                                <li><a href="archive.html">Text 307</a></li>
                                <li><a href="archive.html">Text 308</a></li>
                                <li><a href="archive.html">Text 309</a></li>
                                <li><a href="archive.html">Text 310</a></li>
                            </ul>
                            <ul class="list-unstyled">
                                <li><a href="archive.html">Text 311</a></li>
                                <li><a href="archive.html">Text 312</a></li>
                                <li><a href="archive.html#">Text 313</a></li>
                                <li><a href="archive.html#">Text 314</a></li>
                                <li><a href="archive.html">Text 315</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li><a href="archive.html"><i class="fa fa-cubes"></i> Blocks</a></li>
                <li><a href="contact.html"><i class="fa fa-envelope"></i> Contact</a></li>
            </ul>
            <ul class="list-inline navbar-right top-social">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus-square"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
            </ul>
        </div>
    </nav>
</header>  

    

                <?php if($message= Session::get('success')): ?>
<div class="alert alert-success" role="alert">
    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
    <span aria-hidden="true">&times;</span></button>
    <strong>Well done!</strong> <?php echo e($message); ?>

</div>
<?php endif; ?>
<?php if($message= Session::get('delete')): ?>
<div class="alert alert-danger" role="alert">
    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
    <span aria-hidden="true">&times;</span></button>
    <strong>Attention!</strong> <?php echo e($message); ?>

</div>
<?php endif; ?>
<?php if($message= Session::get('error')): ?>

<div class="alert alert-danger" role="alert">
    <button aria-label="Close" class="close" data-dismiss="alert" type="button">
    <span aria-hidden="true">&times;</span></button>
    <strong>Sorry!</strong> <?php echo e($message); ?>

</div>
<?php endif; ?>

<?php if($errors->any()): ?>
<div class="alert alert-danger">
    <ul>
        <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <li><?php echo e($error); ?></li>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </ul>
</div>
<?php endif; ?>

 <?php if(isset($slot)): ?>
 <?php echo e($slot); ?>

 <?php else: ?>
 <?php echo $__env->yieldContent('content'); ?>
  <div class="footer bg-white py-4 d-flex flex-lg-column" id="tc_footer">
                                    <div
                        class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-between">

                        <div class="text-dark order-2 order-md-1">
                            <span class="text-muted font-weight-bold mr-2 text-center">©2022</span>
                            <span class="ext-muted font-weight-bold mr-2 text-center" style="color: #000;">Licensed to: <?php echo e($company->company_name??'Set Company Profile'); ?></span>
                        </div>
                    </div>
                </div>
          <?php endif; ?>
    <footer>
        <div class="wrap-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-footer footer-1">
                        <div class="footer-heading"><h1><span style="color: #fff;">NEWSPAPER</span></h1></div>
                        <div class="content">
                            <p>Never missed any post published in our site. Subscribe to our daly newsletter now.</p>
                            <strong>Email address:</strong>
                            <form action="#" method="post">
                                <input type="text" name="your-name" value="" size="40" placeholder="Your Email" />
                                <input type="submit" value="SUBSCRIBE" class="btn btn-3" />
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4 col-footer footer-2">
                        <div class="footer-heading"><h4>Tags</h4></div>
                        <div class="content">
                            <a href="#">animals</a>
                            <a href="#">cooking</a>
                            <a href="#">countries</a>
                            <a href="#">city</a>
                            <a href="#">children</a>
                            <a href="#">home</a>
                            <a href="#">likes</a>
                            <a href="#">photo</a>
                            <a href="#">link</a>
                            <a href="#">law</a>
                            <a href="#">shopping</a>
                            <a href="#">skate</a>
                            <a href="#">scholl</a>
                            <a href="#">video</a>
                            <a href="#">travel</a>
                            <a href="#">images</a>
                            <a href="#">love</a>
                            <a href="#">lists</a>
                            <a href="#">makeup</a>
                            <a href="#">media</a>
                            <a href="#">password</a>
                            <a href="#">pagination</a>
                            <a href="#">wildlife</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-footer footer-3">
                        <div class="footer-heading"><h4>Link List</h4></div>
                        <div class="content">
                            <ul>
                                <li><a href="#">MOST VISITED COUNTRIES</a></li>
                                <li><a href="#">5 PLACES THAT MAKE A GREAT HOLIDAY</a></li>
                                <li><a href="#">PEBBLE TIME STEEL IS ON TRACK TO SHIP IN JULY</a></li>
                                <li><a href="#">STARTUP COMPANY???S CO-FOUNDER TALKS ON HIS NEW PRODUCT</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right">
            <p>Copyright 2015 - Designed by <a href="https://www.Zerotheme.com">Zerotheme</a></p>
        </div>
    </footer>
    <!-- Footer -->
    
    <!-- JS -->
    <script src="../custom/owl-carousel/owl.carousel.js"></script>
    <script>
    $(document).ready(function() {
      $("#owl-demo-1").owlCarousel({
        autoPlay: 3000,
        items : 1,
        itemsDesktop : [1199,1],
        itemsDesktopSmall : [400,1]
      });
      $("#owl-demo-2").owlCarousel({
        autoPlay: 3000,
        items : 3,
        
      });
    });
    </script>
    
    
    <script type="text/javascript" src="../custom/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="../custom/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    $('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
    $('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 1,
        minView: 0,
        maxView: 1,
        forceParse: 0
    });
</script>
 <?php echo \Livewire\Livewire::scripts(); ?>

</body>
</html>
<?php /**PATH C:\xampp\htdocs\247security\resources\views/website/layouts/apps.blade.php ENDPATH**/ ?>