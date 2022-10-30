# sft_tutorial

## Linux

```bash
docker run -d --name test --privileged=true ilcsoft/tutorial:aidacs8 /usr/sbin/init
docker exec -it test /bin/bash
```

you're inside the container now
```bash
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

## MAC OS X

```bash
docker run -d --name test --privileged=true ilcsoft/tutorial:aidacs8 /usr/sbin/init
docker exec -it test /bin/bash
```

you're inside the container now
```bash
sudo cvmfs_config setup
```
Due to the lack of autofs on macOS, we need to mount the individual repositories manually like

```bash
sudo mkdir -p /cvfms/sw.hsf.org
sudo mount -t cvmfs sw.hsf.org /cvmfs/sw.hsf.org
```
