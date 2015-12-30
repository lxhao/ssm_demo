<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>用户管理 - 主页</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<!-- 
    Visual Admin Template
    http://www.templatemo.com/preview/templatemo_455_visual_admin
    -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/templatemo-style.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
				<div class="square"></div>
				<h1><s:property value="user.name"/></h1>
			</header>
			<div class="profile-photo-container">
				<img src="images/profile-photo.jpg" alt="Profile Photo"
					class="img-responsive">
				<div class="profile-photo-overlay"></div>
			</div>
			<!-- Search box -->
			<form class="templatemo-search-form" role="search">
				<div class="input-group">
					<button type="submit" class="fa fa-search"></button>
					<input type="text" class="form-control" placeholder="搜索"
						name="srch-term" id="srch-term">
				</div>
			</form>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
					<li><a href="#" class="active"><i class="fa fa-home fa-fw"></i>主页</a></li>
					<li><a href="data-visualization.jsp"><i
							class="fa fa-bar-chart fa-fw"></i>图表</a></li>
					<li><a href="data-visualization.jsp"><i
							class="fa fa-database fa-fw"></i>数据图表</a></li>
					<li><a href="maps.jsp"><i class="fa fa-map-marker fa-fw"></i>地图</a></li>
					<li><a href="userControl.jsp"><i
							class="fa fa-users fa-fw"></i>用户管理</a></li>
					<li><a href="preferences.jsp"><i
							class="fa fa-sliders fa-fw"></i>个人信息</a></li>
					<li><a href="login.jsp"><i class="fa fa-eject fa-fw"></i>登出</a></li>
				</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
						<ul class="text-uppercase">
							<li><a href="" class="active">用户面板</a></li>
							<li><a href="articles.jsp">管理文章</a></li>
							<li><a href="ArticlesAction!prePublishArticle.do">发表文章</a></li>
							<li><a href="login.jsp">登出</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div align="right"><a href="articles.jsp" >more+</a></div>
			<div class="templatemo-content-container">
				<div class="templatemo-flex-row flex-content-row">
					<div class="templatemo-content-widget white-bg col-2">
						<i class="fa fa-times"></i>
						<div class="square"></div>
						<h2 class="templatemo-inline-block"><a href="ArticlesAction!displayArticle.do?articleId=2">人生支点</a></h2>
						<hr>
						<p>
							人之所以能活着，是因为有许多支撑点，就像那火车之所以能在铁轨上前进，是因为有许多根枕木支撑着一样。 只有一根枕木的铁路是没有的，只有一个支撑点的人生也是没有的。 人生可以有很多支撑点，
							事业、升官、发财、爱情都可以成为人生某一个时期的支撑点，让你有滋有味地活下去，觉得天很蓝，草很绿，每个人的笑容都很美好。 但我要告诉你，任何一个支撑点都不可能是永恒的，事业无穷尽，
							官做大了做久了也很乏味，钱挣得太多也是个累赘，山盟海誓的情人也终会有一天离你而去。 
						</p>
						
					</div>
					<div class="templatemo-content-widget white-bg col-1 text-center">
						<i class="fa fa-times"></i>
						<h2 class="text-uppercase">Maris</h2>
						<h3 class="text-uppercase margin-bottom-10">Design Project</h3>
						<img src="images/bicycle.jpg" alt="Bicycle"
							class="img-circle img-thumbnail">
					</div>
					<div class="templatemo-content-widget white-bg col-1">
						<i class="fa fa-times"></i>
						<h2 class="text-uppercase">Dictum</h2>
						<h3 class="text-uppercase">Sedvel Erat Non</h3>
						<hr>
						<div class="progress">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%;"></div>
						</div>
						<div class="progress">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 50%;"></div>
						</div>
						<div class="progress">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%;"></div>
						</div>
					</div>
				</div>
				<div class="templatemo-flex-row flex-content-row">
					<div class="col-1">
						<div class="templatemo-content-widget orange-bg">
							<i class="fa fa-times"></i>
							<div class="media">
								<div class="media-left">
									<a href="#"> <img class="media-object img-circle"
										src="images/sunset.jpg" alt="Sunset">
									</a>
								</div>
								<div class="media-body">
									<h2 class="media-heading text-uppercase"><a href="ArticlesAction!displayArticle.do?articleId=7">你与王思聪到底差在哪？</a></h2>
									<p>
									当下，国内抱怨自己的生活、事业不如意的年轻人不占少数，暂且不说自身能力如何，在经历了一些所谓的“坎坷”之后，有些人甚至一蹶不振、自甘堕落，更甚者把这一切的原因归结到自己的出身。
									如果你仔细研究一下，不难得出一个比较可信的结论，就是即
									使你有好的出身也未必能成事。最近比较火的事件是，国民老公王思聪拿着他爸给的5亿赚了40亿，许多人知道后很“不服”，
									但是在“不服”的背后，你知道自己到底与王思聪差在什么地方了吗？? </p>
								</div>
							</div>
						</div>
						<div class="templatemo-content-widget white-bg">
							<i class="fa fa-times"></i>
							<div class="media">
								<div class="media-left">
									<a href="#"> <img class="media-object img-circle"
										src="images/sunset.jpg" alt="Sunset">
									</a>
								</div>
								<div class="media-body">
									<h2 class="media-heading text-uppercase"><a href="ArticlesAction!displayArticle.do?articleId=10">相思</a></h2>
									<p>千年不见孤， 　　 　　 见面泪湿巾。 　　 　 　谁知静中守， 　　 　　 古来多穿衣。 　　 　　 谁知相思苦， 　　 　　 世上无良医。</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-1">
						<div
							class="panel panel-default templatemo-content-widget white-bg no-padding templatemo-overflow-hidden">
							<i class="fa fa-times"></i>
							<div class="panel-heading templatemo-position-relative">
								<h2 class="text-uppercase">User Table</h2>
							</div>
							<div class="table-responsive">
								<table class="table table-striped table-bordered">
									<thead>
										<tr>
											<td>No.</td>
											<td>First Name</td>
											<td>Last Name</td>
											<td>Username</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1.</td>
											<td>John</td>
											<td>Smith</td>
											<td>@jS</td>
										</tr>
										<tr>
											<td>2.</td>
											<td>Bill</td>
											<td>Jones</td>
											<td>@bJ</td>
										</tr>
										<tr>
											<td>3.</td>
											<td>Mary</td>
											<td>James</td>
											<td>@mJ</td>
										</tr>
										<tr>
											<td>4.</td>
											<td>Steve</td>
											<td>Bride</td>
											<td>@sB</td>
										</tr>
										<tr>
											<td>5.</td>
											<td>Paul</td>
											<td>Richard</td>
											<td>@pR</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<!-- Second row ends -->
				<div
					class="templatemo-flex-row flex-content-row templatemo-overflow-hidden">
					<!-- overflow hidden for iPad mini landscape view-->
					<div class="col-1 templatemo-overflow-hidden">
						<div
							class="templatemo-content-widget white-bg templatemo-overflow-hidden">
							<i class="fa fa-times"></i>
							<div class="templatemo-flex-row flex-content-row">
								<div class="col-1 col-lg-6 col-md-12">
									<h2 class="text-center">
										Modular<span class="badge">new</span>
									</h2>
									<div id="pie_chart_div" class="templatemo-chart"></div>
									<!-- Pie chart div -->
								</div>
								<div class="col-1 col-lg-6 col-md-12">
									<h2 class="text-center">
										Interactive<span class="badge">new</span>
									</h2>
									<div id="bar_chart_div" class="templatemo-chart"></div>
									<!-- Bar chart div -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<footer class="text-right">
					<p>
						Copyright &copy; 2084 Company Name | Designed by <a
							href="http://www.templatemo.com" target="_parent">templatemo</a>
					</p>
				</footer>
			</div>
		</div>
	</div>

	<!-- JS -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script src="js/jquery-migrate-1.2.1.min.js"></script>
	<!--  jQuery Migrate Plugin -->
	<script src="https://www.google.com/jsapi"></script>
	<!-- Google Chart -->
	<script>
      /* Google Chart 
      -------------------------------------------------------------------*/
      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart); 
      
      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

          // Create the data table.
          var data = new google.visualization.DataTable();
          data.addColumn('string', 'Topping');
          data.addColumn('number', 'Slices');
          data.addRows([
            ['Mushrooms', 3],
            ['Onions', 1],
            ['Olives', 1],
            ['Zucchini', 1],
            ['Pepperoni', 2]
          ]);

          // Set chart options
          var options = {'title':'How Much Pizza I Ate Last Night'};

          // Instantiate and draw our chart, passing in some options.
          var pieChart = new google.visualization.PieChart(document.getElementById('pie_chart_div'));
          pieChart.draw(data, options);

          var barChart = new google.visualization.BarChart(document.getElementById('bar_chart_div'));
          barChart.draw(data, options);
      }

      $(document).ready(function(){
        if($.browser.mozilla) {
          //refresh page on browser resize
          // http://www.sitepoint.com/jquery-refresh-page-browser-resize/
          $(window).bind('resize', function(e)
          {
            if (window.RT) clearTimeout(window.RT);
            window.RT = setTimeout(function()
            {
              this.location.reload(false); /* false to get page from cache */
            }, 200);
          });      
        } else {
          $(window).resize(function(){
            drawChart();
          });  
        }   
      });
      
    </script>
	<script type="text/javascript" src="js/templatemo-script.js"></script>
	<!-- Templatemo Script -->

</body>
</html>