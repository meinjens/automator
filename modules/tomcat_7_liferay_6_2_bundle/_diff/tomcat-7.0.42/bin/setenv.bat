rem 
rem Place the global TomCat configuration in here
rem 


rem   JAVA_HOME       Must point at your Java Development Kit installation.
rem                   Required to run the with the "debug" argument.

SET JAVA_JOME="@system.java.home@"


rem   JRE_HOME        Must point at your Java Runtime installation.
rem                   Defaults to JAVA_HOME if empty. If JRE_HOME and JAVA_HOME
rem                   are both set, JRE_HOME is used.

SET JRE_HOME="@system.jre.home@"


rem   JAVA_OPTS       (Optional) Java runtime options used when any command
rem                   is executed.
rem                   Include here and not in CATALINA_OPTS all options, that
rem                   should be used by Tomcat and also by the stop process,
rem                   the version command etc.
rem                   Most options should go into CATALINA_OPTS.

SET JAVA_OPTS="%JAVA_OPTS% @module.tomcat_7_liferay_6_2_bundle.java.additional_props@" 


rem   CATALINA_OPTS   (Optional) Java runtime options used when the "start",
rem                   "run" or "debug" command is executed.
rem                   Include here and not in JAVA_OPTS all options, that should
rem                   only be used by Tomcat itself, not by the stop process,
rem                   the version command etc.
rem                   Examples are heap size, GC logging, JMX ports etc.

SET CATALINA_OPTS="%CATALINA_OPTS% @system.catalina.opts@ -Dfile.encoding=@system.file.encoding@ -Duser.timezone=@system.timezone@ @module.tomcat_7_liferay_6_2_bundle.catalina.additional_props@"
