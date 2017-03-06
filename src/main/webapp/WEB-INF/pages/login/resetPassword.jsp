<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../../include.inc.jsp"%>
<%@ page isELIgnored="false"%>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Cut Off Management</title>
		<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

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


		<div class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<a class="" href="/showLogin.htm"><span class="navbar-brand"><span
						class="fa fa-paper-plane"></span> Cut Off Management </span>
				</a>
			</div>

			<div class="navbar-collapse collapse" style="height: 1px;">

			</div>
		</div>



		<div class="dialog">
			<div class="panel panel-default">
				<p class="panel-heading no-collapse">
					Reset your password
				</p>
				<div class="panel-body">
					<form>
						<div class="form-group">
							<label>
								Email Address
							</label>
							<input type="text" class="form-control span12 form-control">
						</div>
						<a href="#" class="btn btn-primary pull-right">Reset Password</a>
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
			<a href="/showLogin.htm" style="font-size: .75em; margin-top: .25em;">Sign
				in to your account</a>
		</div>



		<script src="lib/bootstrap/js/bootstrap.js"></script>
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
