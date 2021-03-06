<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="../../include.inc.jsp"%>
<%@ page isELIgnored="false"%>

<html lang="en">
	<head>
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
	</head>
	<body class=" theme-blue">
		<div>
			<div class="header">

				<h1 class="page-title">
					Edit User
				</h1>
				<ul class="breadcrumb">
					<li>
						<a href="index.html">Home</a>
					</li>
					<li>
						<a href="users.html">Users</a>
					</li>
					<li class="active">
						jsmith
					</li>
				</ul>

			</div>
			<div class="main-content">

				<ul class="nav nav-tabs">
					<li class="active">
						<a href="#home" data-toggle="tab">Profile</a>
					</li>
					<li>
						<a href="#profile" data-toggle="tab">Password</a>
					</li>
				</ul>

				<div class="row">
					<div class="col-md-4">
						<br>
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active in" id="home">
								<form id="tab">
									<div class="form-group">
										<label>
											Username
										</label>
										<input type="text" value="jsmith" class="form-control">
									</div>
									<div class="form-group">
										<label>
											First Name
										</label>
										<input type="text" value="John" class="form-control">
									</div>
									<div class="form-group">
										<label>
											Last Name
										</label>
										<input type="text" value="Smith" class="form-control">
									</div>
									<div class="form-group">
										<label>
											Email
										</label>
										<input type="text" value="jsmith@yourcompany.com"
											class="form-control">
									</div>

									<div class="form-group">
										<label>
											Address
										</label>
										<textarea value="Smith" rows="3" class="form-control">2817 S 49thApt 314San Jose, CA 95101</textarea>
									</div>

									<div class="form-group">
										<label>
											Time Zone
										</label>
										<select name="DropDownTimezone" id="DropDownTimezone"
											class="form-control">
											<option value="-12.0">
												(GMT -12:00) Eniwetok, Kwajalein
											</option>
											<option value="-11.0">
												(GMT -11:00) Midway Island, Samoa
											</option>
											<option value="-10.0">
												(GMT -10:00) Hawaii
											</option>
											<option value="-9.0">
												(GMT -9:00) Alaska
											</option>
											<option selected="selected" value="-8.0">
												(GMT -8:00) Pacific Time (US &amp; Canada)
											</option>
											<option value="-7.0">
												(GMT -7:00) Mountain Time (US &amp; Canada)
											</option>
											<option value="-6.0">
												(GMT -6:00) Central Time (US &amp; Canada), Mexico City
											</option>
											<option value="-5.0">
												(GMT -5:00) Eastern Time (US &amp; Canada), Bogota, Lima
											</option>
											<option value="-4.0">
												(GMT -4:00) Atlantic Time (Canada), Caracas, La Paz
											</option>
											<option value="-3.5">
												(GMT -3:30) Newfoundland
											</option>
											<option value="-3.0">
												(GMT -3:00) Brazil, Buenos Aires, Georgetown
											</option>
											<option value="-2.0">
												(GMT -2:00) Mid-Atlantic
											</option>
											<option value="-1.0">
												(GMT -1:00 hour) Azores, Cape Verde Islands
											</option>
											<option value="0.0">
												(GMT) Western Europe Time, London, Lisbon, Casablanca
											</option>
											<option value="1.0">
												(GMT +1:00 hour) Brussels, Copenhagen, Madrid, Paris
											</option>
											<option value="2.0">
												(GMT +2:00) Kaliningrad, South Africa
											</option>
											<option value="3.0">
												(GMT +3:00) Baghdad, Riyadh, Moscow, St. Petersburg
											</option>
											<option value="3.5">
												(GMT +3:30) Tehran
											</option>
											<option value="4.0">
												(GMT +4:00) Abu Dhabi, Muscat, Baku, Tbilisi
											</option>
											<option value="4.5">
												(GMT +4:30) Kabul
											</option>
											<option value="5.0">
												(GMT +5:00) Ekaterinburg, Islamabad, Karachi, Tashkent
											</option>
											<option value="5.5">
												(GMT +5:30) Bombay, Calcutta, Madras, New Delhi
											</option>
											<option value="5.75">
												(GMT +5:45) Kathmandu
											</option>
											<option value="6.0">
												(GMT +6:00) Almaty, Dhaka, Colombo
											</option>
											<option value="7.0">
												(GMT +7:00) Bangkok, Hanoi, Jakarta
											</option>
											<option value="8.0">
												(GMT +8:00) Beijing, Perth, Singapore, Hong Kong
											</option>
											<option value="9.0">
												(GMT +9:00) Tokyo, Seoul, Osaka, Sapporo, Yakutsk
											</option>
											<option value="9.5">
												(GMT +9:30) Adelaide, Darwin
											</option>
											<option value="10.0">
												(GMT +10:00) Eastern Australia, Guam, Vladivostok
											</option>
											<option value="11.0">
												(GMT +11:00) Magadan, Solomon Islands, New Caledonia
											</option>
											<option value="12.0">
												(GMT +12:00) Auckland, Wellington, Fiji, Kamchatka
											</option>
										</select>
									</div>
								</form>
							</div>

							<div class="tab-pane fade" id="profile">

								<form id="tab2">
									<div class="form-group">
										<label>
											New Password
										</label>
										<input type="password" class="form-control">
									</div>
									<div>
										<button class="btn btn-primary">
											Update
										</button>
									</div>
								</form>
							</div>
						</div>

						<div class="btn-toolbar list-toolbar">
							<button class="btn btn-primary">
								<i class="fa fa-save"></i> Save
							</button>
							<a href="#myModal" data-toggle="modal" class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>

				<div class="modal small fade" id="myModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									×
								</button>
								<h3 id="myModalLabel">
									Delete Confirmation
								</h3>
							</div>
							<div class="modal-body">

								<p class="error-text">
									<i class="fa fa-warning modal-icon"></i>Are you sure you want
									to delete the user?
								</p>
							</div>
							<div class="modal-footer">
								<button class="btn btn-default" data-dismiss="modal"
									aria-hidden="true">
									Cancel
								</button>
								<button class="btn btn-danger" data-dismiss="modal">
									Delete
								</button>
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
	</body>
</html>
