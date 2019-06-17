#!/usr/bin/env bash

source /cvmfs/cms.cern.ch/cmsset_default.sh
if [[ "$SCRAM_ARCH" == "slc7_"* ]]; then
    export SCRAM_ARCH=slc7_amd64_gcc630
else
    export SCRAM_ARCH=slc6_amd64_gcc630
fi
cmsrel CMSSW_9_2_8  # works on both SLC6 and CentOS7 machines
pushd CMSSW_9_2_8/src >/dev/null 2>&1
cmsenv
scram b
popd >/dev/null 2>&1
