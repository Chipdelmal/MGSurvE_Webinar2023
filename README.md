# MGSurvE: Webinar 2023

[![PyPI - Python Version](https://img.shields.io/pypi/pyversions/MGSurvE)](https://pypi.org/project/MGSurvE/)
[![PyPI version](https://badge.fury.io/py/MGSurvE.svg)](https://badge.fury.io/py/MGSurvE)
[<img src="https://img.shields.io/badge/dockerhub-img-blue.svg?logo=docker">](https://hub.docker.com/r/chipdelmal/mgsurve_webinar2023)
[<img src="https://img.shields.io/badge/jupyter-lab-F37626.svg?logo=jupyter">](https://jupyterlab.readthedocs.io/en/latest/#)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)](https://github.com/Chipdelmal/MGSurvE)

## Installation Instructions

The code and materials for this webinar can be downloaded and run by installing the codebase locally, or by using our docker image. If something goes wrong with the installations have a look at our [installation documentation](https://chipdelmal.github.io/MGSurvE/build/html/installation.html), where more information and alternatives are provided.


### A) Docker (strongly recommended)

The easiest way to install [Docker](https://docs.docker.com/engine/install/) and download our [docker image](https://hub.docker.com/r/chipdelmal/mgsurve_webinar2023):

```bash
docker pull chipdelmal/mgsurve_webinar2023
```

Once the image is downloaded, we can run the contents with:

```bash
docker run -p 8888:8888 chipdelmal/mgsurve_webinar2023
```

and head to the following address on your internet browser: [http://127.0.0.1:8888/lab](http://127.0.0.1:8888/lab)

### B) Local Installation

This option is the best for developers and users who are familiar with working with [Python](https://www.python.org/) packages as it works well with [VSCode](https://code.visualstudio.com/) and other IDE and development environments.

#### Anaconda/Miniconda

The use of virtual environments for the installation is highly recommended in order to avoid package clashes as much as possible. Please install [miniconda](https://docs.conda.io/en/latest/miniconda.html) to follow the next instructions.

Installing the base package is fairly straightforward. We first create a `conda` environment named `MGSurvE` running [Python](https://www.python.org/) 3.10:

```bash
conda config --add channels conda-forge
conda create -n MGSurvE python="3.10" -y
```

With this in place, we can now activate our environment and install `MGSurvE` in it (along with [jupyterlab](https://jupyterlab.readthedocs.io/en/latest/index.html) for the contents of this webinar):

```bash
conda activate MGSurvE
pip install MGSurvE
conda install -c conda-forge jupyterlab
```

We can now test our installation by opening a [Python](https://www.python.org/) session and loading the library:

```bash
python
import MGSurvE as srv
```

As [cartopy](https://scitools.org.uk/cartopy/docs/latest/) is not currently installed in our environment, we will get the following warnings:

```bash
warnings.warn("Cartopy not installed. Lat/Long plots might be incorrect!")
warnings.warn("cartopy installation was not detected! Geo-boundaries (plotLandBoundary) not available!")
```

This is not an error and will only affect the plotting behaviour if we tried to work with latitude/longitude coordinate systems instead of catesian ones. If we wanted to install [cartopy](https://scitools.org.uk/cartopy/docs/latest/), we can exit our [Python](https://www.python.org/) session and install it with `conda`:

```bash
exit()
conda install cartopy -y
```

Installing [cartopy](https://scitools.org.uk/cartopy/docs/latest/installing.html) is not strictly required for MGSurvE, so this step can be skipped if maps are going to be generated through another GIS library.

Finally, to launch [jupyterlab](https://jupyterlab.readthedocs.io/en/latest/index.html) to follow the materials of the webinar, run:

```bash
jupyter notebook
```

which should launch a [jupyterlab](https://jupyterlab.readthedocs.io/en/latest/index.html) session in our default internet browser, where we can run the webinar's code!

#### Directly in System (not recommended)

Installing the package directly in the system with no virtual environment is discouraged as it can create dependencies clashes but, if needed, it can be done through the following command:

```bash
pip install MGSurvE
```

Additional dependencies would need to be installed independently, so please follow the instructions in their websites for more information: [cartopy](https://scitools.org.uk/cartopy/docs/latest/installing.html), [libpysal](https://pysal.org/libpysal/installation.html).


