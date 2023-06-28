# MGSurvE_Webinar2023

## Installation Instructions

The code and materials for this webinar can be downloaded and run by installing the codebase locally, or by using our docker image. If something goes wrong with the installations have a look at our [installation documentation](https://chipdelmal.github.io/MGSurvE/build/html/installation.html), where more information and alternatives are provided.


### Local Installation

This option is the best for developers and users who are familiar with working with [Python](https://www.python.org/) packages as it works well with [VSCode](https://code.visualstudio.com/) and other IDE and development environments.

#### Anaconda/Miniconda

The use of virtual environments for the installation is highly recommended in order to avoid package clashes as much as possible. Please install [miniconda](https://docs.conda.io/en/latest/miniconda.html) to follow the next instructions.

Installing the base package is fairly straightforward. We first create a `conda` environment named `MGSurvE` running [Python](https://www.python.org/) 3.10:

```bash
conda create -n MGSurvE python="3.10" -y
```

With this in place, we can now activate our environment and install `MGSurvE` in it:

```bash
conda activate MGSurvE
pip install MGSurvE
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

#### Directly in System (not recommended)

Installing the package directly in the system with no virtual environment is discouraged as it can create dependencies clashes but, if needed, it can be done through the following command:

```bash
pip install MGSurvE
```

Additional dependencies would need to be installed independently, so please follow the instructions in their websites for more information: [cartopy](https://scitools.org.uk/cartopy/docs/latest/installing.html), [libpysal](https://pysal.org/libpysal/installation.html)


### Docker

```bash
docker pull chipdelmal/mgsurve_webinar2023
```
