[![CI](https://github.com/Gwynbl31dd/robotframework-docker/actions/workflows/docker-image.yml/badge.svg)](https://github.com/Gwynbl31dd/robotframework-docker/actions/workflows/docker-image.yml)


# Robot framework Test container (RF)

This image is based on [ppodgorsek/robot-framework](https://github.com/ppodgorsek/docker-robot-framework/)

You can get the lastest image from [Docker Hub](https://hub.docker.com/r/gwynbl31dd/robot-framework)

## Usage

The container will take the script in from a folder and push the results to another

## Prerequisite 

* [Docker](https://docs.docker.com/) >= `18.09.7`

## Module included

* [Robot Framework](https://github.com/robotframework/robotframework) 4.1
* [Robot Framework Browser Library](https://github.com/MarketSquare/robotframework-browser) 6.0.0
* [Robot Framework DatabaseLibrary](https://github.com/franz-see/Robotframework-Database-Library) 1.2.4
* [Robot Framework Datadriver](https://github.com/Snooz82/robotframework-datadriver) 1.4.1
* [Robot Framework DateTimeTZ](https://github.com/testautomation/DateTimeTZ) 1.0.6
* [Robot Framework Faker](https://github.com/guykisel/robotframework-faker) 5.0.0
* [Robot Framework FTPLibrary](https://github.com/kowalpy/Robot-Framework-FTP-Library) 1.9
* [Robot Framework IMAPLibrary 2](https://pypi.org/project/robotframework-imaplibrary2/) 0.4.0
* [Robot Framework Pabot](https://github.com/mkorpela/pabot) 2.0.1
* [Robot Framework Requests](https://github.com/bulkan/robotframework-requests) 0.9.1
* [Robot Framework SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary) 5.1.3
* [Robot Framework SSHLibrary](https://github.com/robotframework/SSHLibrary) 3.7.0
* [Axe Selenium Library](https://github.com/mozilla-services/axe-selenium-python) 2.1.6
* Firefox ESR 78
* Chromium 86.0
* [Amazon AWS CLI](https://pypi.org/project/awscli/) 1.20.6
* [rflint](https://pypi.org/project/robotframework-lint/) 1.1

## Building the image

```
docker build -t gwynbl31dd/robot-framework:latest .
```

## Running the container

You can use it with the default options:

```
docker run -v $(pwd)/tests:/tests -v $(pwd)/results:/results gwynbl31dd/robot-framework:latest
```

If you have other needs, simply overide the default CMD:

```
docker run -v $(pwd)/tests:/tests -v $(pwd)/results:/results gwynbl31dd/robot-framework:latest robot --xunit result2.xml -d /results /tests
```

## Environment variables

* ROBOT_TESTS_DIR: test directory. Default ``/tests``
* ROBOT_REPORTS_DIR=: report directory. Default ``/results``

## License & Maintainers

Anthony Paulin <paulin.anthony@gmail.com>