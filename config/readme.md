Environment Settings
====================

In this directory you configure the environments your system running on (e.g. IP addresses, host names, directories).
env.properties contains the default settings for all machines. Create a new file named env.{hostname}.properties or
env.{username}.properties and overwrite the properties for your user or machine. You can use a property file like 
env.{system name}.properties and load their properties with the parameter -Dsystem={system name}

The sequence of loading property files as follows:
1. env.{system name}.properties
2. env.{user.name}.properties
3. env.{hostname}.properties
4. env.properties
