set "CATALINA_OPTS=%CATALINA_OPTS% -Djava.net.preferIPv4Stack=true -Dorg.apache.catalina.loader.WebappClassLoader.ENABLE_CLEAR_REFERENCES=false" 
set "CATALINA_OPTS=%CATALINA_OPTS% -Dfile.encoding=@system.file.encoding@ -Duser.timezone=@system.timezone@ @module.tomcat_7.catalina.memory@"
