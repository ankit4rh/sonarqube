# sonarqube
SonarQube Installation and Configuration using docker-compose



SonarScanner Syntax:
~~~~~~~~~~~~~~~~~~
./sonar_executable    -X    -Dsonar.host.url=http://IP_Address:9000    -Dsonar.username=admin   -Dsonar.password=admin   -Dsonar.projectName=project_1   -Dsonar.projectVersion=1   -Dsonar.projectKey=project_1   -Dsonar.sources=location_of_source_code



Pull Your Source code from Git
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Make sure you're inside "sonarqube" directory
>Navigate to code_directory
cd  sonar-scanner-4.2.0.1873-linux/bin/code_directory/

here:
git pull https://github.com/microsoft/TypeScriptSamples.git



Now Navigate to sonarqube executable
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cd sonarqube/sonar-scanner-4.2.0.1873-linux/bin/



Running Sonarscanner
~~~~~~~~~~~~~~~~~~~
./sonar-scanner    -X    -Dsonar.host.url=http://0.0.0.0:9000    -Dsonar.username=admin   -Dsonar.password=admin   -Dsonar.projectName=myproject   -Dsonar.projectVersion=1   -Dsonar.projectKey=myproject   -Dsonar.sources=code_directory/TypeScriptSamples   -Dsonar.language=ts




#In case you get the following SCM Error: 
13:39:31.519 INFO: 0 files indexed
13:39:31.523 INFO: 0 files ignored because of scm ignore settings

>>Go to sonarweb panel:
http://localhost:9000

>>Login:
username:admin
password:admin

>>Click on the Administration Section

>>Select SCM, you'll find it under General Settings

>>Then DISABLE the SCM Sensor and save

>>Rerun you scanner



