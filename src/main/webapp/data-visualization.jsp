<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Visual Admin Dashboard - Data Visualization</title>
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

<!--.jsp5 shim and Respond.js for IE8 support of.jsp5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com.jsp5shiv/3.7.2.jsp5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<!-- Left column -->
	<div class="templatemo-flex-row">
		<div class="templatemo-sidebar">
			<header class="templatemo-site-header">
				<div class="square"></div>
				<h1>Visual Admin</h1>
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
					<input type="text" class="form-control" placeholder="Search"
						name="srch-term" id="srch-term">
				</div>
			</form>
			<div class="mobile-menu-icon">
				<i class="fa fa-bars"></i>
			</div>
			<nav class="templatemo-left-nav">
				<ul>
					<li><a href="index.jsp"><i class="fa fa-home fa-fw"></i>Dashboard</a></li>
					<li><a href="#"><i class="fa fa-bar-chart fa-fw"></i>Charts</a></li>
					<li><a href="#" class="active"><i
							class="fa fa-database fa-fw"></i>Data Visualization</a></li>
					<li><a href="maps.jsp"><i class="fa fa-map-marker fa-fw"></i>Maps</a></li>
					<li><a href="manage-users.jsp"><i
							class="fa fa-users fa-fw"></i>Manage Users</a></li>
					<li><a href="preferences.jsp"><i
							class="fa fa-sliders fa-fw"></i>Preferences</a></li>
					<li><a href="login.jsp"><i class="fa fa-eject fa-fw"></i>Sign
							Out</a></li>
				</ul>
			</nav>
		</div>
		<!-- Main content -->
		<div class="templatemo-content col-1 light-gray-bg">
			<div class="templatemo-top-nav-container">
				<div class="row">
					<nav class="templatemo-top-nav col-lg-12 col-md-12">
						<ul class="text-uppercase">
							<li><a href="" class="active">Admin panel</a></li>
							<li><a href="">Dashboard</a></li>
							<li><a href="">Overview</a></li>
							<li><a href="login.jsp">Sign in form</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div class="templatemo-content-container">
				<div class="templatemo-content-widget white-bg">
					<h2 class="margin-bottom-10">Data Visualization</h2>
					<p>
						Credit goes to <a
							href="https://google-developers.appspot.com/chart/"
							target="_parent">Google Charts</a>
					</p>
					<div class="panel panel-default no-border">
						<div class="panel-heading border-radius-10">
							<h2>Gauge</h2>
						</div>
						<div class="panel-body">
							<div
								class="templatemo-flex-row flex-content-row margin-bottom-30">
								<div class="col-1">
									<div id="gauge_div" class="templatemo-chart"></div>
									<h3 class="text-center margin-bottom-5">Computer Resources</h3>
									<p class="text-center">Curabitur</p>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default no-border">
						<div class="panel-heading border-radius-10">
							<h2>Timeline</h2>
						</div>
						<div class="panel-body">
							<div class="templatemo-flex-row flex-content-row">
								<div class="col-1">
									<div id="timeline_div" class="templatemo-chart"></div>
									<h3 class="text-center margin-bottom-5">Conference
										Schedule</h3>
									<p class="text-center">Lorem Ipsum</p>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default no-border">
						<div class="panel-heading border-radius-10">
							<h2>Area Chart</h2>
						</div>
						<div class="panel-body">
							<div class="templatemo-flex-row flex-content-row">
								<div class="col-1">
									<div id="area_chart_div" class="templatemo-chart"></div>
									<h3 class="text-center margin-bottom-5">Company
										Performance</h3>
									<p class="text-center">Fusce mi lacus</p>
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
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
	<!-- jQuery -->
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
	<!--  jQuery Migrate Plugin -->
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
	<!-- Google Chart -->
	<script>

      var gaugeChart;
      var gaugeData;
      var gaugeOptions;
      var timelineChart;
      var timelineDataTable;
      var timelineOptions;
      var areaData;
      var areaOptions;
      var areaChart;

      /* Gauage 
      --------------------------------------------------*/
      google.load("visualization", "1", {packages:["gauge"]});
      google.setOnLoadCallback(drawGauge);
      google.load("visualization", "1", {packages:["timeline"]});
      google.setOnLoadCallback(drawTimeline);
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);

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
            drawCharts();
          });  
        }   
      });

      function drawGauge() {

        gaugeData = google.visualization.arrayToDataTable([
          ['Label', 'Value'],
          ['Memory', 80],
          ['CPU', 55],
          ['Network', 68]
        ]);

        gaugeOptions = {
          redFrom: 90, redTo: 100,
          yellowFrom:75, yellowTo: 90,
          minorTicks: 5
        };

        gaugeChart = new google.visualization.Gauge(document.getElementById('gauge_div'));
        gaugeChart.draw(gaugeData, gaugeOptions);

        setInterval(function() {
          gaugeData.setValue(0, 1, 40 + Math.round(60 * Math.random()));
          gaugeChart.draw(gaugeData, gaugeOptions);
        }, 13000);
        setInterval(function() {
          gaugeData.setValue(1, 1, 40 + Math.round(60 * Math.random()));
          gaugeChart.draw(gaugeData, gaugeOptions);
        }, 5000);
        setInterval(function() {
          gaugeData.setValue(2, 1, 60 + Math.round(20 * Math.random()));
          gaugeChart.draw(gaugeData, gaugeOptions);
        }, 26000);        
      } // End function drawGauage

      /* Timeline
      --------------------------------------------------*/
      function drawTimeline() {
        var container = document.getElementById('timeline_div');
        timelineChart = new google.visualization.Timeline(container);
        timelineDataTable = new google.visualization.DataTable();
        timelineDataTable.addColumn({ type: 'string', id: 'Room' });
        timelineDataTable.addColumn({ type: 'string', id: 'Name' });
        timelineDataTable.addColumn({ type: 'date', id: 'Start' });
        timelineDataTable.addColumn({ type: 'date', id: 'End' });
        timelineDataTable.addRows([
          [ 'Magnolia Room',  'CSS Fundamentals',    new Date(0,0,0,12,0,0),  new Date(0,0,0,14,0,0) ],
          [ 'Magnolia Room',  'Intro JavaScript',    new Date(0,0,0,14,30,0), new Date(0,0,0,16,0,0) ],
          [ 'Magnolia Room',  'Advanced JavaScript', new Date(0,0,0,16,30,0), new Date(0,0,0,19,0,0) ],
          [ 'Gladiolus Room', 'Intermediate Perl',   new Date(0,0,0,12,30,0), new Date(0,0,0,14,0,0) ],
          [ 'Gladiolus Room', 'Advanced Perl',       new Date(0,0,0,14,30,0), new Date(0,0,0,16,0,0) ],
          [ 'Gladiolus Room', 'Applied Perl',        new Date(0,0,0,16,30,0), new Date(0,0,0,18,0,0) ],
          [ 'Petunia Room',   'Google Charts',       new Date(0,0,0,12,30,0), new Date(0,0,0,14,0,0) ],
          [ 'Petunia Room',   'Closure',             new Date(0,0,0,14,30,0), new Date(0,0,0,16,0,0) ],
          [ 'Petunia Room',   'App Engine',          new Date(0,0,0,16,30,0), new Date(0,0,0,18,30,0) ]]);

        timelineOptions = {
          timeline: { colorByRowLabel: true },
          backgroundColor: '#ffd'
        };

        timelineChart.draw(timelineDataTable, timelineOptions);
      } // End function drawTimeline

      /* Area Chart 
      --------------------------------------------------*/
      function drawChart() {
        areaData = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses'],
          ['2013',  1000,      400],
          ['2014',  1170,      460],
          ['2015',  660,       1120],
          ['2016',  1030,      540]
        ]);

        areaOptions = {
          title: 'Company Performance',
          hAxis: {title: 'Year',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0}
        };

        areaChart = new google.visualization.AreaChart(document.getElementById('area_chart_div'));
        areaChart.draw(areaData, areaOptions);
      } // End function drawChart

      function drawCharts () {
          gaugeChart.draw(gaugeData, gaugeOptions);
          timelineChart.draw(timelineDataTable, timelineOptions);
          areaChart.draw(areaData, areaOptions);
      }

    </script>
	<script type="text/javascript" src="js/templatemo-script.js"></script>
	<!-- Templatemo Script -->
</body>
<html>