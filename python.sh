#!/bin/sh

if ! test -d $HOME/.local/venvs; then
    mkdir -p $HOME/.local/venvs
else
    if test -d $HOME/.local/venvs/cloud; then
        mv $HOME/.local/venvs/cloud $HOME/.local/venvs/cloud.bak.$(date '+%Y%m%d.%H%M%S')
    fi
    if test -d $HOME/.local/venvs/pelican; then
        mv $HOME/.local/venvs/pelican $HOME/.local/venvs/pelican.bak.$(date '+%Y%m%d.%H%M%S')
    fi
    if test -d $HOME/.local/venvs/ML; then
        mv $HOME/.local/venvs/ML $HOME/.local/venvs/ML.bak.$(date '+%Y%m%d.%H%M%S')
    fi
fi

brew install python3
brew install graphviz --with-bindings

python3.6 -m venv $HOME/.local/venvs/cloud && source $HOME/.local/venvs/cloud/bin/activate
pip install --upgrade pip
pip install --upgrade setuptools
pip install --upgrade wheel
pip install awscli
pip install cfncluster
deactivate

python3.6 -m venv $HOME/.local/venvs/pelican && source $HOME/.local/venvs/pelican/bin/activate
pip install --upgrade pip
pip install --upgrade setuptools
pip install --upgrade wheel
pip install pelican==3.6.3
pip install markdown rpy2
deactivate

python3.6 -m venv $HOME/.local/venvs/ML && source $HOME/.local/venvs/ML/bin/activate
pip install --upgrade pip
pip install --upgrade setuptools
pip install --upgrade wheel
pip install jupyter tensorflow scikit-learn mxnet graphviz keras pandas matplotlib seaborn h5py scikit-image
deactivate
