# tomcat-manager-mongo
An (almost) configuration-less setup for fast Tomcat / Mongo DB development.

## Why?
* I try to avoid installing Tomcat on my development machine
* I try to avoid installing Mongo DB on my development machine (the Mongo DB shell client is OK though)
* I use an IDE that does not have native Tomcat support
* I find the Maven Tomcat plugin works really well when developing / testing

## What?
This is a simple BASH script that creates a couple of Docker containers, that will provide a Tomcat 8 instance, including the Manager (username / password : admin / admin), with a linked Mongo DB server.

## How?
1. Ensure the following sections exists the Maven ```settings.xml``` on the host machine:
```
<servers>
    <server>
        <id>TomcatServer</id>
		    <username>admin</username>
		    <password>admin</password>
    </server>
</servers>
````
2. ```chmod +x deploy.sh```
3. ```./deploy.sh```
4. Once the Docker deployment has completed, Tomcat will log to the terminal.
5. You can now connect to the Mongo DB instance using the Mongo DB Shell client if you have it installed on your host machine, ```mongo```.
6. You can now connect to the Tomcat 8 Manager on ```http://localhost:8080/manager/html``` (using: admin / admin)
7. Press ^C when done, to kill Tomcat and clean up the containers.

## Example with Tomcat plugin for Maven
1. Clone the ```edwinek/heavyweight``` project, as this has a ```pom.xml``` that's configured to work with this project.
2. The project than be deployed to the Tomcat server using ```mvn -U tomcat7:undeploy clean tomcat7:deploy```
