[![CI](https://github.com/Gwynbl31dd/robotframework-docker/actions/workflows/docker-image.yml/badge.svg)](https://github.com/Gwynbl31dd/robotframework-docker/actions/workflows/docker-image.yml)


# Robot framework Test container (RF)

This is a simple dockerized version of robot-framework with minimal dependencies. It is intended to be used as a base image for other projects.

You can get the lastest image from [Docker Hub](https://hub.docker.com/r/gwynbl31dd/robot-framework)

## Usage

The container will take the script in from a folder and push the results to another

## Prerequisite 

* [Docker](https://docs.docker.com/) >= `18.09.7`

## Module included

* [Robot Framework](https://github.com/robotframework/robotframework) 5.0
* [rflint](https://pypi.org/project/robotframework-lint/) 
* [robotframework-requests](https://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html)

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