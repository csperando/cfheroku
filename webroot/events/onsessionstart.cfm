<cfscript>

    Session.user = {};
    Session.user.requests = 0;
    Session.user.id = createUUID();
    Session.user.IP = '#CGI.remote_addr#';

    Session.auth = {};

    writeLog(type="information", file="dataLog",
        text="{'message': 'New Session', 'ip': '#Session.user.IP#', 'path': '#CGI.path_info#', 'date': '#dateFormat(Now(), "yyyy-mm-dd")#', 'time': '#timeFormat(Now(), "HH:mm:ss.lll")#'}"
    );

</cfscript>
