
SHELL=/bin/bash
python='python'
pip=pip
version:=$(shell $(python) version.py)
JUPYTER=$(shell dirname $(shell which python))/jupyter

check:
	- echo $(shell dirname $(shell which python))/jupyter
	- echo $(shell which jupyter)
###############################################################################
# Docker
# 	- make docker_build
###############################################################################
docker_release:
	- make jupyter_all
	- docker buildx build . \
		--platform=linux/amd64,linux/arm64 \
		-t chipdelmal/mgsurve_webinar2023:$(version) \
		-t chipdelmal/mgsurve_webinar2023:latest \
		--push

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
PAPER = $(wildcard ./demos/paper/*.ipynb)

jupyter_tests:
	@for f in $(TESTS); \
		do PYDEVD_DISABLE_FILE_VALIDATION=1 $(JUPYTER) nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_fundamentals: 
	@for f in $(FUNDAMENTALS); \
		do PYDEVD_DISABLE_FILE_VALIDATION=1 $(JUPYTER) nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_landscape: 
	@for f in $(LANDSCAPE); \
		do PYDEVD_DISABLE_FILE_VALIDATION=1 $(JUPYTER) nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_optimization: 
	@for f in $(OPTIMIZATION); \
		do PYDEVD_DISABLE_FILE_VALIDATION=1 $(JUPYTER) nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_analysis: 
	@for f in $(ANALYSIS); \
		do PYDEVD_DISABLE_FILE_VALIDATION=1 $(JUPYTER) nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_more: 
	@for f in $(MORE); \
		do PYDEVD_DISABLE_FILE_VALIDATION=1 $(JUPYTER) nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_paper: 
	@for f in $(PAPER); \
		do PYDEVD_DISABLE_FILE_VALIDATION=1 $(JUPYTER) nbconvert --execute --to notebook --inplace $${f}; \
	done

jupyter_all:
	- make jupyter_tests
	- make jupyter_fundamentals
	- make jupyter_landscape
	- make jupyter_optimization
	- make jupyter_analysis
	- make jupyter_more
	- make jupyter_paper

###############################################################################
# Conda
###############################################################################
conda_export:
	- pip freeze > ./conda/requirements.txt
	- conda env export | cut -f 1 -d '=' | grep -v "prefix" > ./conda/requirements.yml

###############################################################################
# Conda
###############################################################################
upgrade:
	- python -m pip install MGSurvE --upgrade