# sonarqube
sonarqube installation and configuration using docker-compose



To run SonarScanner:
~~~~~~~~~~~~~~~~~~
./sonar-scanner    -X    -Dsonar.host.url=http://localhost:9000    -Dsonar.username=admin   -Dsonar.password=admin   -Dsonar.projectName=project_1   -Dsonar.projectVersion=1   -Dsonar.projectKey=project_1   -Dsonar.sources=code_directory/YouR_Directory


./sonar-scanner    -X    -Dsonar.host.url=http://15.206.157.217:9000    -Dsonar.username=admin   -Dsonar.password=admin   -Dsonar.projectName=herdsy   -Dsonar.projectVersion=1   -Dsonar.projectKey=herdsy   -Dsonar.sources=code_directory/herdsy/frontend   -Dsonar.language=ts



#If youre getting error:  ""all
