# arachni-xunit
Provides a docker image of the arachni security tool with an additional reporter for generating xunit reports. These can be parsed into test results for failing builds using JUnit parser in Bamboo and Jenkins.

## Build
`docker build -t arachni-build-pod .`

## RUN
For local running and experimentation run `docker run -i -t --rm --name spider-guy arachni-build-pod /bin/bash` and have a play once inside the container

## Jenkins running & reporting
```
./bin/arachni ${URL_TO_TEST} --report-save-path=arachni-report.afr
./bin/arachni_reporter arachni-report.afr  --reporter=xunit:outfile=report.xml  --reporter=html:outfile=web-report.zip
unzip web-report.zip -d arachni-web-report
```
