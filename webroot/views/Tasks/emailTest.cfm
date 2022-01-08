

<cfoutput>

<p>Email Test</p>
<p>View logs here: <b>#expandPath('{lucee-config}/logs/mail.log')#</b></p>

<cftry>
    <cfmail to="csperando@gmail.com" from="#FROM#" subject="Heroku Mailgun Test" server="smtp.mailgun.org" type="html">
        <p>Test</p>
    </cfmail>

    <cfcatch typ="any">
        <cfdump var="#cfcatch#"/>
    </cfcatch>
</cftry>

</cfoutput>
