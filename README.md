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
docker run -d --name test --privileged -p 8888:8888 -v $(pwd):/home ilcsoft/tutorial:aidacs8 /usr/sbin/init
docker exec -it test /bin/bash
```

you're inside the container now
```bash
sudo cvmfs_config setup
```
Due to the lack of autofs on macOS, we need to mount the individual repositories with a script.

```bash
chmod +x setup_env_mac.sh
source setup_env_mac.sh
```
make sure you have mounted the /cvmfs repositories. Now source key4hep and launch jupyter-lab

```bash
source /cvmfs/ilc.desy.de/key4hep/setup.sh
jupyter lab  --port=8888 --ip=0.0.0.0 --no-browser --allow-root
```

