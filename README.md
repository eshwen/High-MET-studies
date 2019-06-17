# High-MET-studies

Macro for producing (many) plots in high-MET ZeroBias samples.

Clone this repository with

```bash
git clone git@github.com:<user>/High-MET-studies.git
```

Source a CMSSW release (wherever you like) and compile with

```bash
source /cvmfs/cms.cern.ch/cmsset_default.sh
cmsrel CMSSW_9_2_8  # works on both SLC6 and CentOS7 machines
cd CMSSW_9_2_8/src
cmsenv
scram b
```

In each new session, you must initialise the CMSSW environment with

```bash
source /cvmfs/cms.cern.ch/cmsset_default.sh
cd CMSSW_9_2_8/src
cmsenv
```

You can run the code with

```bash
root -lbq doMetStudy.cxx
```

This has only been tested with CMSSW\_9\_2\_8, so I recommend using that for the moment. As detailed in the script, several header files from the L1 Trigger are used to decode and navigate the ntuples. Although, I can't remember if these can be automatically included when running the code, or whether the packages have to be checked out beforehand.

There's a test option if you want to test additional features/plots. There's a variable `bool isTest` in `doMetStudy`. By default, it's set to `False`, so runs over 1M+ events. If set to `True`, it runs over only 1000.