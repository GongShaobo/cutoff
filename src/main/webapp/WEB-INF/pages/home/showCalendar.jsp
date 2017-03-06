<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../../include.inc.jsp"%>
<%@ page isELIgnored="false"%>
<html lang="en">
	<head>
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
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
            
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

		<div>
			<div class="header">
				<div class="stats">
					<p class="stat">
						<span class="label label-info">10</span> Users
					</p>
					<p class="stat">
						<span class="label label-success">19</span> Events
					</p>
					<p class="stat">
						<span class="label label-danger">12</span> Calendars
					</p>
				</div>

				<h1 class="page-title">
					Calendar
				</h1>
				<ul class="breadcrumb">
					<li>
						<a href="index.html">Home</a>
					</li>
					<li class="active">
						Calendar
					</li>
				</ul>

			</div>
			<div class="main-content">

				<script type='text/javascript'>

	$(document).ready(function() {

		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		$('#calendar').fullCalendar({
            header: false,
		});
        $('#calendar').fullCalendar('next');

	});

</script>
<style type='text/css'>
#calendar {
	width: 100%;
	margin: 0 auto;
}
</style>



				<div style="float: right; margin-bottom: 1em;">
					<a href="#" class="btn btn-primary"><span
						class="fa fa-plus-square-o"></span> New Event</a>
				</div>
				<h3>
					Upcoming Events
				</h3>
				<div id='calendar'></div>


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
	</body>
</html>
