# CODE AUDIT

This docker compose is used to audit code localy using the sonar stack

## Analyzing local code
Sonar scanner is configured to use the path configured in the .env file.

To change the analyzed path change the parameter :
`
sources_directory=/home/dev/Projects/my-project
`

1. The path need to reference a folder
2. The referenced folder need to have a sonar-project.properties

## Launch

1. Start sonar server
`sonar-server/startSonarServer.sh`

3. Start sonar scanner
`sonar-scanner/startSonarScanner.sh`

## Stop

1. Start sonar server
`sonar-server/stopSonarServer.sh`

3. Start sonar scanner
`sonar-scanner/stopSonarScanner.sh`

## Accessing SONAR
http://localhost:9000
dev / dev

