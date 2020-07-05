<%@page import="org.apache.tomcat.util.descriptor.web.LoginConfig"%>
    <%
    HttpSession session2 = request.getSession();
    if(session2.getAttribute("uid") == null){
    	out.print("<script>document.location = 'login.html';</script>");
    }else if(Integer.parseInt(String.valueOf(session2.getAttribute("role"))) == 2){
    	out.print("<script>document.location = 'teacherHome.jsp';</script>");
    }
    %>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" import ="java.sql.*,java.io.*,java.util.*" %>
<%@page import="jp.itstudy.onlinehomework.model.ClassModel"%>   
<%@page import="jp.itstudy.onlinehomework.db.ClassDb"%>
<%@page import="jp.itstudy.onlinehomework.model.DumpCountModel"%>   
<%@page import="jp.itstudy.onlinehomework.db.DumpCountDb"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Area | Dashboard</title>
    <!-- Bootstrap core CSS -->
    <link href="css/homepage-bootstrapmin.css" rel="stylesheet">
    <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
    <link href="css/teacher.css" rel="stylesheet">

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
<!-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -->
    <section id="breadcrumb">
      <div class="container">
        <ol class="breadcrumb">
          <li class="active">欢迎工号: <%out.print(session2.getAttribute("uid")); %></li>
        </ol>
      </div>
    </section>

    <section id="main">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <div class="list-group">
              <a href="index.html" class="list-group-item active main-color-bg">
                 班级
              </a>
              <%
              	ClassModel cModel = new ClassModel();
              	ArrayList<ClassDb> classList = cModel.getClassByStatus((byte)2);
              	if(classList.size()>0){
              		for(ClassDb ci : classList){
              %>
              			<a href=# class="list-group-item"><% out.print(ci.getClassName());%><span class="badge"><% out.print(ci.getClassStatus());%></span></a>
               <%			
              		}
              	}else{
              		 %>
              		<a href=# class="list-group-item">没有班级</a>
              		<%
            
              }
                %>
              <a href=# class="list-group-item"> 班级2 <span class="badge">5</span></a>
              <a href=# class="list-group-item"> 班级3 <span class="badge">9</span></a>
            </div>

            <div class="well">
              <h4>周末班0418作业进度</h4>
            <h4>提交人数：2 </h4>
            <div class="progress">
                <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                    40%
            </div>
          </div>
            </div>
          </div>
          <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">题库</h3>
              </div>
              <div class="panel-body">
			<%
				DumpCountModel dumpCountModel = new DumpCountModel();
              //有题目的编号
              	ArrayList<DumpCountDb> dumpcountlist = dumpCountModel.getClassByTypeId();
				System.out.print(dumpcountlist.size());
              		for(DumpCountDb d : dumpcountlist){
              	%>
                <div class="col-md-3">
                  <div class="well dasWebh-boJavax">
                    <h2><%out.print(d.getNum()); %></h2>
                    <h4><%out.print(d.getHomeworkTypeName()); %></h4>
                  </div>
                </div>
              	<%	              			
              		}

              	%>           

                  </div>
              
              </div>
              </div>

              <!-- Latest Users -->
              <div class="panel-heading">
                <h3 class="panel-title">发布作业信息</h3>
              </div>
              <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">题库编号</th>
                    <th scope="col">班级</th>
                    <th scope="col">发布日期</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Java001</td>
                    <td>周末班4018</td>
                    <td>2020-06-30</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>database</td>
                    <td>班级2</td>
                    <td>2020-05-12</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Web003</td>
                    <td>周末班4018</td>
                    <td>2020-05-25</td>
                  </tr>
                </tbody>
              </table>

          </div>
        </div>
      </div>
    </section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        /* Custom */
.main-color-bg{
  background-color: #e74c3c !important;
  border-color: #c0392b !important;
  color:#ffffff !important;
}



/* Breadcrumb */
.breadcrumb{
  background:#cccccc;
  color:#333333;
}



/* Progress Bars */
.progress-bar{
  background:#333333;
  color:#ffffff;
}

.dash-box{
  text-align:center;
}
    </style>
    <!-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -->
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
