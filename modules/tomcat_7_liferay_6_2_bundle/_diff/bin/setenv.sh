#!/bin/sh
# 
# Place the global TomCat configuration in here
# 


#   JAVA_HOME       Must point at your Java Development Kit installation.
#                   Required to run the with the "debug" argument.

JAVA_HOME="@system.java.home@"


#   JRE_HOME        Must point at your Java Runtime installation.
#                   Defaults to JAVA_HOME if empty. If JRE_HOME and JAVA_HOME
#                   are both set, JRE_HOME is used.

JRE_HOME="@system.jre.home@"


#   JAVA_OPTS       (Optional) Java runtime options used when any command
#                   is executed.
#                   Include here and not in CATALINA_OPTS all options, that
#                   should be used by Tomcat and also by the stop process,
#                   the version command etc.
#                   Most options should go into CATALINA_OPTS.

JAVA_OPTS="$JAVA_OPTS -Dfile.encoding=@system.file.encoding@"


#   CATALINA_OPTS   (Optional) Java runtime options used when the "start",
#                   "run" or "debug" command is executed.
#                   Include here and not in JAVA_OPTS all options, that should
#                   only be used by Tomcat itself, not by the stop process,
#                   the version command etc.
#                   Examples are heap size, GC logging, JMX ports etc.


CATALINA_OPTS="$CATALINA_OPTS -Xms@tomcat.java.mem.minsize@ -Xmx@tomcat.java.mem.maxsize@ -XX:MaxPermSize=@tomcat.java.mem.permsize@ @tomcat.catalina.additional_props@"
