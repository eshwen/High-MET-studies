#!/usr/bin/env bash

source /cvmfs/cms.cern.ch/cmsset_default.sh
cmsrel CMSSW_9_2_8  # works on both SLC6 and CentOS7 machines
pushd CMSSW_9_2_8/src
cmsenv
scram b
popd
