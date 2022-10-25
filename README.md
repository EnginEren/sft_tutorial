# sft_tutorial

```bash
docker run -d --name test --privileged=true ilcsoft/tutorial:v0 /usr/sbin/init
docker exec -it test /bin/bash
sudo cvmfs_config setup
sudo service autofs restart
```

see which repos have been available
```bash
cvmfs_config probe
```

Now source key4hep

```bash
source /cvmfs/sw.hsf.org/key4hep/setup.sh
```