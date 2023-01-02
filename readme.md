# CMD Toolbox
Ubuntu or Alpine image with a set of command line tools preinstalled 

- gettext 
- git 
- curl 
- emacs-nox 
- vim 
- wget 
- tig 
- mc 
- tmux 
- ranger 
- htop 
- siege 
- tshark 
- ncdu 
- iftop 
- cbm 
- speedometer 
- tree 
- python-pip 
- powerline 
- nano
- vegeta
- kubectl
- telnet
- nc
- zookeepercli
- ldap-util

## local build


```bash
docker build . --file Dockerfile-ubuntu -t cmd-toolbox:local-ubuntu
```

## Run

### Docker

Ubuntu :
```bash
$ docker run -it --rm onelans/cmd-toolbox:1.0.0-ubuntu bash
```
This will drop you into an bash shell to allow you to do what you want inside a Ubuntu system.

Alpine 
```bash
$ docker run -it --rm onelans/cmd-toolbox:1.0.0-alpine bash
```

This will drop you into an bash shell to allow you to do what you want inside a Ubuntu system.

If your want activate powerline add `-e "POWERLINE=TRUE"`
```bash
$ docker run -it -e "POWERLINE=TRUE" --rm onelans/cmd-toolbox:1.0.0-ubuntu bash
```


### Kubernetes

```bash
kubectl apply -f ./cmd-toolbox-pod.yml
kubectl exec -ti cmd-toolbox bash
```
or 
```bash
kubectl run -it --tty cmdbox --image=onelans/cmd-toolbox:latest --restart=Never -- bash
``` 
