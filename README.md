# MGSurvE_Webinar2023

[![PyPI - Python Version](https://img.shields.io/pypi/pyversions/MGSurvE)](https://pypi.org/project/MGSurvE/)
[![PyPI version](https://badge.fury.io/py/MGSurvE.svg)](https://badge.fury.io/py/MGSurvE)
[<img src="https://img.shields.io/badge/dockerhub-img-blue.svg?logo=docker">](https://hub.docker.com/r/chipdelmal/mgsurve_webinar2023)
[<img src="https://img.shields.io/badge/jupyter-lab-F37626.svg?logo=jupyter">](https://jupyterlab.readthedocs.io/en/latest/#)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)](https://github.com/Chipdelmal/MGSurvE)
[<img src="https://img.shields.io/badge/ReadThe-docs-E40046.svg?logo=readthedocs">](https://chipdelmal.github.io/MGSurvE/)

## Installation Instructions

The code and materials for this webinar can be downloaded and run by installing the [codebase locally](./InstallationLocal.md), or by using our [docker image](./Installation_Docker.md). The easiest way to get all the materials for the webinar is to install [Docker](https://docs.docker.com/engine/install/) and download our [docker container](https://hub.docker.com/r/chipdelmal/mgsurve_webinar2023) with the following command in our terminal:

```bash
docker pull chipdelmal/mgsurve_webinar2023
```

Once the image is downloaded, we can run the contents with:

```bash
docker run -p 8888:8888 chipdelmal/mgsurve_webinar2023
```

and head to the following address on our internet browser: [http://127.0.0.1:8888/lab](http://127.0.0.1:8888/lab); where a [JupyterLab](https://jupyterlab.readthedocs.io/en/latest/) session should be running with all the required contents and packages for the course. Additionally, instructions for [local installation](./InstallationLocal.md), but if something goes wrong with the installations have a look at our [package documentation](https://chipdelmal.github.io/MGSurvE/build/html/installation.html), where more information and alternatives are provided.
