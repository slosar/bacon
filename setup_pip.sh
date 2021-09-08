#!/usr/bin/bash 

source settings.sh
CONDA=$TARGET/bin/conda
PIP=$TARGET/bin/pip

for repo in $REPOS_NODEPS
{
  $PIP install --no-deps git+https://github.com/$repo
}

for repo in $REPOS
{
  $PIP install git+https://github.com/$repo
}


