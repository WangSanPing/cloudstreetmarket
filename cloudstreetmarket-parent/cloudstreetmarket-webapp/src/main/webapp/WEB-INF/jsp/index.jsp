<%@ page contentType="text/html; charset=ISO-8859-1" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- start: Meta -->
<meta charset="utf-8">
<title>Spring MVC: CloudST Market</title>
<meta name="description"
	content="Spring MVC CookBook: Cloud Street Market" />
<meta name="keywords"
	content="spring mvc, cookbook, packt publishing, microservices, angular.js" />
<meta name="author" content="Your name" />
<!-- end: Meta -->

<!-- start: Mobile Specific -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- end: Mobile Specific -->

<!-- start: Facebook Open Graph -->
<meta property="og:title" content="" />
<meta property="og:description" content="" />
<meta property="og:type" content="" />
<meta property="og:url" content="" />
<meta property="og:image" content="" />
<!-- end: Facebook Open Graph -->

<!-- start: CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Droid+Sans:400,700">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Droid+Serif">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Boogaloo">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Economica:700,400italic">
<link rel="stylesheet" type="text/css" href="css/FeedEk.css" />
<!-- end: CSS -->

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

	<!--start: Wrapper -->
	<div id="wrapper">

		<!--start: Container -->
		<div class="container">

			<!--start: Header -->
			<header>

				<!--start: Row -->
				<div class="row">

					<!--start: Logo -->
					<div class="logo span4">
						CLOUD<span class="sub">ST</span><span>Market</span>
					</div>
					<!--end: Logo -->

					<!--start: Social Links -->
					<div class="span8">
						<div id="social-links">
							<ul class="social-small-grid">
								<li>
									<div class="social-small-item">
										<div class="social-small-info-wrap">
											<div class="social-small-info">
												<div class="social-small-info-front social-small-twitter">
													<a href="http://twitter.com"></a>
												</div>
												<div
													class="social-small-info-back social-small-twitter-hover">
													<a href="http://twitter.com"></a>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="social-small-item">
										<div class="social-small-info-wrap">
											<div class="social-small-info">
												<div class="social-small-info-front social-small-facebook">
													<a href="http://facebook.com"></a>
												</div>
												<div
													class="social-small-info-back social-small-facebook-hover">
													<a href="http://facebook.com"></a>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="social-small-item">
										<div class="social-small-info-wrap">
											<div class="social-small-info">
												<div class="social-small-info-front social-small-dribbble">
													<a href="http://dribbble.com"></a>
												</div>
												<div
													class="social-small-info-back social-small-dribbble-hover">
													<a href="http://dribbble.com"></a>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="social-small-item">
										<div class="social-small-info-wrap">
											<div class="social-small-info">
												<div class="social-small-info-front social-small-flickr">
													<a href="http://flickr.com"></a>
												</div>
												<div
													class="social-small-info-back social-small-flickr-hover">
													<a href="http://flickr.com"></a>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<!--end: Social Links -->

				</div>
				<!--end: Row -->

			</header>
			<!--end: Header-->

			<!--start: Navigation-->
			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<div class="container">
						<a class="btn btn-navbar" data-toggle="collapse"
							data-target=".nav-collapse"> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
						</a>
						<div class="nav-collapse collapse">
							<ul class="nav">
								<li class="active"><a href="index">Home</a></li>
								<li><a href="markets">Prices and markets</a></li>
								<li><a href="community">Community</a></li>
								<li><a href="sources">Sources</a></li>
								<li><a href="about">About</a></li>
								<li><a href="contact">Contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--end: Navigation-->

		</div>
		<!--end: Container-->

		<!--start: Container -->
		<div class="container">

			<!-- start: Row -->
			<div class="row">
				<div class="span12">
					<div class="hero-unit hidden-phone">
						<p>Welcome to CloudStreet Market, the educational platform.</p>
					</div>
				</div>
				<div class="span5">
					<div id='landingGraphContainer'>
						<div class="morrisTitle">
							<fmt:formatDate value="${dailyMarketActivity.dateSnapshot }"
								pattern="yyyy-MM-dd" />
						</div>
						<select class="form-control centeredElementBox">
							<c:forEach var="item" items="${dailyMarketsActivity }">
								<option value=" ${item.marketId }">
									${item.marketShortName }</option>
							</c:forEach>
						</select>
					</div>

					<!--
                        	作者：wx
                        	时间：2017-11-08
                        	描述：市场主体部分
                        -->
					<div id=tableMarketPrices>
						<table
							class="table table-hover table-condensed table-bordered table-striped">
							<thead>
								<tr>
									<th>Index</th>
									<th>Value</th>
									<th>Change</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<c:forEach var="market" items="${dailyMarketsActivity }">
										<tr>
											<td>${market.marketShortName}</td>
											<td style="text-align: right;"><fmt:formatNumber
													type="number" maxFractionDigits="3"
													value="${ market.latestValue }"></fmt:formatNumber></td>
											<c:choose>
												<c:when test="${market.latestChange >= 0 }">
													<c:set var="textStyle" scope="page" value="text-success"></c:set>
												</c:when>
												<c:otherwise>
													<c:set var="textStyle" scope="page" value="text-error">
													</c:set>
												</c:otherwise>
											</c:choose>
											<td class='${textStyle}' style="text-align: right;"><b>
													<fmt:formatNumber type="percent" maxFractionDigits="2"
														value="${ market.latestChange }">
													</fmt:formatNumber>
											</b></td>
										</tr>
									</c:forEach>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div id="containerCommunity" class="span7">
					<div id="divRss3">
						<ul class="feedEkList">
							<c:forEach var="activity" items="${recentUserActivity }">
								<c:choose>
									<c:when test="${activity.userAction == 'BUY' }">
										<c:set var="icoUpDown" scope="page"
											value="ico-up-arrowactionBuy" />
									</c:when>
									<c:otherwise>
										<c:set var="icoUpDown" scope="page"
											value="ico-down-arrowactionSell" />
									</c:otherwise>
								</c:choose>
								<c:set var="defaultProfileImage" scope="page" value=""></c:set>
								<c:if test="${activity.urlProfilePicture == null }">
									<c:set var="defaultProfileImage" scope="page" value="ico-user" />
								</c:if>
								<li>
									<div class="itemTitle">
										<div class="listUserIco ${defaultProfileImage}">
											<c:if test="${activity.urlProfilePicture != null}">
												<img src='${activity.urlProfilePicture}' />
											</c:if>
										</div>
										<span class="ico-white ${icoUpDown} listActionIco"></span> <a
											href="#">${activity.userName}</a> at
										$${activity.userAction.presentTense} ${activity.amount} <a
											href="#">${activity.valueShortId}</a> at $${activity.price}
										<p class="itemDate">
											<fmt:formatDate value="${activity.date }"
												pattern="dd/MM/yyyy hh:mm aaa" />
										</p>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<!-- end: Row -->

			<hr>

			<!-- start Clients List -->
			<div class="clients-carousel">

				<ul class="slides clients">
					<li><img src="img/logos/1.png" alt="" /></li>
					<li><img src="img/logos/2.png" alt="" /></li>
					<li><img src="img/logos/3.png" alt="" /></li>
					<li><img src="img/logos/4.png" alt="" /></li>
					<li><img src="img/logos/5.png" alt="" /></li>
					<li><img src="img/logos/6.png" alt="" /></li>
					<li><img src="img/logos/7.png" alt="" /></li>
					<li><img src="img/logos/8.png" alt="" /></li>
					<li><img src="img/logos/9.png" alt="" /></li>
					<li><img src="img/logos/10.png" alt="" /></li>
				</ul>

			</div>
			<!-- end Clients List -->
		</div>
		<!--end: Container-->

		<!--start: Container -->
		<div class="container">

			<!-- start: Footer Menu -->
			<div id="footer-menu" class="hidden-tablet hidden-phone">

				<!-- start: Container -->
				<div class="container">

					<!-- start: Row -->
					<div class="row">

						<!-- start: Footer Menu Logo -->
						<div class="span1">
							<div class="logoSmall">
								CLOUD<span class="sub">ST</span><span>M!</span>
							</div>
						</div>
						<!-- end: Footer Menu Logo -->

						<!-- start: Footer Menu Links-->
						<div class="span10">

							<div id="footer-menu-links">

								<ul id="footer-nav" style="margin-left: 35pt;">

									<li class="active"><a href="index">Home</a></li>
									<li><a href="markets">Prices and markets</a></li>
									<li><a href="community">Community</a></li>
									<li><a href="sources">Sources</a></li>
									<li><a href="about">About</a></li>
									<li><a href="contact">Contact</a></li>

								</ul>

							</div>

						</div>
						<!-- end: Footer Menu Links-->

						<!-- start: Footer Menu Back To Top -->
						<div class="span1">

							<div id="footer-menu-back-to-top">
								<a href="#"></a>
							</div>

						</div>
						<!-- end: Footer Menu Back To Top -->

					</div>
					<!-- end: Row -->

				</div>
				<!-- end: Container  -->

			</div>
			<!-- end: Footer Menu -->

			<!-- start: Footer -->
			<div id="footer">

				<!-- start: Container -->
				<div class="container">

					<!-- start: Row -->
					<div class="row">

						<!-- start: About -->
						<div class="span3">

							<h3>About Us</h3>
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
								aliquam erat volutpat. Ut wisi enim ad minim veniam, quis
								nostrud exerci tation ullamcorper suscipit lobortis nisl ut
								aliquip ex ea commodo consequat.</p>

						</div>
						<!-- end: About -->

						<!-- start: Leaderboard -->
						<div class="span3">

							<h3>Leaderboard</h3>
							<div class="flickr-widget">
								<script type="text/javascript" src=""></script>
								<div class="clear"></div>
							</div>

						</div>
						<!-- end: Leaderboard-->

						<div class="span6">

							<!-- start: Follow Us -->
							<h3>Follow Us!</h3>
							<ul class="social-grid">
								<li>
									<div class="social-item">
										<div class="social-info-wrap">
											<div class="social-info">
												<div class="social-info-front social-twitter">
													<a href="http://twitter.com"></a>
												</div>
												<div class="social-info-back social-twitter-hover">
													<a href="http://twitter.com"></a>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="social-item">
										<div class="social-info-wrap">
											<div class="social-info">
												<div class="social-info-front social-facebook">
													<a href="http://facebook.com"></a>
												</div>
												<div class="social-info-back social-facebook-hover">
													<a href="http://facebook.com"></a>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="social-item">
										<div class="social-info-wrap">
											<div class="social-info">
												<div class="social-info-front social-dribbble">
													<a href="http://dribbble.com"></a>
												</div>
												<div class="social-info-back social-dribbble-hover">
													<a href="http://dribbble.com"></a>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="social-item">
										<div class="social-info-wrap">
											<div class="social-info">
												<div class="social-info-front social-flickr">
													<a href="http://flickr.com"></a>
												</div>
												<div class="social-info-back social-flickr-hover">
													<a href="http://flickr.com"></a>
												</div>
											</div>
										</div>
									</div>
								</li>
							</ul>
							<!-- end: Follow Us -->

							<!-- start: Newsletter -->
							<form id="newsletter">
								<h3>Newsletter</h3>
								<p>Please leave us your email</p>
								<label for="newsletter_input">@:</label> <input type="text"
									id="newsletter_input" /> <input type="submit"
									id="newsletter_submit" value="submit">
							</form>
							<!-- end: Newsletter -->

						</div>

					</div>
					<!-- end: Row -->

				</div>
				<!-- end: Container  -->

			</div>
			<!-- end: Footer -->

		</div>
		<!-- end: Container  -->

	</div>
	<!-- end: Wrapper  -->

	<!-- start: Copyright -->
	<div id="copyright">

		<!-- start: Container -->
		<div class="container">

			<p>
				&copy; 2013, creativeLabs. <a href="http://bootstrapmaster.com"
					alt="Bootstrap Themes">Bootstrap Themes</a> Designed by
				BootstrapMaster in Poland <img src="img/poland.png" alt="Poland"
					style="margin-top: -4px">
			</p>

		</div>
		<!-- end: Container  -->

	</div>
	<!-- end: Copyright -->

	<!-- start: Java Script -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/flexslider.js"></script>
	<script type="text/javascript" src="js/carousel.js"></script>
	<script def src="js/custom.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/FeedEk.js"></script>
	<script type="text/javascript" src="js/raphael.js"></script>
	<script type="text/javascript" src="js/morris.min.js"></script>
	<script>
			$(function() {
				var financial_data = [];
				<c:forEach var="dailySnapshot" items="${dailyMarketActivity.values}">
						financial_data.push({"period": '<c:out value="${dailySnapshot.key}"/>', "index": <c:out value='${dailySnapshot.value}'/>});
				</c:forEach>
		</script>

	<!-- end: Java Script -->

</body>

</html>