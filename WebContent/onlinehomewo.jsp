<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>online_homework1</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	text-align: center;
}

#header {
	width: 95%;
	text-align: center;
	border-bottom: 8px solid #0070D2;
	height: 130px;
	margin: 20px auto;
	text-align: center;
}

#header1 {
	height: 45%;
	text-align: left;
	/* border: 1px solid #00f; */
}

#header1_line {
	width: 10%;
	/* border: 1px solid #0f0; */
	margin: 10px;
	float: left;
}

#header1_line ul li {
	border: 1px solid #686868;
	height: 2px;
	line-height: 3px;
	list-style: none;
	width: 35px;
	margin: 8px 0;
	background: #6A6866;
}

#header1_img {
	width: 30%;
	/* border: 1px solid #00f; */
	float: left;
	text-align: left;
	margin: 10px 0;
}

#header1_img img {
	width: 35%;
	height: 30%;
}

#header1_a {
	/* border: 1px solid #f00; */
	float: right;
}

#header1_a a {
	display: inline-block;
	/* width: 300px; */
	height: 50px;
	line-height: 50px;
	border-radius: 10px;
	font-weight: 900;
	text-decoration: none;
}

#header1_a a:first-child {
	width: 200px;
	background: #0070D2;
	color: #fff;
	margin: 5px 20px;
	border: 1px solid #0070D2;
	background: #0070D2;
}

#header1_a a:nth-child(2) {
	width: 150px;
	background: #fff;
	color: #0070D2;
	border: 1px solid #F1F1F1;
	margin: 5px;
	background: #fff;
}

#header_search {
	height: 50px;
	border: 1px solid #F1F1F1;
	width: 100%;
}

#header_search img {
	width: 6%;
	height: 100%;
	float: left;
}

#header_search input {
	width: 90%;
	display: inline-block;
	height: 96%;
	text-align: left;
	padding-left: 30px;
	border-radius: 10px;
	border: 1px solid #fff;
	color: #686868;
	font-size: 25px;
	float: left;
}

.clearBoth {
	clear: both;
}
</style>
</head>
<body>
	<!-- header开始 -->
	<header id="header">
		<div id="header1">
			<div id="header1_line">
				<ul>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<div id="header1_img">
				<img src="images/images/logo_en.png">
			</div>
			<div id="header1_a">
				<a href="">サインアップ</a> <a href="">ログイン</a>
			</div>
		</div>
		<div class="clearBoth"></div>
		<div id="header_search">
			<img alt="" src="images/images/search.jpg"> <input type="text"
				value="Search">
		</div>
		<div class="clearBoth"></div>
		<div id="header3"></div>
	</header>
	<!-- header 结束 -->
	<style>
#context {
	margin: 20px auto;
	text-align: center;
	/* border: 1px solid #f00; */
	width: 95%;
	
}

#context ul li {
	list-style: none;
	height: 550px;
	/* border: 1px solid #f00; */
}

 .banner {
	height: 30%;
	/* border: 1px solid #0f0; */
	background: #38E5D1;
	position: relative;
}

 .banner img {
	position: absolute;
	width: 120px;
	height: 120px;
	left: 40px;
	bottom: -40px;
}

 .banner p.point {
	width: 150px;
	height: 40px;
	line-height: 40px;
	border-radius: 25px;
	background: #F5F5F5;
	color: #5C5C5C;
	font-weight: 900;
	position: absolute;
	left: 70%;
	bottom: -50%;
}

.info {
	height: 25%;
	/* 	border: 1px solid #00f; */
	margin: 80px 40px 30px;
}

 .info p {
	text-align: left;
	font-weight: 900;
	margin: 10px 0;
}

 .info p.p1, p.p3 {
	color: #5c5c5c;
	font-size: 20px;
}

 .info p.p2 {
	color: #000;
	font-size: 40px;
}
/* #context ul li　.logo{
		height: 200px;border: 1px solid #00f;
		
		
	} 
	#context ul li　div.logo img{
		text-align: left;
		display: inline-block;
		width: 20px;height: 20px;
	} */
 .logo {
	height: 15%;
	width: 100%; /* border: 1px solid #00f; */
}

.logo img {
	width: 50px;
	height: 50px;
	display: block;
	float: left;
	border: 1px solid #F5F5F5;
	margin: 10px 5px;
}

.logo span {
	display: block;
	float: right;
	margin: 15px 15px;
	color: #5c5c5c;
	font-weight: 900;
	font-size: 20px;
}
</style>
	<!-- context开始 -->
	<section id="context">
		<ul>
			<!-- 最外的first开始 -->
			<li class="contextli fisrt out">

				<div class="banner">
					<img alt="" src="images/images/greenbanner.jpg">
					<p class="point">+4,400 ポイント</p>

				</div>
				<div class="clearBoth"></div>
				<div class="info">
					<p class="p1">java初級課</p>
					<p class="p2">Java の基礎知識の学習の宿題</p>
					<p class="p3">awsクラウドのアーキテクチャとサービスを理解し、確定を備えます。</p>
				</div>
				<div class="clearBoth"></div>
				<div class="logo">
					<img class="img" alt="" src="images/images/1heart.jpg"> <img
						id="img" alt="" src="images/images/2plus.jpg"> <img alt=""
						src="images/images/3jiantou.jpg"> <span>6時間２５分</span>
				</div>
				<div class="clearBoth"></div>

			</li>
			<!-- 最外的li first结束 -->
			</ul>

				<style>

/*inside  */


#secondout {
	width: 90%;
	border-top: 3px solid #e7e7e7;
	background: #F5F5F5;
	margin: 5px auto;
	/* background: #00f; */
	/* border: 10px solid #000; */
	
}

.greypoint {
	height: 50px;
	text-align: center;
}

.greypoint a {
	display: block;
	width: 20px;
	height: 20px;
	line-height: 15px;
	border-radius: 50%;
	background: #e7e7e7;
	margin: 10px auto;
	
}
#insi{width: 90%;/* border: 5px solid #00f; */
		margin:5px auto; 
		background: #fff;
}
.inbanner img{border-radius:50%; border: 7px solid #FAAD41;}
.one{/* border:1px solid #f00; */  margin-top: 100px;}
.inp2{color: #00A1E1;}
/* .inside{height: 200px;border-top:1px solid #f5f5f5; } */
.two{height: 150px;border-top:5px solid #f5f5f5;
border-bottom:5px solid #f5f5f5;
text-align: left;
font-weight: 900;

 }
 .two p{color: #2074D3; font-size: 20px;
 text-align: left;margin: 25px;}
 .p1{color: #2074D3; font-size: 20px;}
 .twop2{color: #5c5c5c; font-size: 20px;
 	
 }
 .two a{
 	float: right;
 	background: #f5f5f5;
 	color: #5c5c5c;
 	width: 50px;height: 50px;margin-right:60px;
 	margin-top:-100px;
 	text-decoration: none;
 	font-size: 30px;
 	border-radius:50%; 
 	
 }
 .three{height: 100px;}

</style>

				<!-- 外面第二部分 开始 -->
				<div id="secondout">
					<div class="greypoint">
						<a></a> <a></a>
					</div>
					<div class="clearBoth"></div>
					<div id="insi">
						<div class="inside one">
							<div class="banner inbanner">
					<img alt="" src="images/images/greenbanner.jpg">
					<p class="point">600 ポイント</p>

				</div>
				<div class="clearBoth"></div>
				<div class="info">
					<p class="p1">モジュール</p>
					<p class="p2 inp2">Javaのデータ型</p>
					<p class="p3">Javaの基礎(int,short,byte,long,float,double,blooean,char)を学習します。</p>
				</div>
				<div class="clearBoth"></div>
				<div class="logo">
					<img class="img" alt="" src="images/images/1heart.jpg"> <img
						id="img" alt="" src="images/images/2plus.jpg"> <img alt=""
						src="images/images/3jiantou.jpg"> <span>6時間２５分</span>
				</div>
				<div class="clearBoth"></div>
						</div>
						<div class="clearBoth"></div>
						<!-- 第一个inside结束 -->
						<div class="inside two">
							<p class="twop1">awsでのクラウドコンピューテイングを知る</p>
							<div class="clearBoth"></div>
							<p class="twop2">~10分</p>
							
							<a href="">-></a>
							
						</div>
						<div class="clearBoth"></div>
						<div class="inside two">
							<p class="twop1">awsサービスカテゴリーを把握する</p>
							<div class="clearBoth"></div>
							<p class="twop2">~10分</p>
							
							<a href="">-></a>
							
						</div>
						<div class="clearBoth"></div>
						<div class="inside two">
							<p class="twop1">awsグローバルインフラストラクチャーを探索する。</p>
							<div class="clearBoth"></div>
							<p class="twop2">~10分</p>
							
							<a href="">-></a>
							
						</div>
						<div class="clearBoth"></div>
						<div class="inside two">
							<p class="twop1">aws管理インターフェースを使用する</p>
							<div class="clearBoth"></div>
							<p class="twop2">~10分</p>
							
							<a href="">-></a>
							
						</div>
						<div class="clearBoth"></div>
						<div class="inside  three two">
							<p class="twop1">👆６単元を非表示</p>
							<div class="clearBoth"></div>
							
							
						</div>
						<div class="clearBoth"></div>
						<div class="greypoint">
						<a></a> <a></a>
					</div>
						<div class="inside one">
							<div class="banner inbanner">
					<img alt="" src="images/images/greenbanner.jpg">
					<p class="point">600 ポイント</p>

				</div>
				<div class="clearBoth"></div>
				<div class="info">
					<p class="p1">モジュール</p>
					<p class="p2 inp2">Java 繰り返しとメソッド</p>
					<p class="p3">discocer the servisec that enable you to deliever
						and maintain high-performing apps
					</p>
				</div>
				<div class="clearBoth"></div>
				<div class="logo">
					<img class="img" alt="" src="images/images/1heart.jpg"> <img
						id="img" alt="" src="images/images/2plus.jpg"> <img alt=""
						src="images/images/3jiantou.jpg"> <span>6時間２５分</span>
				</div>
				<div class="clearBoth"></div>
						</div>
						<div class="clearBoth"></div>
					<div class="inside three two">
							<p class="twop1">像👇６単元を非表示</p>
							<div class="clearBoth"></div>
							
							
						</div>
						<div class="clearBoth"></div>
					</div>
					
					

					<!-- 第二个外面的li结束 -->
	</section>
	<!-- context 结束-->
	
	<style>
	#footer{height: 400px;width: 90%;text-align: center;
		/* border: 1px solid #f00;  */
		margin: 15px auto;
	}
	#footer table{width: 90%;height: 80%;text-align: left;
	margin: 10px auto; color: #5c5c5c;}
	#footer table td{height: 30px;
	
	
}
.footerline{border:1px solid #f5f5f5;width: 100% ;
background: #f5f5f5;
}
.last{margin: 20px auto;text-align: center;}
.last p{font-size: 15px;color: #5c5c5c;}
	</style>
	<footer id="footer">
		<table  cellspacing="0" >
			<thead>
			<tr width="50%">
				<th height="50px">联系我们</th>
				<th>credentials</th>
			</tr>
			</thead>
			<tbody>
				<tr>
					<td>110-0092</td>
					<td>java环境怎么配置</td>
				</tr>
				<tr>
					<td>东京都秋叶原</td>
					<td>快捷键怎么设置</td>
				</tr>
				<tr>
					<td>20-5</td>
					<td>mysql怎么安装</td>
				</tr>
				<tr>
					<td>internation</td>
					<td>在线视频怎么打开</td>
				</tr>
				<tr>
					<td>internation</td>
					<td>api怎么配置</td>
				</tr>
				<tr>
					<td>03-0202-0202</td>
					<td>题本企业面试培训</td>
				</tr>
				<tr>
					<td>9999999@gmail.com</td>
					<td>提</td>
				</tr>
				<tr>
					<td>株式会社</td>
					<td></td>
				</tr>
			</tbody>
		</table>
		<div class="footerline">
		
		</div>
		<div class="last">
			<p>2020co.jp .inc all right reserved</p>
		</div>
	 </footer>
</body>
</html>