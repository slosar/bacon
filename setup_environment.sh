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

## install repos
rm -rf build
mkdir build
cd build
for repo in $REPOS
{
  git clone https://github.com/$repo.git
  if [ $? -ne 0 ] ; then
    echo "Failed to clone " $repo
    exit
  fi
  PACKAGE=`ls -1rt | tail -1`
  $PIP install $PACKAGE/
}
cd ..
rm -rf build


