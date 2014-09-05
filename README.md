automator v0.4
==============

ANT script toolbox to automate the build of application systems

<h2>Getting started</h2>

1. Download latest release and unzip latest version
2. Setup environment configuration
3. Choose modules for your system
4. Run ANT tasks

<h3>Setup environment for your system</h3>

Create your system specific configuration file in the folder config and name it env.{name of your host}.properties or env.{username}.properties. Copy all properties from the default properties in env.properties file you want to customize.

<h3>Choosing modules for your system</h3>

Setup the variable <pre>system.modules</pre> in your env.{...}.properties file. Configure the modules separated by comma.

For example for a system with a Apache, TomCat and SSL you have to setup like this:

<pre>
system.modules=system_configuration_files,self_signed_cert,apache_tomcat_vhost,tomcat_7
</pre>


<h3>Run ANT tasks</h3>

clean - Removes the build folder for all modules
build - Runs the build tasks for all modules
deploy - Deploys the build for all modules
show-modules-properties - Displays the configuration for each module


<h2>Available modules</h2>

<h3>apache_tomcat_vhost</h3>

Build Apache webserver configuration for your system

<h3>sample</h3>

Empty template for your own modules

<h3>self_signed_cert</h3>

Generate a self signed certificate

<h3>system_configuration_files</h3>

Generate your system specific configuration files

<h3>tomcat_7</h3>

Download, unzip and customize your TomCat installation in a destination folder

<h3>tomcat_7_liferay_6_2_bundle</h3>

Download, unzip and customize your TomCat / Liferay bundle

<h3>tomcat_natives_win</h3>

Download and install tomcat_natives for windows

<h2>Extending automator</h2>

<h3>Macros</h3>

All macros placed in the macro folder will be loaded automatically.

<h3>Build steps</h3>

You can extend the build steps by adding a new one in the includes/build-modules.xml and adding the same build step in all available modules.

<h2>Upgrading from old versions</h2>

1. Backup your customizations or better: get involved and make a pull request
2. Replace the folders following folder with the latest ones: includes, lib, macros
3. Replace the build.xml with the latest version
4. Migrate the build steps of your modules if necessary
