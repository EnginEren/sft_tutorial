#!/bin/bash

sudo mkdir -p /cvmfs/cvmfs-config.cern.ch
sudo mount -t cvmfs cvmfs-config.cern.ch /cvmfs/cvmfs-config.cern.ch/

sudo mkdir -p /cvmfs/sw.hsf.org
sudo mount -t cvmfs sw.hsf.org /cvmfs/sw.hsf.org/

sudo mkdir -p /cvmfs/ilc.desy.de
sudo mount -t cvmfs ilc.desy.de /cvmfs/ilc.desy.de

sudo mkdir -p /cvmfs/sft.cern.ch
sudo mount -t cvmfs sft.cern.ch /cvmfs/sft.cern.ch

sudo cvmfs_config probe




