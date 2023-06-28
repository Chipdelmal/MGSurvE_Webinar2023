
SHELL=bash
python=python
pip=pip
version:=$(shell $(python) version.py)

###############################################################################
# Docker
###############################################################################
docker_release:
	- docker build -t chipdelmal/mgsurve_webinar2023:$(version) .
	- docker push chipdelmal/mgsurve_webinar2023:$(version)
	- docker build -t chipdelmal/mgsurve_webinar2023:latest .
	- docker push chipdelmal/mgsurve_webinar2023:latest

docker_run:
	- docker run -it mgsurve_webinar2023:dev bash

docker_jupyter:
	- docker run -p 8888:8888 mgsurve_webinar2023:dev

docker_build:
	- docker rmi mgsurve_webinar2023:dev -f
	- docker build -t mgsurve_webinar2023:dev .

docker_prune:
	- docker system prune