<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../../include.inc.jsp" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Cut Off Management</title>
		<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<script type="text/javascript">
	$(function() {
		$(".knob").knob();
	});
</script>

</head>
	<body class=" theme-blue">

		<!-- Demo page code -->

		<script type="text/javascript">
	$(function() {
		var match = document.cookie.match(new RegExp('color=([^;]+)'));
		if (match)
			var color = match[1];
		if (color) {
			$('body').removeClass(function(index, css) {
				return (css.match(/\btheme-\S+/g) || []).join(' ')
			})
			$('body').addClass('theme-' + color);
		}

		$('[data-popover="true"]').popover( {
			html : true
		});

	});
</script>
		<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.navbar-default .navbar-brand,.navbar-default .navbar-brand:hover {
	color: #fff;
}
</style>

		<script type="text/javascript">
	$(function() {
		var uls = $('.sidebar-nav > ul > *').clone();
		uls.addClass('visible-xs');
		$('#main-menu').append(uls.clone());
	});
</script>
<script type="text/javascript">
	function loadHtml(actionUrl){
		jQuery("#centercontent").html("");
		jQuery("#centercontent").load(actionUrl);
	}
</script>

		<div class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="" href="/home.htm"><span class="navbar-brand"><span
						class="fa fa-paper-plane"></span> Cut Off Management </span>
				</a>
			</div>

			<div class="navbar-collapse collapse" style="height: 1px;">
				<ul id="main-menu" class="nav navbar-nav navbar-right">
					<li class="dropdown hidden-xs">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span
							class="glyphicon glyphicon-user padding-right-small"
							style="position: relative; top: 3px;"></span> ${userInfo.userName } <i
							class="fa fa-caret-down"></i> </a>

						<ul class="dropdown-menu">
							<li>
								<a tabindex="-1" href="/showLogin.htm">Logout</a>
							</li>
						</ul>
					</li>
				</ul>

			</div>
		</div>
		<div class="copyrights">
			Designed by
			<a href="/showLogin.htm" title="liu">liufanhui</a>
		</div>

		<div class="sidebar-nav">
			<ul>
				<li>
					<a href="#" data-target=".dashboard-menu" class="nav-header"
						data-toggle="collapse"><i class="fa fa-fw fa-dashboard"></i>
						首页<i class="fa fa-collapse"></i>
					</a>
				</li>
				<li>
					<ul class="dashboard-menu nav nav-list collapse in">
						<li>
							<a href="#" onclick="loadHtml('/showUserInfo.htm')"><span class="fa fa-caret-right"></span>
								用户信息</a>
						</li>
						<li>
							<a href="#" onclick="loadHtml('/showLessons.htm')"><span class="fa fa-caret-right"></span>
								课程列表</a>
						</li>
						<li>
							<a href="#" onclick="loadHtml('/showCalendar.htm')"><span class="fa fa-caret-right"></span>
								日程表</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>

		<div class="content" id="centercontent">
			<div class="header">
				<div class="stats">
					<p class="stat">
						<span class="label label-info">5</span> Tickets
					</p>
					<p class="stat">
						<span class="label label-success">27</span> Tasks
					</p>
					<p class="stat">
						<span class="label label-danger">15</span> Overdue
					</p>
				</div>

				<h1 class="page-title">
					首页
				</h1>
				<ul class="breadcrumb">
					<li>
						<a href="index.html">Home</a>
					</li>
					<li class="active">
						首页
					</li>
				</ul>

			</div>
			<div class="main-content">
				<div class="row">
					<div class="col-sm-6 col-md-12">
						<div class="panel panel-default">
							<a href="#widget1container" class="panel-heading"
								data-toggle="collapse">公告 </a>
							<div id="widget1container" class="panel-body collapse in">
								<h2>
									Welcome to Cut Off Management
								</h2>
								<p>
									This template was developed with
									<a href="http://middlemanapp.com/" target="_blank">Middleman</a>
									and includes .erb layouts and views.
								</p>
								<p>
									All of the views you see here (sign in, sign up, users, etc)
									are already split up so you don't have to waste your time doing
									it yourself!
								</p>
								<p>
									The layout.erb file includes the header, footer, and side
									navigation and all of the views are broken out into their own
									files.
								</p>
								<p>
									If you aren't using Ruby, there is also a set of plain HTML
									files for each page, just like you would expect.
								</p>
							</div>
						</div>
					</div>
				</div>				

				<footer>
					<hr>
					<p class="pull-right">
						Designed by
						<a href="/home.htm">liu</a>
					</p>
					<p>
						© 2016
						<a href="/home.htm">TeachersManager</a>
					</p>
				</footer>
			</div>
		</div>
		
		<script type="text/javascript">
	$("[rel=tooltip]").tooltip();
	$(function() {
		$('.demo-cancel-click').click(function() {
			return false;
		});
	});
</script>
	</body>
</html>