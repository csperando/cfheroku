<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<title>coldFusion Template</title>
		<meta name="description" content="description here"/>
		<link rel="manifest" href="/manifest.json"/>
	</head>

	<body>
		<!-- js and css -->
		<script src="/javascripts/landing/landing.js" defer async></script>
		<link rel="preload" as="style" href="/stylesheets/landing/landing.css"/>
		<link rel="stylesheet" type="text/css" href="/stylesheets/landing/landing.css"/>

		<!-- main content -->
		<cfoutput>#includeContent()#</cfoutput>

		<!-- service worker -->
		<script>
			window.addEventListener("load", () => {
				if ("serviceWorker" in navigator) {
					navigator.serviceWorker.register("/service-worker.js");
				}
			});
		</script>

	</body>
</html>
