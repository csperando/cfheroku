
<link rel="preload" as="style" href="/stylesheets/landing/home.css"/>
<link rel="stylesheet" type="text/css" href="/stylesheets/landing/home.css"/>

<cftry>
	<cfset filePath = expandPath('{lucee-server}')/>
	<cffile action="write" file="#filePath#/password.txt" output="password"/>

	<cfcatch type="any">
		<cfdump var="#expandPath('{lucee-server}')#"/>
		<cfdump var="#cfcatch#"/>
	</cfcatch>
</cftry>
<!-- test -->

<cfoutput>
<main>

	<h1 class="title center">Great Success!</h1>
	<h2 class="title center">#dateFormat(Now(), 'long')#</h2>

	<section>
		<p class="center">Your lucee app has been deployed!</p>
	</section>

</main>
</cfoutput>
