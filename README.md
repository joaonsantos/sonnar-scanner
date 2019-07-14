## Overview

This repository hosts the docker image build files for a dockerized sonar scanner cli application.

## Documentation

Documentation can be found on the official sonar scanner documentation page, at https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/.

## Quick Usage

After setting up Sonar Qube instance, create a new project:
![Setup Project](https://raw.githubusercontent.com/joaonsantos/sonnar-scanner/master/imgs/setup_project.png)
![Generate Token](https://raw.githubusercontent.com/joaonsantos/sonnar-scanner/master/imgs/generate_token.png)

Following the setup instructions an example command is shown. Otherwise you can use this more complete command:

```
docker run --rm --name sonar-scanner joaonsantos/sonar-scanner:latest \
      sonar-scanner -Dsonar.projectName=<project_name> \
      -Dsonar.projectKey=<project_key> \
      -Dsonar.host.url=<sonar_qube_host_url> \
      -Dsonar.login=<sonar_qube_login> \
      -Dsonar.projectVersion=<project_version> \
      -Dsonar.sources=<path_to_src_folder>
```

You can also add a ```sonar-project.properties``` file to the project root. Example shown in docs:
```
# must be unique in a given SonarQube instance
sonar.projectKey=<project_key>

# --- optional properties ---

# defaults to project key
#sonar.projectName=<project_name>
# defaults to 'not provided'
#sonar.projectVersion=<project_version>
 
# Path is relative to the sonar-project.properties file. Defaults to .
#sonar.sources=<path_to_src_folder>
 
# Encoding of the source code. Default is default system encoding
#sonar.sourceEncoding=UTF-8
```

There are more properties detailed in the documentation, please do take a look.

In this case you can simply run
```
docker run --name sonar-scanner joaonsantos/sonar-scanner:latest
```
at the project root.
