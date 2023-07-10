
SHELL=bash
python=python
pip=pip
version:=$(shell $(python) version.py)

###############################################################################
# Jupyter
###############################################################################
FUNDAMENTALS = $(wildcard ./demos/fundamentals/*.ipynb)
LANDSCAPE = $(wildcard ./demos/landscape/*.ipynb)
OPTIMIZATION = $(wildcard ./demos/optimization/*.ipynb)
ANALYSIS = $(wildcard ./demos/analysis/*.ipynb)
MORE = $(wildcard ./demos/more/*.ipynb)

jupyter_fundamentals: 
	@for f in $(FUNDAMENTALS); \
		do jupyter nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_landscape: 
	@for f in $(LANDSCAPE); \
		do jupyter nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_all:
	- make jupyter_fundamentals
	- make jupyter_landscape

###############################################################################
# Docker
###############################################################################
docker_release:
	- docker build -t chipdelmal/mgsurve_webinar2023:$(version) .
	- docker push chipdelmal/mgsurve_webinar2023:$(version)
	- docker build -t chipdelmal/mgsurve_webinar2023:latest .
	- docker push chipdelmal/mgsurve_webinar2023:latest

docker_bash:
	- docker run -it mgsurve_webinar2023:dev bash

docker_run:
	- docker run -p 8888:8888 mgsurve_webinar2023:dev

docker_build:
	- docker rmi mgsurve_webinar2023:dev -f
	- docker build -t mgsurve_webinar2023:dev .

docker_prune:
	- docker system prune