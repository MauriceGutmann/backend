<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<html>
<head>
	<title>Vanilla Commerce Info</title>
	<link rel="stylesheet" href="<c:url value="/static/css/table.css"/>" type="text/css" media="screen, projection" />
	<link rel="stylesheet" href="<c:url value="/static/css/customStatistics.css"/>" type="text/css" media="screen, projection" />

	<script type="text/javascript" src="<c:url value="/static/js/jquery.dataTables.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/static/js/history.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/static/js/customStatistics.js"/>"></script>
</head>
<body>
	<div class="prepend-top span-17 colborder" id="content">
		<button id="toggleSidebarButton">&gt;</button>
		<div class="marginLeft" id="inner">
			<h2>Demo System Info</h2>
			<p>Commerce Version: ${info.commerceVersion}</p>
			<p>Spartacus Version: ${info.spartacusVersion}</p>
			<p>Spartacus Sample Data Version: ${info.spartacusSampleDataVersion}</p>
		</div>

		<div class="marginLeft" id="inner">
			<h3>URLs</h3>
			<p>Spartacus Powertools: ${info.spartacusPowertoolsUrl}</p>
		</div>

		<div class="marginLeft" id="inner">
			<h3>Defaults</h3>
			<p>B2B Customer Password: ${info.defaultPasswordB2BCustomer}</p>
			<p>example: william.hunter@rustic-hw.com | ${info.defaultPasswordB2BCustomer}</p>
		</div>
	</div>
	<div id="dialogContainer"></div>
</body>
</html>

