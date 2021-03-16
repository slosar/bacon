# BNL Astro CONda (BACON)

Bacon is a set of scripts for local installation of conda environment at BNL.

It is composed of two essential scripts:

 * `install_anaconda.sh` will install a vanilla anaconda environment
 * `setup_environment.sh` will additionally install set of of conda and githib packages. Can be safely rerun multiple times.

Things are setup in `settings.sh`.

# Settings

`TARGET` is the target directory where installation should be performed
`TMP` is the tmp directory where anaconda installer is downloaded to
`ANACONDA` is url to the desired based anaconda
`REPOS` is the space delimeted list of github repos. Each repot should have an appropriate `setup.py` in its root.
