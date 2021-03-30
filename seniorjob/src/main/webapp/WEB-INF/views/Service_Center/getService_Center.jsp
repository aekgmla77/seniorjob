<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<jsp:include page="../topHeader.jsp"></jsp:include>
<body>
<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    <div class="blog-lst col-md-12 pl0">
                        <section id="id-100" class="post single">

                            <div class="post-header single">
                                <div class="">
                                    <h2 class="wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">${gongji.title }</h2>
                                    <div class="title-line wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;"></div>
                                </div>
                                <div class="row wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;">
                                    <div class="col-sm-6">
                                        <p class="author-category">
                                            By <a href="#">${gongji.id }</a>
                                        </p>
                                    </div>
                                    <div class="col-sm-6 right">
                                        <p class="date-comments">
                                            <a href="single.html"><i class="fa fa-calendar-o"></i>${gongji.w_date }</a>
                                            <a href="single.html"><i class="fa fa-comment-o"></i> 8 Comments</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="image wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;"> 
                                    <img src="assets/img/blog2.jpg" class="img-responsive" alt="Example blog post alt">
                                </div>
                            </div> 

                            <div id="post-content" class="post-body single wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
                                <p>
                                    <strong>${gongji.content }</strong> 
                                    senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas
                                    semper. <em>Aenean ultricies mi vitae est.</em> 
                                    Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean
                                    fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>
                                <p>
                                    <img src="assets/img/blog10.jpg" class="img-responsive" alt="Example blog post alt">
                                </p>

                                <h2>Header Level 2</h2>
                                <ol>
                                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                    <li>Aliquam tincidunt mauris eu risus.</li>
                                </ol>

                                <blockquote>
                                    <p>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada
                                        tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
                                    </p>
                                </blockquote>

                                <h3>Header Level 3</h3>

                                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                    ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt
                                </p><ul>
                                    <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                                    <li>Aliquam tincidunt mauris eu risus.</li>
                                </ul>
                                <p>
                                    <img src="assets/img/blog.jpg" class="img-responsive" alt="Example blog post alt">
                                </p>
                                <p>
                                    Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                    condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros
                                    eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus
                                </p>

                            </div>
                            <div class="post-footer single wow fadeInBottum animated animated" style="visibility: visible;">
                                <ul class="pager">
                                    <li class="previous"><a href="#"><i class=""></i>← Older </a></li>
                                    <li class="next disabled"><a href="#">Newer →<i class=""></i> </a></li>
                                </ul> 
                            </div>    

                        </section> 

                        <section class="about-autor">

                        </section>

                        <section id="comments" class="comments wow fadeInRight animated animated" style="visibility: visible; animation-name: fadeInRight;"> 
                            <h4 class="text-uppercase wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">3 comments</h4>


                            <div class="row comment">
                                <div class="col-sm-3 col-md-2 text-center-xs">
                                    <p>
                                        <img src="assets/img/client-face1.png" class="img-responsive img-circle" alt="">
                                    </p>
                                </div>
                                <div class="col-sm-9 col-md-10">
                                    <h5 class="text-uppercase">Julie Alma</h5>
                                    <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2011 at 12:00 am</p>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                        Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                    <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                    </p>
                                </div>
                            </div>
                            <!-- /.comment -->


                            <div class="row comment last">

                                <div class="col-sm-3 col-md-2 text-center-xs">
                                    <p>
                                        <img src="assets/img/client-face2.png" class="img-responsive img-circle" alt="">
                                    </p>
                                </div>

                                <div class="col-sm-9 col-md-10">
                                    <h5 class="text-uppercase">Louise Armero</h5>
                                    <p class="posted"><i class="fa fa-clock-o"></i> September 23, 2012 at 12:00 am</p>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
                                        Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                                    <p class="reply"><a href="#"><i class="fa fa-reply"></i> Reply</a>
                                    </p>
                                </div>

                            </div>
                            <!-- /.comment -->
                        </section>

                        <section id="comment-form" class="add-comments">
                            <h4 class="text-uppercase wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">Leave comment</h4>
                            <form>
                                <div class="row wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="name">Name <span class="required">*</span>
                                            </label>
                                            <input class="form-control" id="name" type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="row wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="email">Email <span class="required">*</span>
                                            </label>
                                            <input class="form-control" id="email" type="text">
                                        </div>
                                    </div>
                                </div>

                                <div class="row wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="comment">Comment <span class="required">*</span>
                                            </label>
                                            <textarea class="form-control" id="comment" rows="4"></textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row wow fadeInLeft animated animated" style="visibility: visible; animation-name: fadeInLeft;">
                                    <div class="col-sm-12 text-right">
                                        <button class="btn btn-primary"><i class="fa fa-comment-o"></i> Post comment</button>
                                    </div>
                                </div>
                            </form>
                        </section>
                    </div>                                 
                </div>

            </div>
        </div>

<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>