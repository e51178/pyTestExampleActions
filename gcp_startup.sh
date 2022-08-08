#!/bin/bash


REPO_URL = <repository url here>
ACTION=${1:-create}


if [[ $ACTION == "clone" ]]; then
    # (OPTION 1) Clone a project containing requirements.txt
    git clone $REPO_URL
elif [[ $ACTION == "create" ]]; then
    # (OPTION 2) Create a base requirements.txt
    cat > requirements.txt << EOF
    nb_black
    nodeenv
    jupyter_contrib_nbextensions
    jupyter_nbextensions_configurator
    numpy
    pandas
    scikit-learn
    matplotlib
    seaborn
    imbalanced-learn
    yellowbrick
    azure-storage-blob
    xgboost
    xlrd
    category_encoders
    EOF
fi

# Install Python packages
pip install -U -r requirements.txt
