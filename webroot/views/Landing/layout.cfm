
<!--- redirect to https --->
<!---
<cfif left(cgi.server_name,3) neq 'www' or cgi.server_port eq '80'>

	<cfheader statuscode="301" statustext="Moved permanently">

	<cfif cgi.query_string eq '' and params.controller neq 'landing'>
		<cfif left(cgi.server_name,3) neq 'www'>
			<cfheader name="Location" value="https://www.#cgi.server_name#/#params.controller#/#params.action#">
		<cfelse>
			<cfheader name="Location" value="https://#cgi.server_name#/#params.controller#/#params.action#">
		</cfif>

	<cfelseif cgi.query_string neq '' and params.controller neq 'landing'>
		<cfif left(cgi.server_name,3) neq 'www'>
			<cfheader name="Location" value="https://www.#cgi.server_name#/#params.controller#/#params.action#?#cgi.query_string#">
		<cfelse>
			<cfheader name="Location" value="https://#cgi.server_name#/#params.controller#/#params.action#?#cgi.query_string#">
		</cfif>

	<cfelse>
		<cfif left(cgi.server_name,3) neq 'www'>
			<cfheader name="Location" value="https://www.#cgi.server_name#">
		<cfelse>
			<cfheader name="Location" value="https://#cgi.server_name#">
		</cfif>
	</cfif>

	<cfabort>

</cfif>
--->



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
