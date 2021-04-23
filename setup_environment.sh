#!/usr/bin/bash 

source settings.sh
CONDA=$TARGET/bin/conda
PIP=$TARGET/bin/pip


## install conda packages
$CONDA install -c conda-forge -y $CONDA_PACKAGES
if [ $? -ne 0 ] ; then
   echo "Failed to install " $CONDA_PACKAGES
   exit
fi

for repo in $REPOS
{
  $PIP install --no-deps git+https://github.com/$repo
}


