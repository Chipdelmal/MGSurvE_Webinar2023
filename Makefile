
SHELL=bash
python=python
pip=pip
version:=$(shell $(python) version.py)

###############################################################################
# Docker
###############################################################################
docker_release:
	- make docker_build
	- make jupyter_all
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

###############################################################################
# Jupyter
###############################################################################
TESTS = $(wildcard ./tests/*.ipynb)
FUNDAMENTALS = $(wildcard ./demos/fundamentals/*.ipynb)
LANDSCAPE = $(wildcard ./demos/landscape/*.ipynb)
OPTIMIZATION = $(wildcard ./demos/optimization/*.ipynb)
ANALYSIS = $(wildcard ./demos/analysis/*.ipynb)
MORE = $(wildcard ./demos/more/*.ipynb)


jupyter_tests: 
	@for f in $(TESTS); \
		do jupyter nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_fundamentals: 
	@for f in $(FUNDAMENTALS); \
		do jupyter nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_landscape: 
	@for f in $(LANDSCAPE); \
		do jupyter nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_optimization: 
	@for f in $(OPTIMIZATION); \
		do jupyter nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_analysis: 
	@for f in $(ANALYSIS); \
		do jupyter nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_more: 
	@for f in $(MORE); \
		do jupyter nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_all:
	- make jupyter_tests
	- make jupyter_fundamentals
	- make jupyter_landscape
	- make jupyter_optimization
	- make jupyter_analysis
	- make jupyter_more

###############################################################################
# Conda
###############################################################################

conda_export:
	- pip freeze > ./conda/requirements.txt
	- conda env export | cut -f 1 -d '=' | grep -v "prefix" > ./conda/requirements.yml