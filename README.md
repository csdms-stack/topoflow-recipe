# Current Build Status

Linux, OSX: [![Build Status](https://travis-ci.org/csdms-stack/topoflow-recipe.svg?branch=master)](https://travis-ci.org/csdms-stack/topoflow-recipe)

# About topoflow

Home: http://csdms.colorado.edu/wiki/Model:TopoFlow

Package license: MIT

summary: Spatial hydrologic model (D8-based, fully BMI-compliant)

# Installing topoflow

To install topoflow from the csdms channel with `conda`:
```bash
$ conda config --add channels conda-forge
$ conda config --add channels csdms
```

Once these channels have been activated:
```bash
$ conda install topoflow
```

It is possible to list all of the versions of topoflow available on your
platform with:

```
$ conda search topoflow --channel csdms
```
