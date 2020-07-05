<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="checkStudent.jsp" %>  
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生首页</title>
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
 <meta name="apple-mobile-web-app-capable" content="yes">    
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://libs.useso.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">    
<link href="css/style.css" rel="stylesheet">
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<style type="text/css">
.btn-navbar{float:left;}
.brand{background: url("images/logo_en.png") no-repeat; background-size:contain;
width: 60px; 
}
.navbar .brand{margin-top:10px; margin-left:5px;}
.navbar-inner button{float: right; margin-right: 5px;}
.navbar-inner{background: #fff !important;}
.nav-collapse{background: rgb(44,44,44);}
.navbar-search{border: 0px; margin: 0; padding: 5px 15px;  }
.navbar-search .search-query{background: #fff; border-radius: 5px;}
.subnavbar{margin-bottom: 5px;}
.widget-header{height: 80px; background: #17C0C0; }
.subnavbar-inner{border-bottom: 0em;}
.line1{border-top:2px solid #21a9ec; padding-top: 4px;}
body{background: #fff;}
.titleImg{width: 70px; height: 70px; border-radius: 12px; position: relative; left: 20px;
top:30px;
}
.point{background: #e6e6e6; float: right; border-radius: 12px; padding: 3px 5px; font-size: 10px;}
.c1{color:#8b8787;}
.times{float: right; }
.dyImg{width: 60px; height: 60px; border-radius: 30px; border: 3px solid #F7B03E;}
.dy{padding: 20px; border-top:2px solid  #21a9ec; }
.accordion{background:#e6e6e6; padding:30px 10px;}
.accordion-group{background:#fff; margin-bottom: 30px;}
.accordion-heading{background: #fff; color: #003B91;}
.accordion-heading a{color: #21a9ec;}
.accordion-inner ul li{ list-style: none; border-bottom:1px solid #e6e6e6; padding-top:10px; }
.dyleft{width: 80%; float: left;}
.dyright{width: 20%; float: right; text-align: right;}
.accordion-group h3{color: #21a9ec; font-size: 14px;}
.cleaboth{clear:both;}
.accordion-inner ul {text-align: left; margin: 0; padding:0;}
.dyright span{width: 20px; height: 20px; line-height:20px; text-align:center;
 border-radius: 10px; background: #e6e6e6; display: inline-block; color: #8b8787;}
 .dyleft p{font-size:10px; }
 .txImg{ width:30px; height: 30px; border-radius: 15px; float: right;}
 .navbar .nav>li>a{color: #999!important;}
</style>
</head>
<body>
<div class="navbar navbar-fixed-top">
	
	<div class="navbar-inner">
		
		<div class="container">
			
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</a>
			<a class="brand" href="index.html">
							
			</a>	
			<!-- <button class="button btn ">ログイン</button>	 -->
			
			<button class="button btn btn-primary">退出登录</button>
			<span style="float: right; font-size:14px; padding-top: 5px; margin: 0 5px; ">罗丽同学，你好！</span>
			<img class="txImg" src="images/d1z.png">
			
			<div class="nav-collapse">
				<ul class="nav pull-right">
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-cog"></i>
							Home
						</a>			
					</li>
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-cog"></i>
							Java
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="javascript:;">第一天作业</a></li>
							<li><a href="javascript:;">第二天作业</a></li>
						</ul>						
					</li>
					<li class="dropdown">						
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-user"></i> 
							EGrappler.com
							<b class="caret"></b>
						</a>
						
						<ul class="dropdown-menu">
							<li><a href="javascript:;">Profile</a></li>
							<li><a href="javascript:;">Logout</a></li>
						</ul>						
					</li>
				</ul>
			
				
				
			</div><!--/.nav-collapse -->	
		</div> <!-- /container -->
		
	</div> <!-- /navbar-inner -->
	
</div> <!-- /navbar -->
    



    
<div class="subnavbar">

	<div class="subnavbar-inner">
	
		<div class="container">

			<form class="navbar-search">
				<input type="text" style="width:95%;" class="search-query" placeholder="Search">
			</form>

		</div> <!-- /container -->
	
	</div> <!-- /subnavbar-inner -->

</div> <!-- /subnavbar -->
    
    

<div class="main">
	
	<div class="main-inner">

	    <div class="container">
	
	      <div class="row">
	      	
	      	<div class="span12">      		
	      		
	      		<div class="widget ">
	      			<div class="line1"></div>
	      			
					<div class="widget-content">
						
						<h2>现在还需要完成一个作业</h2>
						
						 <div class="control-group">
						 	
												<div class="controls">
													 <div id="accordion2">
                                                      <div class="accordion-group">
                                                        
                                                        <div class="dy">
														 		<div class="c1">
																	<img class="dyImg" src="images/d1z.png" >
																	<span class="point">已完成/总共 1/5</span>
														 		</div>
														 		<p class="c1">Java</p>
														 		<h3>java基础第一天作业</h3>
														 		<p class="c1">状态：发布中</p>
														 		<p class="c1">提交日期：2020-7-14</p>
														 		<p class="c1">
																	<button class="btn btn-small"><i class="icon-heart"></i></button>
																	<button class="btn btn-small"><i class="icon-plus"></i></button>
																	<button class="btn btn-small"><i class="icon-tag"></i></button>
																	<span class="times">１时</span>
																</p>
														
														 </div>
                                                        
                                                        <div class="accordion-heading">
                                                          <a class="accordion-toggle" >
                                                            <i class="icon-chevron-up"></i>点击查看题目   
                                                          </a>
                                                        </div>
                                      
                                                      </div>
                                                      
                                                      
                                                      
                                                      
                                                      <div class="accordion-group">
                                                        
                                                        <div class="dy">
														 		<div class="c1">
																	<img class="dyImg" src="images/d1z.png" >
																	<span class="point">已完成/总共 1/5</span>
														 		</div>
														 		<p class="c1">Java</p>
														 		<h3>java基础第二天作业</h3>
														 		<p class="c1">状态：提交结束</p>
														 		<p class="c1">截止日期：2020-7-14</p>
														 		<p class="c1">
																	<button class="btn btn-small"><i class="icon-heart"></i></button>
																	<button class="btn btn-small"><i class="icon-plus"></i></button>
																	<button class="btn btn-small"><i class="icon-tag"></i></button>
																	<span class="times">１时</span>
																</p>
														
														 </div>
                                                        
                                                        <div class="accordion-heading">
                                                          <a class="accordion-toggle" >
                                                            <i class="icon-chevron-up"></i>点击查看题目   
                                                          </a>
                                                        </div>
                                      
                                                      </div>
                                                      
                                                      
                                                    </div>
												</div> <!-- /controls -->	
											</div> <!-- /control-group -->
											
					</div> <!-- /widget-content -->
						
				</div> <!-- /widget -->
	      		
		    </div> <!-- /span8 -->
	      	
	      	
	      	
	      	
	      </div> <!-- /row -->
	
	    </div> <!-- /container -->
	    
	</div> <!-- /main-inner -->
    
</div> <!-- /main -->
    
    
    
 
<div class="extra">

	<div class="extra-inner">

		<div class="container">

			<div class="row">
                    <div class="span3">

                        <h4>联系方式</h4>
                        <ul>
                            <li>〒110-0016</li>
                            <li>東京都台東区台東1-29-3</li>
                            <li>イースタンクロスアキバ1F</li>
                            <li>03-5817-4856</li>
                            <li>itstudyjp@gmail.com</li>
                        </ul>
                    </div>
                    <!-- /span3 -->
                    <div class="span3">
                        <h4>常见问题</h4>
                        <ul>
                            <li><a href="javascript:;">Java环境怎么配置</a></li>
                            <li><a href="javascript:;">快捷键怎么设置</a></li>
                            <li><a href="javascript:;">MySql软件怎么安装</a></li>
                            <li><a href="javascript:;">在线视频无法打开</a></li>
                        </ul>
                    </div>
                   
                </div> <!-- /row -->

		</div> <!-- /container -->

	</div> <!-- /extra-inner -->

</div> <!-- /extra -->


    
    
<div class="footer">
	
	<div class="footer-inner">
		
		<div class="container">
			
			<div class="row">
				
    			<div class="span12">
    				&copy; 2020 <a href="http://www.itstudy.co.jp/">ITStudy株式会社</a>.
    			</div> <!-- /span12 -->
    			
    		</div> <!-- /row -->
    		
		</div> <!-- /container -->
		
	</div> <!-- /footer-inner -->
	
</div> <!-- /footer -->
    


<script src="js/jquery-1.7.2.min.js"></script>
	
<script src="js/bootstrap.js"></script>
<script src="js/base.js"></script>


</body>
</html>