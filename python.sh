#!/bin/sh

if ! test -d $HOME/venvs; then
    mkdir -p $HOME/venvs
else
    if test -d $HOME/venvs/cloud; then
        mv $HOME/venvs/cloud $HOME/venvs/cloud.bak.$(date '+%Y%m%d.%H%M%S')
    fi
    if test -d $HOME/venvs/pelican; then
        mv $HOME/venvs/pelican $HOME/venvs/pelican.bak.$(date '+%Y%m%d.%H%M%S')
    fi
    if test -d $HOME/venvs/ML; then
        mv $HOME/venvs/ML $HOME/venvs/ML.bak.$(date '+%Y%m%d.%H%M%S')
    fi
fi

brew install graphviz
pip3 install --upgrade pip
pip3 install pygments

python3 -m venv $HOME/venvs/cloud && source $HOME/venvs/cloud/bin/activate
pip3 install --upgrade pip
pip3 install --upgrade setuptools
pip3 install --upgrade wheel
pip3 install awscli
pip3 install aws-parallelcluster
pip3 install ansible
deactivate

python3 -m venv $HOME/venvs/pelican && source $HOME/venvs/pelican/bin/activate
pip3 install --upgrade pip
pip3 install --upgrade setuptools
pip3 install --upgrade wheel
pip3 install pelican==3.6.3
pip3 install markdown rpy2
deactivate

python3 -m venv $HOME/venvs/datasci && source $HOME/venvs/datasci/bin/activate
pip3 install --upgrade pip
pip3 install --upgrade setuptools
pip3 install --upgrade wheel
pip3 install jupyter scikit-learn mxnet keras pandas matplotlib seaborn h5py scikit-image torch torchvision pymc3 theano
deactivate
