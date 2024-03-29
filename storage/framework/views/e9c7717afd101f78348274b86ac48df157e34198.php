
<?php $__env->startSection('content'); ?>  
    <div class="featured container">
        <div class="row">
            <div class="col-sm-8">
                <!-- Carousel -->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="../custom/images/1.jpg" alt="First slide">
                            <!-- Static Header -->
                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                    <strong>Aenean feugiat in ante et 
                                  </strong>
                                    <br>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <br>
                                </div>
                            </div><!-- /header-text -->
                        </div>



  <?php $__currentLoopData = $subcourses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subcourse): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <div class="item">
                            <img src="<?php echo e(URL::asset('/storage/subcourse/'.$subcourse->photo)); ?>" style="min-height: 20vh !important;max-height: 54vh;background-size: cover;width: 100%;" alt="Second slide">
                            <!-- Static Header -->
                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                    <strong><?php echo e($subcourse->title_name); ?></strong>
                                    <br>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <br>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>   

                     
                        <div class="item">
                            <img src="../custom/images/3.jpg" alt="Third slide">
                            <!-- Static Header -->
                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                    <strong>Curabitur tincidunt porta lorem vitae</strong>
                                    <br>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                    <br>
                                </div>
                            </div><!-- /header-text -->
                        </div>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div><!-- /carousel -->
            </div>
            <div class="col-sm-4">
                  <div class="widget wid-tags">
                        <div class="heading"><h4>COURSES</h4></div>
                 <?php $__currentLoopData = $courses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $course): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="content"><?php echo e($course->id); ?>:<a href="#"><?php echo e($course->course_name); ?></a></div>
               
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
               <!--  <hr>
                <div id="owl-demo-1" class="owl-carousel">
                    <img src="../custom/images/slide-2.jpg" />
                    <img src="../custom/images/slide-1.jpg" />
                    <img src="../custom/images/slide-3.jpg" />
                </div> -->
            </div>
        </div>
    </div>
    
    <!-- /////////////////////////////////////////Content -->
    <div id="page-content" class="index-page container">
        <div class="row">
            <div id="main-content"><!-- background not working -->
                <div class="col-md-6">
                    <div class="box wrap-vid">
                        <div class="zoom-container">
                            <div class="zoom-caption">
                                <span class="youtube">Youtube</span>
                                <a href="single.html">
                                    <i class="fa fa-play icon-play" style="color: #fff"></i>
                                </a>
                                <p>Video's Name</p>
                            </div>
                            <img src="../custom/images/4.jpg" />
                        </div>
                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                        <div class="info">
                            <h5>By <a href="#">Kelvin</a></h5>
                            <span><i class="fa fa-calendar"></i>25/3/2015</span> 
                            <span><i class="fa fa-heart"></i>1,200</span>
                        </div>
                        <p class="more">Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan.Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non.ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan</p>
                    </div>
                    <div class="box">
                        <div class="box-header header-vimeo">
                            <h2>Vimeo</h2>
                        </div>
                        <div class="box-content">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/2.jpg" />
                                        </div>
                                        <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                        <div class="info">
                                            <h5>By <a href="#">Kelvin</a></h5>
                                            <span><i class="fa fa-calendar"></i>25/3/2015</span> 
                                            <span><i class="fa fa-heart"></i>1,200</span>
                                        </div>
                                    </div>
                                    <p class="more">Aenean feugiat in ante et blandit. Vestibulum posuere molestie risus, ac interdum magna porta non. Pellentesque rutrum fringilla elementum. Curabitur tincidunt porta lorem vitae accumsan.</p>
                                </div>
                                <div class="col-md-6">
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/1.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/2.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/3.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/1.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box">
                        <div class="box-header header-photo">
                            <h2>Photos</h2>
                        </div>
                        <div class="box-content">
                            <div id="owl-demo-2" class="owl-carousel">
                                <div class="item">
                                    <img src="../custom/images/1.jpg" />
                                    <img src="../custom/images/2.jpg" />
                                </div>
                                <div class="item">
                                    <img src="../custom/images/3.jpg" />
                                    <img src="../custom/images/5.jpg" />
                                </div>
                                <div class="item">
                                    <img src="../custom/images/8.jpg" />
                                    <img src="../custom/images/9.jpg" />
                                </div>
                                <div class="item">
                                    <img src="../custom/images/10.jpg" />
                                    <img src="../custom/images/11.jpg" />
                                </div>
                                <div class="item">
                                    <img src="../custom/images/12.jpg" />
                                    <img src="../custom/images/13.jpg" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box">
                        <div class="box-header header-natural">
                            <h2>Natural</h2>
                        </div>
                        <div class="box-content">
                            <div class="row">
                                <div class="col-md-6">
                                    <img src="../custom/images/6.jpg" />
                                    <h3><a href="#">Marshall, Will, and Holly on a Routine Expedition</a></h3>
                                    <span><i class="fa fa-heart"></i> 1,200 / <i class="fa fa-calendar"></i> 25/3/2015 / <i class="fa fa-comment-o"> / </i> 10 <i class="fa fa-eye"></i> 945</span>
                                    <span class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half"></i>
                                    </span>
                                    <p>Marshall, Will, and Holly on a routine expedition, met the greatest earthquake ever known. High on the rapids, it struck their tiny raft! And plunged them down a thousand feet below???...</p>
                                </div>
                                <div class="col-md-6">
                                    <img src="../custom/images/7.jpg" />
                                    <h3><a href="#">Your Tread Must be Light and Sure as Though Your Path...</a></h3>
                                    <span><i class="fa fa-heart"></i> 1,200 / <i class="fa fa-calendar"></i> 25/3/2015 / <i class="fa fa-comment-o"> / </i> 3 <i class="fa fa-eye"></i> 1007</span>
                                    <span class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half"></i>
                                    </span>
                                    <p>There once was a story about a man who could turn invisible. I thought it was only a story??? until it happened to me. Ok, so here???s how it works: there???s this stuff called...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sidebar">
                <div class="col-md-3">
                    <!---- Start Widget ---->
                    <div class="widget wid-vid">
                        <div class="heading">
                            <h4>Videos</h4>
                        </div>
                        <div class="content">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#most">Most Plays</a></li>
                                <li><a data-toggle="tab" href="#popular">Popular</a></li>
                                <li><a data-toggle="tab" href="#random">Random</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="most" class="tab-pane fade in active">
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="youtube">Youtube</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="youtube">Youtube</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="popular" class="tab-pane fade">
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="youtube">Youtube</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="youtube">Youtube</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="random" class="tab-pane fade">
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="post wrap-vid">
                                        <div class="zoom-container">
                                            <div class="zoom-caption">
                                                <span class="vimeo">Vimeo</span>
                                                <a href="single.html">
                                                    <i class="fa fa-play-circle-o fa-3x" style="color: #fff"></i>
                                                </a>
                                                <p>Video's Name</p>
                                            </div>
                                            <img src="../custom/images/4.jpg" />
                                        </div>
                                        <div class="wrapper">
                                            <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                            <div class="info">
                                                <h6>By <a href="#">Kelvin</a></h6>
                                                <span><i class="fa fa-heart"></i>1,200 / <i class="fa fa-calendar"></i>25/3/2015</span>
                                                <span class="rating">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


  <h1>Easily embed YouTube or Vimeo videos in Bootstrap</h1>
  <p>Bootstrap comes with a nice helper classes to responsively embed videos on your website.</p>
  <p class="text-muted">This pen is a part of the <a href="https://bootstrapious.com/p/bootstrap-tips-and-tricks" target="_blank">Bootstrap tips and tricks article</a>.</p>
  
  <div class="row">
    <div class="col-sm-12">
      <!-- 16:9 -->
      <h4>16:9 Aspect Ratio</h4>
      <div class="embed-responsive embed-responsive-16by9">
        <iframe class="embed-responsive-item" src="//www.youtube.com/embed/zB4I68XVPzQ"></iframe>
      </div>
    </div>
    <div class="col-sm-12">
      <!-- 4:3 -->
      <h4>4:3 Aspect Ratio</h4>
      <div class="embed-responsive embed-responsive-4by3">
        <iframe class="embed-responsive-item" src="//www.youtube.com/embed/zB4I68XVPzQ"></iframe>
      </div>
    </div>
  </div>

                    <!---- Start Widget ---->
                    <div class="widget wid-gallery">
                        <div class="heading"><h4>Gallery</h4></div>
                        <div class="content">
                            <div class="col-md-4">
                                <div class="row">
                                    <a href="#"><img src="../custom/images/14.jpg" /></a>
                                    <a href="#"><img src="../custom/images/15.jpg" /></a>
                                    <a href="#"><img src="../custom/images/20.jpg" /></a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <a href="#"><img src="../custom/images/16.jpg" /></a>
                                    <a href="#"><img src="../custom/images/17.jpg" /></a>
                                    <a href="#"><img src="../custom/images/21.jpg" /></a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <a href="#"><img src="../custom/images/18.jpg" /></a>
                                    <a href="#"><img src="../custom/images/19.jpg" /></a>
                                    <a href="#"><img src="../custom/images/14.jpg" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-new-post">
                        <div class="heading"><h4>New Posts</h4></div>
                        <div class="content">
                            <h6>Lorem Ipsum is simply dummy</h6>
                            <img src="../custom/images/22.jpg" />
                            <ul class="list-inline">
                                <li><i class="fa fa-calendar"></i>25/3/2015</li> 
                                <li><i class="fa fa-comments"></i>1,200</li>
                            </ul>
                            <p>Title should not overflow the content area A few things to check for: Non-breaking text in the...</p>
                            <h6>Lorem Ipsum is simply dummy</h6>
                            <img src="../custom/images/23.jpg" />
                            <ul class="list-inline">
                                <li><i class="fa fa-calendar"></i>25/3/2015</li> 
                                <li><i class="fa fa-comments"></i>1,200</li>
                            </ul>
                            <p>Title should not overflow the content area A few things to check for: Non-breaking text in the...</p>
                            <h6>Lorem Ipsum is simply dummy</h6>
                            <img src="../custom/images/24.jpg" />
                            <ul class="list-inline">
                                <li><i class="fa fa-calendar"></i>25/3/2015</li> 
                                <li><i class="fa fa-comments"></i>1,200</li>
                            </ul>
                            <p>Title should not overflow the content area A few things to check for: Non-breaking text in the...</p>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-recent-post">
                        <div class="heading"><h4>Recent Posts</h4></div>
                        <div class="content">
                            <span>Creativity is about the journey <a href="#">your mind takes</a></span>
                            <span>About the journey <a href="#">your mind</a></span>
                            <span>The journey <a href="#">your</a></span>
                            <span>Journey is about the journey <a href="#">your mind mind</a></span>
                            <span>Creativity is about the journey <a href="#">your mind takes</a></span>
                            <span>About the journey <a href="#">your mind</a></span>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <!---- Start Widget ---->
                    <div class="widget wid-tags">
                        <div class="heading"><h4>Search</h4></div>
                        <div class="content">
                            <form role="form" class="form-horizontal" method="post" action="">
                                <input type="text" placeholder="Enter Search Keywords" value="" name="v_search" id="v_search" class="form-control">
                            </form>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-tags">
                        <div class="heading"><h4>Tags</h4></div>
                        <div class="content">
                            <a href="#">animals</a>
                            <a href="#">cooking</a>
                            <a href="#">countries</a>
                            <a href="#">home</a>
                            <a href="#">likes</a>
                            <a href="#">photo</a>
                            <a href="#">link</a>
                            <a href="#">video</a>
                            <a href="#">travel</a>
                            <a href="#">images</a>
                            <a href="#">love</a>
                            <a href="#">lists</a>
                            <a href="#">makeup</a>
                            <a href="#">media</a>
                            <a href="#">password</a>
                            <a href="#">pagination</a>
                            <a href="#">pictures</a>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-comment">
                        <div class="heading"><h4>Top Comments</h4></div>
                        <div class="content">
                            <div class="post">
                                <a href="single.html">
                                    <img src="../custom/images/ava-1.jpg" class="img-circle"/>
                                </a>
                                <div class="wrapper">
                                    <a href="#"><h5>Curabitur tincidunt porta lorem.</h5></a>
                                    <ul class="list-inline">
                                        <li><i class="fa fa-calendar"></i>25/3/2015</li> 
                                        <li><i class="fa fa-thumbs-up"></i>1,200</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="post">
                                <a href="single.html">
                                    <img src="../custom/images/ava-2.png" class="img-circle"/>
                                </a>
                                <div class="wrapper">
                                    <a href="#"><h5>Curabitur tincidunt porta lorem.</h5></a>
                                    <ul class="list-inline">
                                        <li><i class="fa fa-calendar"></i>25/3/2015</li> 
                                        <li><i class="fa fa-thumbs-up"></i>1,200</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="post">
                                <a href="single.html">
                                    <img src="../custom/images/ava-3.jpeg" class="img-circle"/>
                                </a>
                                <div class="wrapper">
                                    <a href="#"><h5>Curabitur tincidunt porta lorem.</h5></a>
                                    <ul class="list-inline">
                                        <li><i class="fa fa-calendar"></i>25/3/2015</li> 
                                        <li><i class="fa fa-thumbs-up"></i>1,200</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="post">
                                <a href="single.html">
                                    <img src="../custom/images/ava-4.jpg" class="img-circle"/>
                                </a>
                                <div class="wrapper">
                                    <a href="#"><h5>Curabitur tincidunt porta lorem.</h5></a>
                                    <ul class="list-inline">
                                        <li><i class="fa fa-calendar"></i>25/3/2015</li> 
                                        <li><i class="fa fa-thumbs-up"></i>1,200</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-banner">
                        <div class="content">
                            <img src="../custom/images/banner-2.jpg" class="img-responsive"/>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-categoty">
                        <div class="heading"><h4>Category</h4></div>
                        <div class="content">
                            <select class="col-md-12">
                                <option>Mustard</option>
                                <option>Ketchup</option>
                                <option>Relish</option>
                            </select>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-calendar">
                        <div class="heading"><h4>Calendar</h4></div>
                        <div class="content">
                            <center><form action="" role="form">        
                                <div class="">
                                    <div class="input-group date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">                </div>
                                    <input type="hidden" id="dtp_input2" value="" /><br/>
                                </div>
                            </form></center>
                        </div>
                    </div>
                    <!---- Start Widget ---->
                    <div class="widget wid-tweet">
                        <div class="heading"><h4>Tweet</h4></div>
                        <div class="content">
                            <div class="tweet-item">
                                <p><i class="fa fa-twitter"></i> TLAS - Coming Soon PSD Mockup</p>
                                <a>https://t.co/dLsNZYGVbJ</a>
                                <a>#psd</a>
                                <a>#freebie</a>
                                <a>#freebie</a>
                                <a>#dribbble</a>
                                <span>July 15th, 2015</span>
                            </div>
                            <div class="tweet-item">
                                <p><i class="fa fa-twitter"></i> Little Dude Character With Multiple Hairs</p>
                                <a>https://t.co/dLsNZYGVbJ</a>
                                <a>#freebie</a>
                                <a>#design</a>
                                <a>#illustrator</a>
                                <a>#dribbble</a>
                                <span>June 23rd, 2015</span>
                            </div>
                            <div class="tweet-item">
                                <p><i class="fa fa-twitter"></i> Newsletter Subscription Form Mockup</p>
                                <a>https://t.co/dLsNZYGVbJ</a>
                                <a>#psd</a>
                                <a>#freebie</a>
                                <a>#freebie</a>
                                <a>#dribbble</a>
                                <span>June 22nd, 2015</span>
                            </div>
                            <p>Marshall, Will, and Holly on a routine expedition, met the greatest earthquake ever known. High on the rapids, it struck their tiny raft...</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('website.layouts.apps', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\247security\resources\views/website/index/index.blade.php ENDPATH**/ ?>