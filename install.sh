#!/bin/bash

# Python
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate
python -m ipykernel install --user --name=jupyter-test

# R
R -e "install.packages('renv', repo = 'https://cloud.r-project.org')"
R -e "renv::init(bare=TRUE)"
R -e "renv::install()"
R -e "IRkernel::installspec(name = 'IR-jupyter-test', displayname = 'jupyter-test', rprofile = '.Rprofile')"