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
            if(match) var color = match[1];
            if(color) {
                $('body').removeClass(function (index, css) {
                    return (css.match (/\btheme-\S+/g) || []).join(' ')
                })
                $('body').addClass('theme-' + color);
            }

            $('[data-popover="true"]').popover({html: true});
          	//捕获登陆信息
  			var resultCode = "${resultCode}"==""?1:parseInt(${resultCode}) ;//登陆返回结果
  			var message = '${message}';//登陆返回信息
  			if(resultCode<1){//登录失败
				alert(message) ;
  			}
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
						class="fa fa-paper-plane"></span> Cut Off Management</span>
				</a>
			</div>

			<div class="navbar-collapse collapse" style="height: 1px;">

			</div>
		</div>



		<div class="dialog">
			<div class="panel panel-default">
				<p class="panel-heading no-collapse">
					Sign In
				</p>
				<div class="panel-body">
					<form action="login.htm">
						<div class="form-group">
							<label>
								Username
							</label>
							<input type="text" required="required" name="userName"
								class="form-control span12">
						</div>
						<div class="form-group">
							<label>
								Password
							</label>
							<input type="password" required="required" name="password"
								class="form-control span12 form-control required">
						</div>
						<button class="submit btn btn-primary pull-right">
							Sign In
						</button>
						<label class="remember-me">
							<input type="checkbox">
							Remember me
						</label>
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
			<p class="pull-right" style="">
				<a href="/showSignUp.htm" style="font-size: .75em; margin-top: .25em;">No account?</a>
			</p>
			<p>
				<a href="/showResetPassword.htm">Forgot your password?</a>
			</p>
		</div>



		<script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>


	</body>
</html>
