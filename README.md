nimbal
======

Home Application


### Current Version

0.0.0



Development Underway
====================


* A quick hac to verify plex has all the bits necessary for a browser bound proxy of metrics from running objectives.

* Then back to work on [eo](https://github.com/nomilous/eo) and [ipso](https://github.com/nomilous/ipso) to complete the objective/realization duality that brings nez to full functionality. 




Development Setup
=================

### Getting HEAD

Uses [git-seed](https://github.com/nomilous/git-seed) to replicate the development HEAD

```bash

#
# (once) to install git-seed globally as a git plugin
#

sudo npm install git-seed -g

#
# get this repo
#

git clone git@github.com:nomilous/nimbal.git
cd nimbal

#
# use the seed to clone all submodules and install their npm packages
#

git seed clone


#
# start nimbal server
#

./bin/nimbal


#
# pending seeding in nez/develop to attach an objective to nimbal
# 

./objective



```

### Implementation runtime

Uses [nez](https://github.com/nomilous/nez) [./objective](https://github.com/nomilous/nimbal/blob/master/objective) to compile and run specs while implementing.

