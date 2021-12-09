
<!--- redirect to https --->

<cfif left(cgi.request_url, 5) neq 'https'>

	<cfheader statuscode="301" statustext="Moved permanently">

	<cfset newUrl = cgi.request_url/>
	<cfset index = newUrl.find("://")/>
	<cfset newUrl = "https" & mid(newUrl, index, len(newUrl)-index+1)/>

	<cfheader name="location" value="#newUrl#"/>

	<cfabort>

</cfif>





<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="utf-utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<title>coldFusion Template</title>
		<meta name="description" content="description here"/>

		<!--- pwa --->
		<link rel="manifest" href="/manifest.json"/>
		<link rel="apple-touch-icon" href="/images/apple-touch-icon.png">
		<meta name="theme-color" content="#ffffff"/>
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
