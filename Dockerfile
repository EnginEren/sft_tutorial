FROM cern/cc7-base:latest

RUN yum install -y sudo  \
    && yum install -y https://ecsft.cern.ch/dist/cvmfs/cvmfs-release/cvmfs-release-latest.noarch.rpm \
    && yum install -y cvmfs \
    && cvmfs_config setup 


ADD ./config/default.local /etc/cvmfs/default.local

RUN mkdir /etc/cvmfs/keys/desy.de
ADD ./config/desy.de.pub /etc/cvmfs/keys/desy.de/desy.de.pub
ADD ./config/desy.de.conf /etc/cvmfs/domain.d/desy.de.conf