![](./media/banner.png)
[![PyPI version](https://badge.fury.io/py/MGSurvE.svg)](https://badge.fury.io/py/MGSurvE)
[<img src="https://img.shields.io/badge/dockerhub-img-blue.svg?logo=docker">](https://hub.docker.com/r/chipdelmal/mgsurve_webinar2023)
[<img src="https://img.shields.io/badge/jupyter-lab-F37626.svg?logo=jupyter">](https://jupyterlab.readthedocs.io/en/latest/#)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)](https://github.com/Chipdelmal/MGSurvE)
[<img src="https://img.shields.io/badge/ReadThe-docs-E40046.svg?logo=readthedocs">](https://chipdelmal.github.io/MGSurvE/)

As of today, our publication is on the submission and review process, but you can have a look at our [preprint](https://www.biorxiv.org/content/10.1101/2023.06.26.546301v1) in the meantime!

## Contents

The contents of the course will follow [MGSurvE's](https://github.com/Chipdelmal/MGSurvE) structure:

0. [Fundamentals](./demos/fundamentals)
   1. [Quickstart](./demos/fundamentals/quickstart.ipynb)
   2. [Workflow Breakdown](./demos/fundamentals/breakdown.ipynb)
1. [Landscape](./demos/landscape/)
   1. [Basic Landscape Elements](./demos/landscape/simpleLandscape.ipynb)
   2. [Heterogeneous Point-Types](./demos/landscape/complexLandscape.ipynb)
   3. [Custom Migration Matrix](./demos/landscape/customLandscape.ipynb)
2. [Optimization](./demos/optimization/)
   1. [Genetic Algorithm Primer](./demos/optimization/ga.ipynb)
   2. Discrete Optimization (GA)
   3. Continuous Optimization (GA)
   4. Continuous Optimization (PSO)
3. [Analysis](./demos/analysis/)
4. [Further Information](./demos/more/)
   1. [Mathematical Formulation](./demos/more/math.ipynb)
   2. [Particle-Swarm Optimization (PSO)](./demos/more/pso.ipynb)
   3. [Preprint on bioRxiv](https://www.biorxiv.org/content/10.1101/2023.06.26.546301v1)

all of which will be covered in the webinar so that all of its features can be used by attendees.
## Installation Instructions

The code and materials for this webinar can be downloaded and run by installing the [codebase locally](./InstallationLocal.md), or by using our [docker image](./Installation_Docker.md). The easiest way to get all the materials for the webinar is to install [Docker](https://docs.docker.com/engine/install/) and download our [docker container](https://hub.docker.com/r/chipdelmal/mgsurve_webinar2023) with the following command in our terminal:

```bash
docker pull chipdelmal/mgsurve_webinar2023
```

Once the image is downloaded, we can run the contents with:

```bash
docker run -p 8888:8888 chipdelmal/mgsurve_webinar2023
```

and head to the following address on our internet browser: [http://127.0.0.1:8888/lab](http://127.0.0.1:8888/lab); where a [JupyterLab](https://jupyterlab.readthedocs.io/en/latest/) session should be running with all the required contents and packages for the course. To open up the webinar's index, open the [README.md file in the jupyterlab session](http://127.0.0.1:8888/lab/tree/README.md), right click anywhere in the document, and select `Show Markdown Preview`.

Additional instructions for [local installation](./InstallationLocal.md) are provided, as well as a more thorough set of alternatives in our [package documentation](https://chipdelmal.github.io/MGSurvE/build/html/installation.html).

## Authors and Funders

[Héctor M. Sánchez C.](https://chipdelmal.github.io/blog/), [David L. Smith](http://www.healthdata.org/about/david-smith), [John M. Marshall](https://publichealth.berkeley.edu/people/john-marshall/)

<img src="https://github.com/Chipdelmal/MGSurvE/raw/main/img/berkeley.jpg" height="25px"> &nbsp; <img src="https://github.com/Chipdelmal/MGSurvE/raw/main/img/IHME.jpg" height="25px"> &nbsp; <img src="https://github.com/Chipdelmal/MGSurvE/raw/main/img/gates.jpg" height="25px">
